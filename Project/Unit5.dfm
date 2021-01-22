object Form5: TForm5
  Left = 299
  Top = 181
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1050#1086#1085#1074#1077#1088#1090#1086#1088
  ClientHeight = 323
  ClientWidth = 614
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 614
    Height = 323
    Align = alClient
    TabOrder = 0
    object Label2: TLabel
      Left = 0
      Top = 0
      Width = 191
      Height = 48
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#13#10#1082#1088#1080#1087#1090#1086#1074#1072#1083#1102#1090#1099
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenuHighlight
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 0
      Top = 161
      Width = 162
      Height = 24
      Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1074#1072#1083#1102#1090#1091
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenuHighlight
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 0
      Top = 97
      Width = 225
      Height = 24
      Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1082#1088#1080#1087#1090#1086#1074#1072#1083#1102#1090#1091
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenuHighlight
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 272
      Top = 0
      Width = 9
      Height = 417
    end
    object Label1: TLabel
      Left = 192
      Top = 289
      Width = 180
      Height = 24
      Caption = #1050#1091#1088#1089'  '#1086#1090' 07.03.2018'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Bevel2: TBevel
      Left = 0
      Top = 80
      Width = 273
      Height = 17
    end
    object Bevel3: TBevel
      Left = 0
      Top = 144
      Width = 273
      Height = 17
    end
    object Bevel4: TBevel
      Left = 0
      Top = 208
      Width = 273
      Height = 17
    end
    object Edit1: TEdit
      Left = 8
      Top = 60
      Width = 121
      Height = 21
      PopupMenu = Form16.PopupMenu1
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object LabeledEdit1: TLabeledEdit
      Left = 8
      Top = 246
      Width = 121
      Height = 21
      EditLabel.Width = 30
      EditLabel.Height = 13
      EditLabel.Caption = #1048#1090#1086#1075#1086
      Enabled = False
      TabOrder = 1
    end
    object ComboBox2: TComboBox
      Left = 8
      Top = 188
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      Items.Strings = (
        'Dollar'
        'Euro'
        'Ruble'
        'British Pound Sterling')
    end
    object ComboBox1: TComboBox
      Left = 8
      Top = 124
      Width = 145
      Height = 21
      DropDownCount = 4
      ItemHeight = 13
      TabOrder = 3
      Items.Strings = (
        'Bitecoin'
        'Litecoin'
        'Dogecoin'
        'Etherium')
    end
    object BitBtn1: TBitBtn
      Left = 184
      Top = 236
      Width = 89
      Height = 25
      Caption = #1056#1072#1089#1095#1080#1090#1072#1090#1100
      TabOrder = 4
      OnClick = BitBtn1Click
      Kind = bkAll
    end
    object Button1: TButton
      Left = 160
      Top = 264
      Width = 113
      Height = 25
      Caption = #1055#1088#1086#1076#1086#1083#1078#1080#1090#1100' '#1088#1072#1073#1086#1090#1091
      TabOrder = 5
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 328
      Top = 80
      Width = 33
      Height = 33
      Caption = '1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 368
      Top = 80
      Width = 33
      Height = 33
      Caption = '2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 408
      Top = 80
      Width = 33
      Height = 33
      Caption = '3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 328
      Top = 120
      Width = 33
      Height = 33
      Caption = '4'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 368
      Top = 120
      Width = 33
      Height = 33
      Caption = '5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnClick = Button6Click
    end
    object Button7: TButton
      Left = 408
      Top = 120
      Width = 33
      Height = 33
      Caption = '6'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnClick = Button7Click
    end
    object Button8: TButton
      Left = 328
      Top = 160
      Width = 33
      Height = 33
      Caption = '7'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      OnClick = Button8Click
    end
    object Button9: TButton
      Left = 368
      Top = 160
      Width = 33
      Height = 33
      Caption = '8'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      OnClick = Button9Click
    end
    object Button10: TButton
      Left = 408
      Top = 160
      Width = 33
      Height = 33
      Caption = '9'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      OnClick = Button10Click
    end
    object Edit2: TEdit
      Left = 328
      Top = 56
      Width = 193
      Height = 21
      Enabled = False
      TabOrder = 15
      Text = '0'
    end
    object Button11: TButton
      Left = 328
      Top = 200
      Width = 73
      Height = 33
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
      OnClick = Button11Click
    end
    object Button12: TButton
      Left = 448
      Top = 80
      Width = 33
      Height = 33
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
      OnClick = Button12Click
    end
    object Button13: TButton
      Left = 448
      Top = 120
      Width = 33
      Height = 33
      Caption = '/'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 18
      OnClick = Button13Click
    end
    object Button14: TButton
      Left = 448
      Top = 160
      Width = 33
      Height = 33
      Caption = '+'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 19
      OnClick = Button14Click
    end
    object Button15: TButton
      Left = 448
      Top = 200
      Width = 33
      Height = 33
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 20
      OnClick = Button15Click
    end
    object Button16: TButton
      Left = 488
      Top = 160
      Width = 33
      Height = 73
      Caption = '='
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 21
      OnClick = Button16Click
    end
    object Button17: TButton
      Left = 488
      Top = 80
      Width = 33
      Height = 33
      Caption = 'C'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 22
      OnClick = Button17Click
    end
    object Button18: TButton
      Left = 488
      Top = 120
      Width = 33
      Height = 33
      Caption = '+/-'
      TabOrder = 23
      OnClick = Button18Click
    end
    object Button19: TButton
      Left = 408
      Top = 200
      Width = 33
      Height = 33
      Caption = '.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 24
      OnClick = Button19Click
    end
  end
  object Timer1: TTimer
    Interval = 1
    OnTimer = Timer1Timer
    Left = 96
    Top = 280
  end
  object MainMenu1: TMainMenu
    Left = 40
    Top = 280
    object N1: TMenuItem
      Caption = #1050#1086#1083#1077#1073#1072#1085#1080#1103' '#1082#1091#1088#1089#1086#1074' '#1074#1072#1083#1102#1090
      OnClick = N1Click
    end
    object N3: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1082#1072
      OnClick = N3Click
    end
    object N4: TMenuItem
      Caption = #1055#1086#1083#1077#1079#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
      OnClick = N4Click
    end
    object N2: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N2Click
    end
  end
end
