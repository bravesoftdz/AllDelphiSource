{***************************************************************
 *
 * Project  : HTTPServer
 * Unit Name: Basic demo showing how to construct a HTTP server and handle basic input
 * Purpose  :
 * Version  : 1.0
 * Date  : Wed 25 Apr 2001  -  01:21:56
 * Author  : <unknown>
 * History  :
 * Tested  : Wed 25 Apr 2001  // Allen O'Neill <allen_oneill@hotmail.com>
 *
 ****************************************************************}

unit Main;

interface

uses
{$IFDEF Linux}
   QGraphics,  QControls,  QForms,  QDialogs,  QActnList,  QStdCtrls,  QButtons,
     QComCtrls,  QExtCtrls,
{$ELSE}
   Graphics,  Controls,  Forms,  Dialogs,  ActnList,  StdCtrls,  Buttons,  ComCtrls,
     ExtCtrls,
{$ENDIF}
  windows, messages,  SysUtils,  Classes, IdComponent, IdTCPServer, IdHTTPServer,
    IdGlobal, IdBaseComponent, IdThreadMgr, IdThreadMgrDefault,  SyncObjs,
    IdThreadMgrPool, IdIntercept, IdSSLIntercept, IdSSLOpenSSL;

type
  TfmHTTPServerMain = class(TForm)
    HTTPServer: TIdHTTPServer;
    alGeneral: TActionList;
    acActivate: TAction;
    edPort: TEdit;
    cbActive: TCheckBox;
    StatusBar1: TStatusBar;
    edRoot: TEdit;
    LabelRoot: TLabel;
    cbAuthentication: TCheckBox;
    cbManageSessions: TCheckBox;
    cbEnableLog: TCheckBox;
    Label1: TLabel;
    Panel1: TPanel;
    lbLog: TListBox;
    lbSessionList: TListBox;
    Splitter1: TSplitter;
    IdServerInterceptOpenSSL: TIdServerInterceptOpenSSL;
    cbSSL: TCheckBox;
    procedure acActivateExecute(Sender: TObject);
    procedure edPortChange(Sender: TObject);
    procedure edPortKeyPress(Sender: TObject; var Key: Char);
    procedure edPortExit(Sender: TObject);
    procedure HTTPServerCommandGet(AThread: TIdPeerThread;
      RequestInfo: TIdHTTPRequestInfo; ResponseInfo: TIdHTTPResponseInfo);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure HTTPServerSessionEnd(Sender: TIdHTTPSession);
    procedure HTTPServerSessionStart(Sender: TIdHTTPSession);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure lbSessionListDblClick(Sender: TObject);
    procedure cbSSLClick(Sender: TObject);
    procedure HTTPServerConnect(AThread: TIdPeerThread);
    procedure HTTPServerDisconnect(AThread: TIdPeerThread);
    procedure HTTPServerExecute(AThread: TIdPeerThread);
    procedure HTTPServerCommandOther(Thread: TIdPeerThread;
      const asCommand, asData, asVersion: string);
    procedure HTTPServerStatus(ASender: TObject; const AStatus: TIdStatus;
      const AStatusText: string);
  private
    UILock: TCriticalSection;
    procedure ServeVirtualFolder(AThread: TIdPeerThread;
      RequestInfo: TIdHTTPRequestInfo; ResponseInfo: TIdHTTPResponseInfo);
    procedure DisplayMessage(const Msg: string);
    procedure DisplaySessionChange(const session: string);
    procedure ManageUserSession(AThread: TIdPeerThread;
      RequestInfo: TIdHTTPRequestInfo; ResponseInfo: TIdHTTPResponseInfo);
    function GetMIMEType(sFile: TFileName): string;
    { Private declarations }
  public
    { Public declarations }
    EnableLog: boolean;
    MIMEMap: TIdMIMETable;
    procedure MyInfoCallback(Msg: string);
    procedure GetKeyPassword(var Password: string);
  end;

var
  fmHTTPServerMain: TfmHTTPServerMain;

implementation

