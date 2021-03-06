        ��  ��                    ,   ��
 S N I P E T S       0           program %s;

uses
  Forms,
  Main in 'MAIN.PAS' {MainForm};

{$R *.RES}

begin
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
|unit Main;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, Buttons, ExtCtrls, Menus;

type
  TMainForm = class(TForm)
|  end;

var
  MainForm: TMainForm;

implementation

{$R *.DFM}

|begin
  Application.OnHint := ShowHint;
end;

|begin
  StatusLine.SimpleText := Application.Hint;
end;

|begin
  { Add code to create a new file }
end;

|begin
  if OpenDialog.Execute then
  begin
    { Add code to open OpenDialog.FileName }
  end;
end;

|begin
   { Add code to save current file under current name }
end;

|begin
  if SaveDialog.Execute then
  begin
    { Add code to save current file under SaveDialog.FileName }
  end;
end;

|begin
  if PrintDialog.Execute then
  begin
    { Add code to print current file }
  end;
end;

|begin
  PrintSetupDialog.Execute;
end;

|begin
  Close;
end;

|begin
  { Add code to perform Edit Undo }
end;

|begin
  { Add code to perform Edit Cut }
end;

|begin
  { Add code to perform Edit Copy }
end;

|begin
  { Add code to perform Edit Paste }
end;

|begin
  Tile;
end;

|begin
  Cascade;
end;

|begin
  ArrangeIcons;
end;

|begin
  Application.HelpCommand(HELP_CONTENTS, 0);
end;

|const
  EmptyString: PChar = '';
begin
  Application.HelpCommand(HELP_PARTIALKEY, Longint(EmptyString));
end;

|begin
  Application.HelpCommand(HELP_HELPONHELP, 0);
end;

