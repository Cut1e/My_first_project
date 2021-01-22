object Form9: TForm9
  Left = 218
  Top = 202
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsNone
  Caption = #1044#1080#1072#1075#1088#1072#1084#1084#1072' LiteCoin'
  ClientHeight = 441
  ClientWidth = 912
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
  object Panel1: TPanel
    Left = 0
    Top = 400
    Width = 912
    Height = 41
    Align = alBottom
    TabOrder = 0
    object Button1: TButton
      Left = 832
      Top = 8
      Width = 75
      Height = 25
      Caption = #1053#1072#1079#1072#1076
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object DBChart1: TDBChart
    Left = 0
    Top = 0
    Width = 912
    Height = 400
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      #1050#1091#1088#1089' '#1083#1080#1090#1077#1082#1086#1081#1085#1072' '#1087#1086' '#1086#1090#1085#1086#1096#1077#1085#1080#1102' '#1085#1072' 28.03.2018')
    LeftAxis.Title.Caption = #1055#1086' '#1086#1090#1085#1086#1096#1077#1085#1080#1102' '#1082' '#1076#1086#1083#1083#1072#1088#1091
    Legend.LegendStyle = lsSeries
    Align = alClient
    TabOrder = 1
    object CheckBox1: TCheckBox
      Left = 800
      Top = 136
      Width = 97
      Height = 17
      Caption = 'CheckBox1'
      TabOrder = 0
      Visible = False
    end
    object Series1: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      DataSource = ADOTable1
      SeriesColor = clRed
      Title = 'LiteCoin'
      XLabelsSource = #1044#1072#1090#1072
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = True
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      XValues.ValueSource = #1044#1072#1090#1072
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
      YValues.ValueSource = 'LiteCoin'
    end
  end
  object ADOTable1: TADOTable
    Connection = con1
    CursorType = ctStatic
    TableName = #1050#1091#1088#1089' '#1051#1080#1090
    Left = 192
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 216
    Top = 16
  end
  object con1: TADOConnection
    LoginPrompt = False
    Left = 632
    Top = 16
  end
end
