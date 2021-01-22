object Form1: TForm1
  Left = 505
  Top = 205
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1042#1072#1078#1085#1086
  ClientHeight = 212
  ClientWidth = 621
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
    Width = 621
    Height = 212
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 0
      Width = 464
      Height = 120
      Caption = 
        #1055#1077#1088#1077#1076' '#1088#1072#1073#1086#1090#1086#1081' '#1088#1077#1082#1091#1084#1077#1085#1076#1091#1102' '#1086#1079#1085#1072#1082#1086#1084#1080#1090#1100#1089#1103#13#10' '#1089' '#1074#1072#1078#1085#1086#1081' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1077#1081'.'#13#10#1058 +
        #1072#1082' '#1078#1077' '#1074#1099' '#1084#1086#1078#1077#1090#1077' '#1087#1086#1076#1082#1083#1102#1095#1080#1090#1100' '#1073#1072#1079#1099' '#1076#1072#1085#1085#1099#1093' '#13#10#1089#1077#1081#1095#1072#1089', '#1095#1090#1086' '#1073#1099' '#1074' '#1076#1072#1083#1100#1085#1077 +
        #1081#1096#1077#1084' '#1085#1077' '#1074#1099#1079#1074#1072#1083#1086' '#1085#1080#1082#1072#1082#1080#1093#13#10#1087#1088#1086#1073#1083#1077#1084'.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object StatusBar1: TStatusBar
      Left = 1
      Top = 153
      Width = 619
      Height = 58
      Panels = <
        item
          Text = #1055#1057' "'#1052#1072#1081#1085#1080#1085#1075' '#1082#1088#1080#1087#1090#1086#1074#1072#1083#1102#1090'"'
          Width = 175
        end
        item
          Text = #1056#1072#1079#1088#1072#1073#1086#1090#1072#1083' '#1041#1091#1094#1072#1077#1074' '#1042#1083#1072#1076#1080#1089#1083#1072#1074' '#1048#1075#1086#1088#1077#1074#1080#1095
          Width = 250
        end
        item
          Width = 50
        end>
    end
    object BitBtn4: TBitBtn
      Left = 472
      Top = 0
      Width = 145
      Height = 33
      Caption = #1042#1072#1078#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
      TabOrder = 1
      OnClick = BitBtn4Click
      Kind = bkIgnore
    end
    object CheckBox1: TCheckBox
      Left = 104
      Top = 112
      Width = 137
      Height = 25
      Caption = #1053#1072#1078#1080#1084#1072#1083#1080' '#1083#1080' '#1082#1085#1086#1087#1082#1091
      TabOrder = 2
      Visible = False
    end
    object Button1: TButton
      Left = 240
      Top = 128
      Width = 193
      Height = 25
      Caption = #1055#1086#1076#1082#1083#1102#1095#1080#1090#1100' '#1075#1083#1072#1074#1085#1091#1102' '#1073#1072#1079#1091' '#1076#1072#1085#1085#1099#1093' '
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 440
      Top = 128
      Width = 177
      Height = 25
      Caption = #1055#1086#1076#1082#1083#1102#1095#1080#1090#1100' '#1073#1072#1079#1091' '#1076#1080#1072#1075#1088#1072#1084#1084
      TabOrder = 4
      OnClick = Button2Click
    end
  end
  object MainMenu1: TMainMenu
    Left = 504
    Top = 72
    object N1: TMenuItem
      Caption = #1053#1072#1095#1072#1090#1100' '#1088#1072#1073#1086#1090#1091
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1082#1072
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N3Click
    end
  end
end
