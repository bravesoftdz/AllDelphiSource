�
 TFRMNEEDDATA 06
  TPF0TfrmNeedDatafrmNeedDataLeft� TopkWidth�Height�CaptionfrmNeedDataColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrderScaledOnCreate
FormCreatePixelsPerInch`
TextHeight 	TQuickRep	QuickRep1LeftTop Width0Height Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightBeforePrintQuickRep1BeforePrintDescription.StringsuThis is a very simple of example of how to use the OnNeedData event to populate a report without using any TDataSets. �The report's QRPrinter.Progress property is updated in the OnNeedData event so that we manually update the preview's progress indicator. Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style Functions.Strings
PAGENUMBERCOLUMNNUMBERREPORTTITLE Functions.DATA00'' 
OnNeedDataQuickRep1NeedDataOptionsFirstPageHeaderLastPageFooter Page.ColumnsPage.Orientation
poPortraitPage.PaperSizeLetterPage.Values       �@      ��
@       �@      ��
@       �@       �@           PrinterSettings.CopiesPrinterSettings.DuplexPrinterSettings.FirstPage PrinterSettings.LastPage PrinterSettings.OutputBinAutoPrintIfEmpty	ReportTitleOnNeedData Example
SnapToGrid	UnitsInchesZoomd TQRBandDetailBand1Left0TopXWidth�HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values      ��@�������	@ BandTyperbDetail TQRLabelQRLabel1Left Top Width:HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@                    UUUUUUu�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionQRLabel1ColorclWhiteTransparentWordWrap	FontSize
   TQRBand
TitleBand1Left0Top0Width�Height(Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style ForceNewColumnForceNewPage
ParentFontSize.Values��������@�������	@ BandTyperbTitle 
TQRSysData
QRSysData1LeftTop Width� Height!Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      ��@������ڻ@          UUUUUU�@ 	AlignmenttaCenterAlignToBand	AutoSize	ColorclWhiteDataqrsReportTitleTransparentFontSize     