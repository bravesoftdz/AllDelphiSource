unit ConjoinHost;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DockForm;

type
  TConjoinDockHost = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDockDrop(Sender: TObject; Source: TDragDockObject; X,
      Y: Integer);
    procedure FormUnDock(Sender: TObject; Client: TControl;
      NewTarget: TWinControl; var Allow: Boolean);
    procedure FormDockOver(Sender: TObject; Source: TDragDockObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure FormGetSiteInfo(Sender: TObject; DockClient: TControl;
      var InfluenceRect: TRect; MousePos: TPoint; var CanDock: Boolean);
  private
    procedure DoFloat(AControl: TControl);
  public
    procedure UpdateCaption(Exclude: TControl);
  end;

var
  ConjoinDockHost: TConjoinDockHost;

implementation

{$R *.DFM}

procedure TConjoinDockHost.DoFloat(AControl: TControl);
var
  ARect: TRect;
begin
  //float the control with its original size.
  ARect.TopLeft := AControl.ClientToScreen(Point(0, 0));
  ARect.BottomRight := AControl.ClientToScreen(Point(AControl.UndockWidth,
                       AControl.UndockHeight));
  AControl.ManualFloat(ARect);
end;

procedure TConjoinDockHost.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DockClientCount = 1 then
  begin
    DoFloat(DockClients[0]);
    Action := caFree;
  end else
    Action := caHide;
end;

procedure TConjoinDockHost.UpdateCaption(Exclude: TControl);
var
  I: Integer;
begin
  //if a dockable form is undocking, it will pass itself in as Exclude
  //because even it hasn't actually been taken out of the DockClient array
  //at this point.
  Caption := '';
  for I := 0 to DockClientCount-1 do
    if DockClients[I].Visible and (DockClients[I] <> Exclude) then
      Caption := Caption + TDockableForm(DockClients[I]).Caption + ' ';
end;

procedure TConjoinDockHost.FormDockDrop(Sender: TObject;
  Source: TDragDockObject; X, Y: Integer);
begin
  UpdateCaption(nil);
  DockManager.ResetBounds(True);
  //Force DockManager to redraw it's clients.
end;

procedure TConjoinDockHost.FormUnDock(Sender: TObject; Client: TControl;
  NewTarget: TWinControl; var Allow: Boolean);
begin
  //only 2 dock clients means the host must be destroyed and
  //the remaining window undocked to its old position and size.
  //(Recall that OnUnDock gets called before the undocking actually occurs)
  if Client is TDockableForm then
    TDockableForm(Client).DockSite := True;
  if (DockClientCount = 2) and (NewTarget <> Self) then
    PostMessage(Self.Handle, WM_CLOSE, 0, 0);
  UpdateCaption(Client);
end;

procedure TConjoinDockHost.FormDockOver(Sender: TObject;
  Source: TDragDockObject; X, Y: Integer; State: TDragState;
  var Accept: Boolean);
begin
  Accept := Source.Control is TDockableForm;
end;

procedure TConjoinDockHost.FormGetSiteInfo(Sender: TObject;
  DockClient: TControl; var InfluenceRect: TRect; MousePos: TPoint;
  var CanDock: Boolean);
begin
  CanDock := DockClient is TDockableForm;
end;

end.
