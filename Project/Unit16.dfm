object Form16: TForm16
  Left = 360
  Top = 215
  Width = 1037
  Height = 509
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'ASIC'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 201
    Width = 1021
    Height = 8
    Cursor = crVSplit
    Align = alTop
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1021
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 44
      Height = 19
      Caption = #1055#1086#1080#1089#1082
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 64
      Top = 8
      Width = 961
      Height = 21
      TabOrder = 0
      OnChange = Edit1Change
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 1021
    Height = 152
    Align = alTop
    TabOrder = 1
    object Label2: TLabel
      Left = 736
      Top = 8
      Width = 190
      Height = 19
      Caption = #1047#1072#1090#1088#1072#1090#1099' '#1089' 17:00 '#1076#1086' 22:00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 736
      Top = 56
      Width = 190
      Height = 19
      Caption = #1047#1072#1090#1088#1072#1090#1099' '#1089' 22:00 '#1076#1086' 17:00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 736
      Top = 100
      Width = 162
      Height = 52
      Caption = #1062#1077#1085#1072' '#1091#1082#1072#1079#1099#1074#1072#1077#1090#1100#1089#1103' '#1074' '#1076#1086#1083#1083#1072#1088#1072#1093#13#10#1045#1089#1083#1080' '#1093#1086#1090#1080#1090#1077' '#1084#1086#1078#1077#1090#1077' '#1080#1079#1084#1077#1085#1080#1090#1100#13#10#13#10
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 728
      Height = 142
      Align = alCustom
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Number'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Name'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHotLight
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ReadOnly = True
          Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' ASIC'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clRed
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 350
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
          Title.Caption = #1062#1077#1085#1072' ASIC, $'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clRed
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Wt'
          Visible = False
        end>
    end
    object DBEdit1: TDBEdit
      Left = 592
      Top = 24
      Width = 121
      Height = 21
      DataField = 'Number'
      DataSource = DataSource1
      TabOrder = 1
      OnChange = DBEdit1Change
    end
    object Edit2: TEdit
      Left = 736
      Top = 32
      Width = 289
      Height = 21
      Enabled = False
      PopupMenu = PopupMenu1
      TabOrder = 2
      Text = '0,1233'
      OnKeyDown = Edit2KeyDown
      OnKeyPress = Edit2KeyPress
    end
    object Edit3: TEdit
      Left = 736
      Top = 80
      Width = 289
      Height = 21
      Enabled = False
      PopupMenu = PopupMenu1
      TabOrder = 3
      Text = '0,0432'
      OnKeyDown = Edit3KeyDown
      OnKeyPress = Edit3KeyPress
    end
    object Button1: TButton
      Left = 904
      Top = 104
      Width = 97
      Height = 25
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 4
      OnClick = Button1Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 209
    Width = 1021
    Height = 241
    Align = alClient
    TabOrder = 2
    object DBGrid2: TDBGrid
      Left = 1
      Top = 1
      Width = 1019
      Height = 207
      Align = alClient
      DataSource = DataSource2
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Number'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Give'
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
          Title.Font.Style = [fsItalic]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'enn'
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
          Title.Font.Style = [fsItalic]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'end'
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
          Title.Font.Style = [fsItalic]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHotLight
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ReadOnly = True
          Title.Caption = #1055#1088#1080#1073#1099#1083#1100' '#1074' '#1076#1077#1085#1100' '#1073#1077#1079' '#1091#1095#1077#1090#1072' '#1094#1077#1085#1099', $'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clRed
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsItalic]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'n'
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
          Title.Font.Style = [fsItalic]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'm'
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
          Title.Font.Style = [fsItalic]
          Visible = True
        end>
    end
    object StatusBar1: TStatusBar
      Left = 1
      Top = 208
      Width = 1019
      Height = 32
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
  end
  object MainMenu1: TMainMenu
    Left = 312
    Top = 129
    object N1: TMenuItem
      Caption = #1042#1099#1073#1088#1072#1090#1100' '#1089' '#1095#1077#1084' '#1088#1072#1073#1086#1090#1072#1090#1100
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
        OnClick = ASIC1Click
      end
    end
    object N2: TMenuItem
      Caption = #1055#1086#1076#1082#1083#1102#1095#1080#1090#1100' '#1073#1072#1079#1091' '#1076#1072#1085#1085#1099#1093
      object N10: TMenuItem
        Caption = #1055#1086#1076#1082#1083#1102#1095#1080#1090#1100' '#1074#1089#1077
        OnClick = N10Click
      end
      object ASIC2: TMenuItem
        Caption = #1055#1086#1076#1082#1083#1102#1095#1080#1090#1100' '#1090#1086#1083#1100#1082#1086' ASIC'
        OnClick = ASIC2Click
      end
    end
    object N6: TMenuItem
      Caption = #1050#1086#1085#1074#1077#1088#1090#1086#1088'/'#1082#1072#1083#1100#1082#1091#1083#1103#1090#1086#1088
      OnClick = N6Click
    end
    object N7: TMenuItem
      Caption = #1054#1090#1095#1077#1090
      object N8: TMenuItem
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1086#1090#1095#1077#1090
        OnClick = N8Click
      end
      object N9: TMenuItem
        Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1074#1099#1073#1088#1072#1085#1085#1086#1075#1086
        OnClick = N9Click
      end
    end
    object N11: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1082#1072
      OnClick = N11Click
    end
    object N12: TMenuItem
      Caption = #1055#1086#1083#1077#1079#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
      OnClick = N12Click
    end
    object N3: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N3Click
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 568
    Top = 105
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 632
    Top = 105
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from asic')
    Left = 464
    Top = 105
    object ADOQuery1Number: TAutoIncField
      FieldName = 'Number'
      ReadOnly = True
    end
    object ADOQuery1Name: TWideStringField
      FieldName = 'Name'
      Size = 255
    end
    object ADOQuery1Cena: TIntegerField
      FieldName = 'Cena'
    end
    object ADOQuery1Wt: TFloatField
      FieldName = 'Wt'
    end
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    OnCalcFields = ADOQuery2CalcFields
    Parameters = <>
    SQL.Strings = (
      'select * from rasic')
    Left = 528
    Top = 129
    object ADOQuery2Number: TIntegerField
      FieldName = 'Number'
    end
    object ADOQuery2Give: TFloatField
      FieldName = 'Give'
    end
    object ADOQuery2enn: TStringField
      FieldKind = fkCalculated
      FieldName = 'enn'
      Size = 15
      Calculated = True
    end
    object ADOQuery2end: TStringField
      FieldKind = fkCalculated
      FieldName = 'end'
      Size = 15
      Calculated = True
    end
    object ADOQuery2d: TStringField
      FieldKind = fkCalculated
      FieldName = 'd'
      Size = 15
      Calculated = True
    end
    object ADOQuery2n: TStringField
      FieldKind = fkCalculated
      FieldName = 'n'
      Size = 15
      Calculated = True
    end
    object ADOQuery2m: TStringField
      FieldKind = fkCalculated
      FieldName = 'm'
      Size = 15
      Calculated = True
    end
  end
  object ADOConnection1: TADOConnection
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 544
    Top = 81
  end
  object PopupMenu1: TPopupMenu
    Left = 272
    Top = 321
    object N13: TMenuItem
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100
      OnClick = N13Click
    end
  end
end
