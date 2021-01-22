object Form6: TForm6
  Left = 334
  Top = 228
  Width = 296
  Height = 123
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #1044#1080#1072#1075#1088#1072#1084#1084#1072
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 280
    Height = 64
    Align = alClient
    TabOrder = 0
    object Bevel1: TBevel
      Left = 192
      Top = 0
      Width = 18
      Height = 65
    end
    object Button1: TButton
      Left = 208
      Top = 40
      Width = 75
      Height = 25
      Caption = #1053#1072#1079#1072#1076
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 208
      Top = 0
      Width = 73
      Height = 25
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100
      TabOrder = 1
      OnClick = Button2Click
    end
    object ComboBox1: TComboBox
      Left = 32
      Top = 0
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      Items.Strings = (
        'BiteCoin'
        'LiteCoin'
        'DogeCoin'
        'Ethereum'
        #1054#1073#1097#1072#1103)
    end
  end
  object MainMenu1: TMainMenu
    Left = 56
    Top = 24
    object N1: TMenuItem
      Caption = #1055#1086#1076#1082#1083#1102#1095#1080#1090#1100' '#1073#1072#1079#1099' '#1076#1072#1085#1085#1099#1093
      OnClick = N1Click
    end
  end
end