uses  FileCtrl, IdStack;

{$IFDEF MSWINDOWS}{$R *.dfm}{$ELSE}{$R *.xfm}{$ENDIF}

procedure TfmHTTPServerMain.acActivateExecute(Sender: TObject);
var
  AppDir: string;
begin
  acActivate.Checked := not acActivate.Checked;
  lbSessionList.Items.Clear;
  if not HTTPServer.Active then
  begin
    HTTPServer.Bindings.Clear;
    HTTPServer.DefaultPort := StrToIntDef(edPort.text, 80);
    HTTPServer.Bindings.Add;
  end;

  if not DirectoryExists(edRoot.text) then
  begin
    DisplayMessage(Format('Web root folder (%s) not found.', [edRoot.text]));
    acActivate.Checked := False;
  end
  else
  begin
    if acActivate.Checked then
    begin
      try
        EnableLog := cbEnableLog.Checked;
        HTTPServer.SessionState := cbManageSessions.Checked;

        // SSL stuff
        if cbSSL.Checked then
        begin
          with IdServerInterceptOpenSSL.SSLOptions do
          begin
            Method := sslvSSLv23;
            AppDir := ExtractFilePath(Application.ExeName);
            RootCertFile := AppDir + 'cert\CAcert.pem';
            CertFile := AppDir + 'cert\WSScert.pem';
            KeyFile := AppDir + 'cert\WSSkey.pem';
          end;
          IdServerInterceptOpenSSL.OnStatusInfo := MyInfoCallback;
          IdServerInterceptOpenSSL.OnGetPassword := GetKeyPassword;
          HTTPServer.Intercept := IdServerInterceptOpenSSL;
        end;
        // END SSL stuff

        HTTPServer.Active := true;
        DisplayMessage(format('Listening for HTTP connections on %s:%d.',
          [HTTPServer.Bindings[0].IP, HTTPServer.Bindings[0].Port]));
      except
        on e: exception do
        begin
          acActivate.Checked := False;
          DisplayMessage(format('Exception %s in Activate. Error is:"%s".',
            [e.ClassName, e.Message]));
        end;
      end;
    end
    else
    begin
      HTTPServer.Active := false;
      // SSL stuff
      HTTPServer.Intercept := nil;
      // End SSL stuff
      DisplayMessage('Stop listening.');
    end;
  end;
  edPort.Enabled := not acActivate.Checked;
  edRoot.Enabled := not acActivate.Checked;
  cbAuthentication.Enabled := not acActivate.Checked;
  cbEnableLog.Enabled := not acActivate.Checked;
  cbManageSessions.Enabled := not acActivate.Checked;
end;

procedure TfmHTTPServerMain.edPortChange(Sender: TObject);
var
  FinalLength, i: Integer;
  FinalText: string;
begin
  // Filter routine. Remove every char that is not a numeric (must do that for cut'n paste)
  Setlength(FinalText, length(edPort.Text));
  FinalLength := 0;
  for i := 1 to length(edPort.Text) do
  begin
    if edPort.text[i] in ['0'..'9'] then
    begin
      inc(FinalLength);
      FinalText[FinalLength] := edPort.text[i];
    end;
  end;
  SetLength(FinalText, FinalLength);
  edPort.text := FinalText;
end;

procedure TfmHTTPServerMain.edPortKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9', #8]) then
    Key := #0;
end;

procedure TfmHTTPServerMain.edPortExit(Sender: TObject);
begin
  if length(trim(edPort.text)) = 0 then
    edPort.text := '80';
end;

procedure TfmHTTPServerMain.ManageUserSession(AThread: TIdPeerThread;
  RequestInfo: TIdHTTPRequestInfo; ResponseInfo: TIdHTTPResponseInfo);
var
  NumberOfView: Integer;
