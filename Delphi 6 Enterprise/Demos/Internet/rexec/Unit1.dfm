�
 TFORM1 0P
  TPF0TForm1Form1Left� Top� Width�HeightFActiveControlMemo1Captionrexec ClientColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height	Font.NameMS Sans Serif
Font.Pitch
fpVariable
Font.Style OldCreateOrder	PixelsPerInch`
TextHeight TPanelPanel1Left TopqWidth�Height�AlignalClientTabOrder  TMemoMemo1LeftTopWidth�Height�AlignalClientColorclBlackFont.CharsetDEFAULT_CHARSET
Font.ColorclLimeFont.Height	Font.NameFixedsys
Font.Pitch
fpVariable
Font.Style Lines.StringsDEMO: rexec 0Usage: fill in the parameters and press execute. Parameter fields:----------------------------------------------------------+Server:  Host Name or IP of server with an )         RExec server running on port 512 5UserName: The name of the user to login to the server  PassWord: Password for the user -          CAUTION: This is sent  as plaintext .Command : The command to execute on the Server9          A series of commands can be used by seperating !          them with a semicolon ; Example Commands:  ls -l  DISPLAY=LOCALIP:0.0; xterm)  /usr/local/someApplication/startService                                 
ParentFontReadOnly	
ScrollBars
ssVerticalTabOrder    TPanelPanel2Left Top Width�HeightqAlignalTopTabOrder TShapeConnectLightLeft� Top	WidthHeightBrush.ColorclRed	Pen.Width ShapestCircle  TLabelLabel3LeftTop@WidthLHeightAutoSizeCaptionCommandLayouttlCenter  TLabelLabel4LeftTopWidthPHeightAutoSizeCaptionServerLayouttlCenter  TLabelLabel1LeftTopWidthEHeightAutoSizeCaptionUserNameLayouttlCenter  TLabelLabel2LeftTop+WidthFHeightAutoSizeCaptionPassWordLayouttlCenter  TLabelLabel5LeftTopWidth`HeightAutoSizeCaption
ConnectionLayouttlCenter  TEdit
EditServerLeftWTopWidth� Height 	MaxLength�TabOrder   TEditEditCommandLeftWTop>Width$Height 	MaxLength�TabOrder  TEditEditUserLeftWTopWidth� Height 	MaxLength�TabOrder  TEditEditPassLeftWTop+Width� Height 	MaxLength�TabOrder  TButtonButton1Left~Top=Width� HeightCaptionExecuteTabOrderOnClickButton1Click  TButtonButtonCloseLeftTop%Width� HeightCaptionClose ConnectionTabOrderOnClickButtonCloseClick  TButtonButtonClearLeftTopWidth� HeightCaptionClear ScreenTabOrderOnClickButtonClearClick   
TTcpClientclientActive
RemotePort512OnErrorclientError	OnConnectclientConnectLeft8Top(   