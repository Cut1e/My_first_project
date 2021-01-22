object Form12: TForm12
  Left = 176
  Top = 98
  Width = 1311
  Height = 504
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #1063#1090#1086' '#1074#1093#1086#1076#1080#1090' '#1074' '#1086#1090#1095#1077#1090
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1295
    Height = 445
    Align = alClient
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 1293
      Height = 407
      Align = alClient
      DataSource = DataSource1
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'kod'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHotLight
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clRed
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'name'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHotLight
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ReadOnly = True
          Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clRed
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 275
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cena'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHotLight
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ReadOnly = True
          Title.Caption = #1062#1077#1085#1072', $'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clRed
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'give'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHotLight
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ReadOnly = True
          Title.Caption = #1044#1086#1093#1086#1076', $'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clRed
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Eld'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHotLight
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ReadOnly = True
          Title.Caption = #1069#1085#1077#1088#1075#1080#1080' '#1089' 17:00 '#1076#1086' 22:00'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clRed
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'eln'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHotLight
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ReadOnly = True
          Title.Caption = #1069#1085#1077#1088#1075#1080#1080' '#1089' 22:00 '#1076#1086' 17:00'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clRed
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'D'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHotLight
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ReadOnly = True
          Title.Caption = #1055#1088#1080#1099#1073#1083#1100' '#1074' '#1076#1077#1085#1100' '#1073#1077#1079' '#1091#1095#1077#1090#1072' '#1094#1077#1085#1099', $'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clRed
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 210
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'N'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHotLight
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ReadOnly = True
          Title.Caption = #1055#1088#1080#1073#1099#1083#1100' '#1074' '#1085#1077#1076#1077#1083#1102' '#1073#1077#1079' '#1091#1095#1077#1090#1072' '#1094#1077#1085#1099', $'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clRed
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 210
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHotLight
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ReadOnly = True
          Title.Caption = #1055#1088#1080#1073#1099#1083#1100' '#1074' '#1084#1077#1089#1103#1094' '#1073#1077#1079' '#1091#1095#1077#1090#1072' '#1094#1077#1085#1099', $'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clRed
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 210
          Visible = True
        end>
    end
    object StatusBar1: TStatusBar
      Left = 1
      Top = 408
      Width = 1293
      Height = 36
      Panels = <
        item
          Text = #1056#1072#1079#1088#1072#1073#1086#1090#1072#1083' '#1041#1091#1094#1072#1077#1074' '#1042#1083#1072#1076#1080#1089#1083#1072#1074' '#1048#1075#1086#1088#1077#1074#1080#1095
          Width = 250
        end
        item
          Text = #1055#1057' "'#1052#1072#1081#1085#1080#1085#1075' '#1082#1088#1080#1087#1090#1086#1074#1072#1083#1102#1090'"'
          Width = 200
        end
        item
          Width = 50
        end>
    end
    object CheckBox1: TCheckBox
      Left = 560
      Top = 168
      Width = 97
      Height = 17
      Caption = 'CheckBox1'
      TabOrder = 2
      Visible = False
    end
  end
  object con1: TADOConnection
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 304
    Top = 312
  end
  object ADOQuery1: TADOQuery
    Connection = con1
    CursorType = ctStatic
    Filtered = True
    Parameters = <>
    SQL.Strings = (
      'select * from ot')
    Left = 360
    Top = 312
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 248
    Top = 313
  end
  object MainMenu1: TMainMenu
    Left = 424
    Top = 304
    object N1: TMenuItem
      Caption = #1042#1099#1073#1088#1072#1090' '#1089' '#1095#1077#1084' '#1088#1072#1073#1086#1090#1072#1090#1100
      object N4: TMenuItem
        Caption = #1042#1080#1076#1077#1086#1082#1072#1088#1090#1099
        OnClick = N4Click
      end
      object N5: TMenuItem
        Caption = #1055#1088#1086#1094#1077#1089#1089#1086#1088
        OnClick = N5Click
      end
      object ASIC1: TMenuItem
        Caption = 'ASIC'
      end
    end
    object N2: TMenuItem
      Caption = #1055#1086#1076#1082#1083#1102#1095#1080#1090#1100' '#1073#1072#1079#1091' '#1076#1072#1085#1085#1099#1093
      object N11: TMenuItem
        Caption = #1055#1086#1076#1082#1083#1102#1095#1080#1090#1100' '#1074#1089#1077
        OnClick = N11Click
      end
      object N12: TMenuItem
        Caption = #1055#1086#1076#1082#1083#1102#1095#1080#1090#1100' '#1090#1086#1083#1100#1082#1086' '#1076#1083#1103' '#1086#1090#1095#1077#1090#1072
        OnClick = N12Click
      end
    end
    object N6: TMenuItem
      Caption = #1050#1086#1085#1074#1077#1088#1090#1086#1088'/'#1082#1072#1083#1100#1082#1091#1083#1103#1090#1086#1088
      OnClick = N6Click
    end
    object N7: TMenuItem
      Caption = #1054#1090#1095#1077#1090
      object N8: TMenuItem
        Caption = #1055#1086#1083#1085#1099#1081' '#1086#1090#1095#1077#1090
        object N10: TMenuItem
          Caption = #1055#1088#1086#1089#1084#1086#1090#1088
          OnClick = N10Click
        end
        object PDF2: TMenuItem
          Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' PDF'
          OnClick = PDF2Click
        end
        object RTF3: TMenuItem
          Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' RTF'
          OnClick = RTF3Click
        end
        object DOCX1: TMenuItem
          Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' DOCX'
          OnClick = DOCX1Click
        end
        object PTTX1: TMenuItem
          Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' PPTX'
          OnClick = PTTX1Click
        end
        object XLSX3: TMenuItem
          Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' XLSX'
          OnClick = XLSX3Click
        end
        object JPEG3: TMenuItem
          Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' JPEG'
          OnClick = JPEG3Click
        end
      end
      object N14: TMenuItem
        Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1076#1086#1093#1086#1076#1091' '#1074' '#1084#1077#1089#1103#1094
        object N17: TMenuItem
          Caption = #1055#1088#1086#1089#1084#1086#1090#1088
          OnClick = N17Click
        end
        object N18: TMenuItem
          Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' PDF'
          OnClick = N18Click
        end
        object RTF2: TMenuItem
          Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' RTF'
          OnClick = RTF2Click
        end
        object N19: TMenuItem
          Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' DOCX'
          OnClick = N19Click
        end
        object N20: TMenuItem
          Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' PPTX'
          OnClick = N20Click
        end
        object XLSX2: TMenuItem
          Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' XLSX'
          OnClick = XLSX2Click
        end
        object JPEG2: TMenuItem
          Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' JPEG'
          OnClick = JPEG2Click
        end
      end
      object N15: TMenuItem
        Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1076#1086#1093#1086#1076#1091' '#1074' '#1085#1077#1076#1077#1083#1102
        object N21: TMenuItem
          Caption = #1055#1088#1086#1089#1084#1086#1090#1088
          OnClick = N21Click
        end
        object PDF3: TMenuItem
          Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' PDF'
          OnClick = PDF3Click
        end
        object RTF4: TMenuItem
          Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' RTF'
          OnClick = RTF4Click
        end
        object DOCX2: TMenuItem
          Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' DOCX'
          OnClick = DOCX2Click
        end
        object PTTX2: TMenuItem
          Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' PTTX'
          OnClick = PTTX2Click
        end
        object XLSX4: TMenuItem
          Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' XLSX'
          OnClick = XLSX4Click
        end
        object JPEG4: TMenuItem
          Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' JPEG'
          OnClick = JPEG4Click
        end
      end
      object N16: TMenuItem
        Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1076#1086#1093#1086#1076#1091' '#1074' '#1076#1077#1085#1100
        object N22: TMenuItem
          Caption = #1055#1088#1086#1089#1084#1086#1090#1088
          OnClick = N22Click
        end
        object PDF4: TMenuItem
          Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' PDF'
          OnClick = PDF4Click
        end
        object RTF5: TMenuItem
          Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' RTF'
          OnClick = RTF5Click
        end
        object DOCX3: TMenuItem
          Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' DOCX'
          OnClick = DOCX3Click
        end
        object PTTX3: TMenuItem
          Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' PTTX'
          OnClick = PTTX3Click
        end
        object XLSX5: TMenuItem
          Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' XLSX'
          OnClick = XLSX5Click
        end
        object JPEG5: TMenuItem
          Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' JPEG'
          OnClick = JPEG5Click
        end
      end
    end
    object N23: TMenuItem
      Caption = #1054#1073#1088#1072#1073#1086#1090#1082#1072
      object N9: TMenuItem
        Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
        OnClick = N9Click
      end
      object N13: TMenuItem
        Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100
        OnClick = N13Click
      end
    end
    object N25: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1082#1072
      OnClick = N25Click
    end
    object N24: TMenuItem
      Caption = #1055#1086#1083#1077#1079#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
      OnClick = N24Click
    end
    object N3: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N3Click
    end
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 688
    Top = 104
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    OpenAfterExport = False
    Wysiwyg = True
    Creator = 'FastReport'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 736
    Top = 112
  end
  object frxDOCXExport1: TfrxDOCXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PictureType = gpPNG
    Left = 792
    Top = 176
  end
  object frxPPTXExport1: TfrxPPTXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PictureType = gpPNG
    Left = 856
    Top = 224
  end
  object frxXLSXExport1: TfrxXLSXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ChunkSize = 0
    OpenAfterExport = False
    PictureType = gpPNG
    Left = 904
    Top = 272
  end
  object frxJPEGExport1: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 952
    Top = 336
  end
end