|begin
  { Add code to show program's About Box }
end;

|object MainForm: TMainForm
  Left = 214
  Top = 112
  Width = 409
  Height = 249
  Caption = 'MainForm'
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  PixelsPerInch = 96
  TextHeight = 13
|  Menu = MainMenu
|  FormStyle = fsMDIForm
|  ShowHint = True
|  OnCreate = FormCreate
|  object MainMenu: TMainMenu
    Left = 220
    Top = 40
|    object FileMenu: TMenuItem
      Caption = '&File'
      object FileNewItem: TMenuItem
        Caption = '&New'
        Hint = 'Create a new file'
        OnClick = FileNew
      end
      object FileOpenItem: TMenuItem
        Caption = '&Open...'
        Hint = 'Open an existing file'
        OnClick = FileOpen
      end
      object FileSaveItem: TMenuItem
        Caption = '&Save'
        Hint = 'Save current file'
        OnClick = FileSave
      end
      object FileSaveAsItem: TMenuItem
        Caption = 'Save &As...'
        Hint = 'Save current file under a new name'
        OnClick = FileSaveAs
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object FilePrintItem: TMenuItem
        Caption = '&Print'
        Hint = 'Print current file'
        OnClick = FilePrint
      end
      object FilePrintSetupItem: TMenuItem
        Caption = 'P&rint Setup...'
        Hint = 'Change printer setup'
        OnClick = FilePrintSetup
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object FileExitItem: TMenuItem
        Caption = 'E&xit'
        Hint = 'Exit this application'
        OnClick = FileExit
      end
    end
|    object EditMenu: TMenuItem
      Caption = '&Edit'
      object EditUndoItem: TMenuItem
        Caption = '&Undo'
        Hint = 'Undo the last action'
        OnClick = EditUndo
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object EditCutItem: TMenuItem
        Caption = 'Cu&t'
        Hint = 'Delete selected item'
        OnClick = EditCut
      end
      object EditCopyItem: TMenuItem
        Caption = '&Copy'
        Hint = 'Copy selected item to clipboard'
        OnClick = EditCopy
      end
      object EditPasteItem: TMenuItem
        Caption = '&Paste'
        Hint = 'Paste contents of clipboard'
        OnClick = EditPaste
      end
    end
|    object WindowMenu: TMenuItem
      Caption = '&Window'
      object WindowTileItem: TMenuItem
        Caption = '&Tile'
        Hint = 'Tile all windows'
        OnClick = WindowTile
      end
      object WindowCascadeItem: TMenuItem
        Caption = '&Cascade'
        Hint = 'Cascade all windows'
        OnClick = WindowCascade
      end
      object WindowArrangeItem: TMenuItem
        Caption = '&Arrange All'
        Hint = 'Arrange minimized windows'
        OnClick = WindowArrange
      end
    end
|    object HelpMenu: TMenuItem
      Caption = '&Help'
      object HelpContentsItem: TMenuItem
        Caption = '&Contents'
        Hint = 'Display the help contents screen'
        OnClick = HelpContents
      end
      object HelpSearchItem: TMenuItem
        Caption = '&Search for Help On...'
        Hint = 'Search help file for a topic'
        OnClick = HelpSearch
      end
      object HelpHowToUseItem: TMenuItem
        Caption = '&How to Use Help'
        Hint = 'Help on using the help system'
        OnClick = HelpHowToUse
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object HelpAboutItem: TMenuItem
        Caption = '&About...'
        Hint = 'Show program information'
        OnClick = HelpAbout
      end
    end
|  object OpenDialog: TOpenDialog
    Filter = '%s'
    Left = 230
    Top = 87
  end
|  object SaveDialog: TSaveDialog
    Filter = '%s'
    Left = 204
    Top = 125
  end
|  object PrintDialog: TPrintDialog
    Left = 262
    Top = 127
  end
|  object PrintSetupDialog: TPrinterSetupDialog
    Left = 276
    Top = 93
  end
|  object StatusLine: TStatusBar
    Align = alBottom
    Height = 23
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    ParentFont = False
    SimplePanel = True
  end
|  object SpeedBar: TPanel
    Align = alTop
    Height = 33
|    object SpeedButton%d: TSpeedButton
      Left = %d
      Top = 4
      Width = 25
      Height = 25
      OnClick = %s
      Hint = '%s'   
      NumGlyphs = 2
      Glyph.Data = {
|
   r      �� ���    0                             D i a l o g   W i z a r d , D i a l o g   W i z a r d   f r o m   d e m o n s t r a t i o n   W i z a r d   D L L .  A p p l i c a t i o n   W i z a r d 0 A p p l i c a t i o n   W i z a r d   f r o m   d e m o n s t r a t i o n   W i z a r d   D L L  & F i n i s h  & N e x t   >   A n   a p p l i c a t i o n   n a m e   i s   r e q u i r e d !   :      �� ���    0          / T h e   a p p l i c a t i o n   n a m e   i s   n o t   a   v a l i d   i d e n t i f i e r .   T h e   p a t h   e n t e r e d   d o e s   n o t   e x i s t .  M A I N . P A S  M A I N . D F M  M A I N . T X T               
 S t a t u s L i n e 
 O p e n D i a l o g 
 S a v e D i a l o g  M a i n M e n u   �       �� ���    0           M a i n F o r m  S p e e d B u t t o n % d  P r i n t D i a l o g  P r i n t S e t u p D i a l o g  S p e e d B a r    S h o w H i n t 
 F o r m C r e a t e                 :       �� ���    0                               O K  C a n c e l  & H e l p         L       �� ���    0                           & F i l e  & E d i t  & W i n d o w  & H e l p         �       �� ���    0               F i l e M e n u  E d i t M e n u 
 W i n d o w M e n u  H e l p M e n u              & N e w  & O p e n . . .  & S a v e  S a v e   & A s . . . $      �� ���    0          	 & P r i n t . . .  P & r i n t   S e t u p . . .  E & x i t  & U n d o  C u & t  & C o p y  & P a s t e  & T i l e  & C a s c a d e  & A r r a n g e   A l l 	 & C o n t e n t s  & S e a r c h   f o r   H e l p   O n . . .  & H o w   t o   U s e   H e l p 	 & A b o u t . . .     �      �� ���    0           F i l e N e w I t e m  F i l e O p e n I t e m  F i l e S a v e I t e m  F i l e S a v e A s I t e m  F i l e P r i n t I t e m  F i l e P r i n t S e t u p I t e m  F i l e E x i t I t e m  E d i t U n d o I t e m  E d i t C u t I t e m  E d i t C o p y I t e m  E d i t P a s t e I t e m  W i n d o w T i l e I t e m  W i n d o w C a s c a d e I t e m  W i n d o w A r r a n g e I t e m  H e l p C o n t e n t s I t e m  H e l p S e a r c h I t e m Z       �� ���    0           H e l p H o w T o U s e I t e m  H e l p A b o u t I t e m                               �       �� ���    0                   F i l e N e w  F i l e O p e n  F i l e S a v e 
 F i l e S a v e A s 	 F i l e P r i n t  F i l e P r i n t S e t u p  F i l e E x i t  E d i t U n d o  E d i t C u t  E d i t C o p y 	 E d i t P a s t e 
 W i n d o w T i l e �       �� ���    0           W i n d o w C a s c a d e  W i n d o w A r r a n g e  H e l p C o n t e n t s 
 H e l p S e a r c h  H e l p H o w T o U s e 	 H e l p A b o u t                       �       �� ���    0                           N e w |  O p e n |  S a v e |  S a v e   A s |  P r i n t |  P r i n t   S e t u p |  E x i t |  U n d o | �       �� ���    0           C u t |  C o p y |  P a s t e |  T i l e |  C a s c a d e |  A r r a n g e |  H e l p   C o n t e n t s |  T o p i c   S e a r c h |  H o w   t o   U s e   H e l p |  A b o u t |               >       �� ���    0                                   D i a l o g s  P r o j e c t s       