begin
  // Manage session informations
  if assigned(RequestInfo.Session) or (HTTPServer.CreateSession(ResponseInfo,
    RequestInfo) <> nil) then
  begin
    RequestInfo.Session.Lock;
    try
      NumberOfView :=
        StrToIntDef(RequestInfo.Session.Content.Values['NumViews'], 0);
      inc(NumberOfView);
      RequestInfo.Session.Content.Values['NumViews'] := IntToStr(NumberOfView);
      RequestInfo.Session.Content.Values['UserName'] :=
        RequestInfo.AuthUsername;
      RequestInfo.Session.Content.Values['Password'] :=
        RequestInfo.AuthPassword;
    finally
      RequestInfo.Session.Unlock;
    end;
  end;
end;

procedure TfmHTTPServerMain.ServeVirtualFolder(AThread: TIdPeerThread;
  RequestInfo: TIdHTTPRequestInfo; ResponseInfo: TIdHTTPResponseInfo);
begin
  ResponseInfo.ContentType := 'text/HTML';
  ResponseInfo.ContentText :=
    '<html><head><title>Virtual folder</title></head><body>';

  if AnsiSameText(RequestInfo.Params.Values['action'], 'close') then
  begin
    // Closing user session
    RequestInfo.Session.Free;
    ResponseInfo.ContentText := ResponseInfo.ContentText +
      '<h1>Session cleared</h1><p><a href="/sessions">Back</a></p>';
  end
  else
  begin
    if assigned(RequestInfo.Session) then
    begin
      if Length(RequestInfo.Params.Values['ParamName']) > 0 then
      begin
        // Add a new parameter to the session
        ResponseInfo.Session.Content.Values[RequestInfo.Params.Values['ParamName']] := RequestInfo.Params.Values['Param'];
      end;
      ResponseInfo.ContentText := ResponseInfo.ContentText +
        '<h1>Session informations</h1>';
      RequestInfo.Session.Lock;
      try
        ResponseInfo.ContentText := ResponseInfo.ContentText +
          '<table border=1>';
        ResponseInfo.ContentText := ResponseInfo.ContentText +
          '<tr><td>SessionID</td><td>' + RequestInfo.Session.SessionID +
          '</td></tr>';
        ResponseInfo.ContentText := ResponseInfo.ContentText +
          '<tr><td>Number of page requested during this session</td><td>' +
          RequestInfo.Session.Content.Values['NumViews'] + '</td></tr>';
        ResponseInfo.ContentText := ResponseInfo.ContentText +
          '<tr><td>Session data (raw)</td><td><pre>' +
          RequestInfo.Session.Content.Text + '</pre></td></tr>';
        ResponseInfo.ContentText := ResponseInfo.ContentText + '</table>';
        ResponseInfo.ContentText := ResponseInfo.ContentText +
          '<h1>Tools:</h1>';
        ResponseInfo.ContentText := ResponseInfo.ContentText +
          '<h2>Add new parameter</h2>';
        ResponseInfo.ContentText := ResponseInfo.ContentText +
          '<form method="POST">';
        ResponseInfo.ContentText := ResponseInfo.ContentText +
          '<p>Name: <input type="text" Name="ParamName"></p>';
        ResponseInfo.ContentText := ResponseInfo.ContentText +
          '<p>value: <input type="text" Name="Param"></p>';
        ResponseInfo.ContentText := ResponseInfo.ContentText +
          '<p><input type="Submit"><input type="reset"></p>';
        ResponseInfo.ContentText := ResponseInfo.ContentText + '</form>';
        ResponseInfo.ContentText := ResponseInfo.ContentText +
          '<h2>Other:</h2>';
        ResponseInfo.ContentText := ResponseInfo.ContentText + '<p><a href="' +
          RequestInfo.Document + '?action=close">Close current session</a></p>';
      finally
        RequestInfo.Session.Unlock;
      end;
    end
    else
    begin
      ResponseInfo.ContentText := ResponseInfo.ContentText +
        '<p color=#FF000>No session</p>';
    end;
  end;
  ResponseInfo.ContentText := ResponseInfo.ContentText + '</body></html>';
end;

procedure TfmHTTPServerMain.DisplaySessionChange(const Session: string);
var
  Index: integer;
