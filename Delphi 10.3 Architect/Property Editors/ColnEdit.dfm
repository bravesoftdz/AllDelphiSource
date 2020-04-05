inherited CollectionEditor: TCollectionEditor
  Left = 212
  Top = 178
  HelpContext = 26150
  HorzScrollBar.Increment = 10
  VertScrollBar.Increment = 11
  BorderIcons = [biSystemMenu]
  Caption = 'CollectionEditor'
  ClientHeight = 122
  ClientWidth = 116
  KeyPreview = True
  PopupMode = pmExplicit
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnResize = FormResize
  OnShow = FormShow
  ExplicitWidth = 132
  ExplicitHeight = 160
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Width = 116
    ExplicitWidth = 117
    Height = 8
  end
  inherited ToolBar1: TToolBar
    Width = 116
    Images = ImageList1
    TabOrder = 1
    ExplicitWidth = 117
    object ToolButton1: TToolButton
      Left = 4
      Top = 0
      Action = AddCmd
    end
    object ToolButton2: TToolButton
      Left = 27
      Top = 0
      Action = DeleteCmd
    end
    object ToolButton3: TToolButton
      Left = 50
      Top = 0
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object ToolButton4: TToolButton
      Left = 58
      Top = 0
      Action = MoveUpCmd
    end
    object ToolButton5: TToolButton
      Left = 81
      Top = 0
      Action = MoveDownCmd
    end
  end
  object Panel3: TPanel [2]
    Left = 0
    Top = 33
    Width = 116
    Height = 89
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 117
    ExplicitHeight = 93
    object ListView1: TListView
      Left = 0
      Top = 0
      Width = 117
      Height = 93
      Align = alClient
      Columns = <>
      ColumnClick = False
      DragMode = dmAutomatic
      HideSelection = False
      MultiSelect = True
      ReadOnly = True
      RowSelect = True
      ShowColumnHeaders = False
      TabOrder = 0
      ViewStyle = vsReport
      OnChange = ListView1Change
      OnClick = ListView1Click
      OnDragDrop = ListView1DragDrop
      OnDragOver = ListView1DragOver
      OnKeyDown = ListView1KeyDown
      OnKeyPress = ListView1KeyPress
    end
  end
  object ImageList1: TImageList [3]
    Left = 8
    Top = 40
    Bitmap = {
      494C010104000900080010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000999999004D4D
      4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D
      4D00000000000000000000000000000000000000000000000000999999004D4D
      4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D
      4D00000000000000000000000000000000000000000000000000000000000000
      000000000000CF9808007F5B00007F5B00007F5B00007F5B0000CF9808000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007F5B0000CF98080000000000000000000000
      000000000000000000000000000000000000000000000000000066666600FFFF
      FF00CCFFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099CCCC004D4D
      4D004D4D4D00000000000000000000000000000000000000000066666600FFFF
      FF00CCFFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099CCCC004D4D
      4D004D4D4D000000000000000000000000000000000000000000000000000000
      0000000000007F5B0000F6CB9700F6CB9700F6CB9700FFF3D500CF9808000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007F5B0000CF980800FFF3D500CF980800000000000000
      000000000000000000000000000000000000000000000000000066666600FFFF
      FF00CCFFFF00CCFFFF0099FFFF0099FFFF0099FFFF0099FFFF0099CCCC004D4D
      4D00669999004D4D4D000000000000000000000000000000000066666600FFFF
      FF00CCFFFF00CCFFFF0099FFFF0099FFFF0099FFFF0099FFFF0099CCCC004D4D
      4D00669999004D4D4D0000000000000000000000000000000000000000000000
      0000000000007F5B0000F6CB9700F6CB9700F6CB9700FFF3D500CF9808000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F5B0000CF980800F6CB9700F6CB9700FFF3D500CF9808000000
      0000000000000000000000000000000000000000000000000000ACACAC000235
      CC00CCFFFF00CCFFFF0099FFFF00CCFFFF0099FFFF0099FFFF0099CCCC004D4D
      4D0099CCCC00669999004D4D4D00000000000000000000000000ACACAC00FFFF
      FF00CCFFFF00CCFFFF0099FFFF00CCFFFF0099FFFF0099FFFF0099CCCC004D4D
      4D0099CCCC00669999004D4D4D00000000000000000000000000000000000000
      0000000000007F5B0000F6CB9700F6CB9700F6CB9700FFF3D500CF9808000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F5B0000CF980800F6CB9700F6CB9700F6CB9700F6CB9700FFF3D500CF98
      0800000000000000000000000000000000000000000000000000ACACAC000235
      CC00CCFFFF00CCFFFF00CCFFFF0099FFFF00CCFFFF0099FFFF0099FFFF009999
      99006666660066666600666666004D4D4D001A47D200002EC300000D8F00000D
      8F00CCFFFF00000D8F00000D8F00000D8F00000D8F0099FFFF0099FFFF009999
      99006666660066666600666666004D4D4D0000000000CF9808007F5B00007F5B
      00007F5B00007F5B0000F6CB9700F6CB9700F6CB9700FFF3D5007F5B00007F5B
      00007F5B00007F5B00007F5B0000000000000000000000000000000000007F5B
      0000CF980800F6CB9700F6CB9700F6CB9700F6CB9700F6CB9700F6CB9700FFF3
      D500CF9808000000000000000000000000000468FF0000000000ACACAC000235
      CC00CCFFFF00CCFFFF000436CD00CCFFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF004D4D4D0000000000466BDD001947D200000D
      8F00CCFFFF00000D8F00001094001C299E0099FFFF0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF004D4D4D00000000007F5B0000CF980800F6CB
      9700F6CB9700F6CB9700F6CB9700F6CB9700F6CB9700FFF3D500FFF3D500FFF3
      D500FFF3D500FFF3D500CF9808000000000000000000000000007F5B0000CF98
      0800F6CB9700F6CB9700F6CB9700F6CB9700F6CB9700F6CB9700F6CB9700F6CB
      9700FFF3D500CF9808000000000000000000000000000436CD00ACACAC000235
      CC00CCFFFF000267FF00CCFFFF00CCFFFF00CCFFFF0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF004D4D4D0000000000000000005D7DE3000025
      B6000012970000159C00001FAC00CCFFFF00CCFFFF0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF004D4D4D0000000000000000007F5B0000CF98
      0800F6CB9700F6CB9700F6CB9700F6CB9700F6CB9700F6CB9700F6CB9700F6CB
      9700FFF3D500CF9808000000000000000000000000007F5B0000CF980800F6CB
      9700F6CB9700F6CB9700F6CB9700F6CB9700F6CB9700FFF3D500FFF3D500FFF3
      D500FFF3D500FFF3D500CF9808000000000000000000000000000267FF000235
      CC000267FF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF004D4D4D000000000000000000ACACAC002752
      D600002CC0000019A200CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF004D4D4D000000000000000000000000007F5B
      0000CF980800F6CB9700F6CB9700F6CB9700F6CB9700F6CB9700F6CB9700FFF3
      D500CF98080000000000000000000000000000000000CF9808007F5B00007F5B
      00007F5B00007F5B0000F6CB9700F6CB9700F6CB9700FFF3D5007F5B00007F5B
      00007F5B00007F5B00007F5B0000000000000235CC000235CC000033CC0033CC
      FF000234CC000234CC000234CC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF004D4D4D000000000000000000ACACAC002F59
      D8000033CC0000119500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF004D4D4D000000000000000000000000000000
      00007F5B0000CF980800F6CB9700F6CB9700F6CB9700F6CB9700FFF3D500CF98
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000007F5B0000F6CB9700F6CB9700F6CB9700FFF3D500CF9808000000
      00000000000000000000000000000000000000000000000000000267FF000235
      CC000267FF00ACACAC00ACACAC00666666006666660066666600666666006666
      66006666660066666600666666009999990000000000000000000C3DCF002D57
      D7002F59D8001242D100000D8F00ACACAC006666660066666600666666006666
      6600666666006666660066666600999999000000000000000000000000000000
      0000000000007F5B0000CF980800F6CB9700F6CB9700FFF3D500CF9808000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F5B0000F6CB9700F6CB9700F6CB9700FFF3D500CF9808000000
      000000000000000000000000000000000000000000000468FF00000000000235
      CC00000000000468FF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002D57D700325BD800355D
      D900000000005073E0000020AE00000D8F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007F5B0000CF980800FFF3D500CF980800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F5B0000F6CB9700F6CB9700F6CB9700FFF3D500CF9808000000
      0000000000000000000000000000000000000436CD0000000000000000000235
      CC0000000000000000000436CD00000000000000000000000000000000000000
      0000000000000000000000000000000000004B6FDF005879E2004E71DF00365E
      DA00000000005C7DE300335CD9000030C700001BA60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007F5B0000CF98080000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CF9808007F5B00007F5B00007F5B00007F5B0000CF9808000000
      0000000000000000000000000000000000000000000000000000000000000235
      CC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000235
      CC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      C00FC00FF81FFE7FC007C007F81FFC3FC003C003F81FF81FC001C001F81FF00F
      C00000008001E007400080008001C0038000C000C0038001C000C000E0078001
      0000C000F00FF81FC000C000F81FF81FABFF88FFFC3FF81F6DFF087FFE7FF81F
      EFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  inherited PopupMenu1: TPopupActionBar
    Images = ImageList1
    object N3: TMenuItem [0]
      Action = AddCmd
    end
    object N4: TMenuItem [1]
      Action = DeleteCmd
    end
    object N5: TMenuItem [2]
      Action = MoveUpCmd
    end
    object N6: TMenuItem [3]
      Action = MoveDownCmd
    end
    object N7: TMenuItem [4]
      Action = SelectAllCmd
    end
    object N2: TMenuItem [5]
      Caption = '-'
    end
  end
  inherited ActionList1: TActionList
    Images = ImageList1
    object AddCmd: TAction
      Caption = '&Add'
      Hint = 'Add New'
      ImageIndex = 0
      ShortCut = 45
      OnExecute = AddClick
    end
    object DeleteCmd: TAction
      Caption = '&Delete'
      Enabled = False
      Hint = 'Delete Selected'
      ImageIndex = 1
      ShortCut = 46
      OnExecute = DeleteClick
      OnUpdate = SelectionUpdate
    end
    object MoveUpCmd: TAction
      Caption = 'Move &Up'
      Enabled = False
      Hint = 'Move Selected Up'
      ImageIndex = 2
      ShortCut = 16422
      OnExecute = MoveUpClick
      OnUpdate = SelectionUpdate
    end
    object MoveDownCmd: TAction
      Caption = 'Move Dow&n'
      Enabled = False
      Hint = 'Move Selected Down'
      ImageIndex = 3
      ShortCut = 16424
      OnExecute = MoveDownClick
      OnUpdate = SelectionUpdate
    end
    object SelectAllCmd: TAction
      Caption = '&Select All'
      Enabled = False
      ShortCut = 0
      OnExecute = SelectAll1Click
      OnUpdate = SelectAllCommandUpdate
    end
  end
end
