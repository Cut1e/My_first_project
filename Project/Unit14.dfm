object Form14: TForm14
  Left = 430
  Top = 287
  Width = 513
  Height = 106
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #1054#1090#1082#1088#1099#1090#1100' '#1041#1072#1079#1091' '#1076#1072#1085#1085#1099#1093' '#1055#1088#1086#1094#1077#1089#1089#1086#1088#1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 150
    Height = 19
    Caption = #1055#1091#1090#1100' '#1082' '#1073#1072#1079#1077' '#1076#1072#1085#1085#1099#1093':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 160
    Top = 8
    Width = 225
    Height = 21
    Enabled = False
    TabOrder = 0
  end
  object Button1: TButton
    Left = 392
    Top = 8
    Width = 89
    Height = 25
    Caption = #1054#1073#1079#1086#1088
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 392
    Top = 40
    Width = 89
    Height = 25
    Caption = #1054#1090#1082#1088#1099#1090#1100' '#1041#1044
    TabOrder = 2
    OnClick = Button2Click
  end
  object OpenDialog1: TOpenDialog
    FileName = '*.mdb'
    Left = 32
    Top = 40
  end
end