begin
  if EnableLog then
  begin
    UILock.Acquire;
    try
      Index := lbSessionList.Items.IndexOf(Session);
      if Index > -1 then
        lbSessionList.Items.Delete(Index)
      else
        lbSessionList.Items.Append(Session);
    finally
      UILock.Release;
    end;
  end;
end;

procedure TfmHTTPServerMain.DisplayMessage(const Msg: string);
begin
  if EnableLog then
  begin
    UILock.Acquire;
    try
      lbLog.ItemIndex := lbLog.Items.Add(Msg);
    finally
      UILock.Release;
    end;
  end;
end;

const
  sauthenticationrealm = 'Indy http server demo';

procedure TfmHTTPServerMain.HTTPServerCommandGet(AThread: TIdPeerThread;
  RequestInfo: TIdHTTPRequestInfo; ResponseInfo: TIdHTTPResponseInfo);

  procedure AuthFailed;
  begin
    ResponseInfo.ContentText :=
      '<html><head><title>Error</title></head><body><h1>Authentication failed</h1>'#13 +
      'Check the demo source code to discover the password:<br><ul><li>Search for <b>AuthUsername</b> in <b>Main.pas</b>!</ul></body></html>';
    ResponseInfo.AuthRealm := sauthenticationrealm;
  end;

  procedure AccessDenied;
  begin
    ResponseInfo.ContentText :=
      '<html><head><title>Error</title></head><body><h1>Access denied</h1>'#13 +
      'You do not have sufficient priviligies to access this document.</body></html>';
    ResponseInfo.ResponseNo := 403;
  end;

var
  LocalDoc: string;
  ByteSent: Cardinal;
  ResultFile: TFileStream;
begin
  // Log the request
  DisplayMessage(Format('Command %s %s received from %s:%d',
    [RequestInfo.Command, RequestInfo.Document,
      AThread.Connection.Binding.PeerIP, AThread.Connection.Binding.PeerPort]));
  if cbAuthentication.Checked and
    ((RequestInfo.AuthUsername <> 'Indy') or (RequestInfo.AuthPassword <>
      'rocks')) then
  begin
    AuthFailed;
    exit;
  end;
  if cbManageSessions.checked then
    ManageUserSession(AThread, RequestInfo, ResponseInfo);
  if (Pos('/session', LowerCase(RequestInfo.Document)) = 1) then
  begin
    ServeVirtualFolder(AThread, RequestInfo, ResponseInfo);
  end
  else
  begin
    // Interprete the command to it's final path (avoid sending files in parent folders)
    LocalDoc := ExpandFilename(edRoot.text + RequestInfo.Document);
    // Default document (index.html) for folder
    if not FileExists(LocalDoc) and DirectoryExists(LocalDoc) and
      FileExists(ExpandFileName(LocalDoc + '/index.html')) then
    begin
      LocalDoc := ExpandFileName(LocalDoc + '/index.html');
    end;
    if FileExists(LocalDoc) then // File exists
    begin
      if AnsiSameText(Copy(LocalDoc, 1, Length(edRoot.text)), edRoot.Text) then
        // File down in dir structure
      begin
        if AnsiSameText(RequestInfo.Command, 'HEAD') then
        begin
          // HEAD request, don't send the document but still send back it's size
          ResultFile := TFileStream.create(LocalDoc, fmOpenRead or
            fmShareDenyWrite);
          try
            ResponseInfo.ResponseNo := 200;
            ResponseInfo.ContentType := GetMIMEType(LocalDoc);
            ResponseInfo.ContentLength := ResultFile.Size;
          finally
            ResultFile.Free;
              // We must free this file since it won't be done by the web server component
          end;
        end
        else
        begin
          // Normal document request
          // Send the document back
          ByteSent := HTTPServer.ServeFile(AThread, ResponseInfo, LocalDoc);
          DisplayMessage(Format('Serving file %s (%d bytes / %d bytes sent) to %s:%d',
            [LocalDoc, ByteSent, FileSizeByName(LocalDoc),
            AThread.Connection.Binding.PeerIP,
              AThread.Connection.Binding.PeerPort]));
        end;
      end
      else
        AccessDenied;
    end
    else
    begin
      ResponseInfo.ResponseNo := 404; // Not found
      ResponseInfo.ContentText :=
        '<html><head><title>Error</title></head><body><h1>' +
        ResponseInfo.ResponseText + '</h1></body></html>';
    end;
  end;
end;

procedure TfmHTTPServerMain.FormCreate(Sender: TObject);
begin
  UILock := TCriticalSection.Create;
  MIMEMap := TIdMIMETable.Create(true);
  edRoot.text := ExtractFilePath(Application.exename) + 'Web';
  if HTTPServer.active then
    caption := 'active'
  else
    caption := 'inactive';
end;

procedure TfmHTTPServerMain.FormDestroy(Sender: TObject);
begin
  MIMEMap.Free;
  UILock.Free;
end;

function TfmHTTPServerMain.GetMIMEType(sFile: TFileName): string;
begin
  result := MIMEMap.GetFileMIMEType(sFile);
end;

procedure TfmHTTPServerMain.HTTPServerSessionEnd(Sender: TIdHTTPSession);
var
  dt: TDateTime;
  i: Integer;
  hour, min, s, ms: word;
begin
  DisplayMessage(Format('Ending session %s at %s', [Sender.SessionID,
    FormatDateTime(LongTimeFormat, now)]));
  dt := (StrToDateTime(sender.Content.Values['StartTime']) - now);
  DecodeTime(dt, hour, min, s, ms);
  i := ((Trunc(dt) * 24 + hour) * 60 + min) * 60 + s;
  DisplayMessage(Format('Session duration was: %d seconds', [i]));
  DisplaySessionChange(Sender.SessionID);
end;

procedure TfmHTTPServerMain.HTTPServerSessionStart(Sender: TIdHTTPSession);
begin
  sender.Content.Values['StartTime'] := DateTimeToStr(Now);
  DisplayMessage(Format('Starting session %s at %s', [Sender.SessionID,
    FormatDateTime(LongTimeFormat, now)]));
  DisplaySessionChange(Sender.SessionID);
end;

procedure TfmHTTPServerMain.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  // desactivate the server
  if cbActive.Checked then
    acActivate.execute;
end;

procedure TfmHTTPServerMain.lbSessionListDblClick(Sender: TObject);
begin
  if lbSessionList.ItemIndex > -1 then
  begin
    HTTPServer.EndSession(lbSessionList.Items[lbSessionList.ItemIndex]);
  end;
end;

// SSL stuff

procedure TfmHTTPServerMain.MyInfoCallback(Msg: string);
begin
  DisplayMessage(Msg);
end;

procedure TfmHTTPServerMain.GetKeyPassword(var Password: string);
begin
  Password := 'aaaa'; // this is a password for unlocking the server
  // key. If you have your own key, then it would
  // probably be different
end;

procedure TfmHTTPServerMain.cbSSLClick(Sender: TObject);
begin
  if cbSSL.Checked then
  begin
    edPort.Text := '443';
  end
  else
  begin
    edPort.Text := '80';
  end;
end;
// End SSL stuff

procedure TfmHTTPServerMain.HTTPServerConnect(AThread: TIdPeerThread);
begin
  DisplayMessage('User logged in');
end;

procedure TfmHTTPServerMain.HTTPServerDisconnect(AThread: TIdPeerThread);
begin
  DisplayMessage('User logged out');
end;

procedure TfmHTTPServerMain.HTTPServerExecute(AThread: TIdPeerThread);
begin
  DisplayMessage('Execute');
end;

procedure TfmHTTPServerMain.HTTPServerCommandOther(Thread: TIdPeerThread;
  const asCommand, asData, asVersion: string);
begin
  DisplayMessage('Command other: ' + asCommand);
end;

procedure TfmHTTPServerMain.HTTPServerStatus(ASender: TObject;
  const AStatus: TIdStatus; const AStatusText: string);
begin
  DisplayMessage('Status: ' + aStatusText);
end;

end.

