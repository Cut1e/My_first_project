object Form23: TForm23
  Left = 243
  Top = 118
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsNone
  Caption = #1054#1073#1097#1072#1103' '#1076#1080#1072#1075#1088#1072#1084#1084#1072
  ClientHeight = 441
  ClientWidth = 912
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 377
    Align = alTop
    TabOrder = 0
    object DBChart1: TDBChart
      Left = 1
      Top = 1
      Width = 910
      Height = 375
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Title.Text.Strings = (
        #1050#1091#1088#1089' '#1082#1088#1080#1087#1090#1086#1074#1072#1083#1102#1090' '#1087#1086' '#1086#1090#1085#1086#1096#1077#1085#1080#1102' '#1085#1072' 28.03.2018')
      BottomAxis.AxisValuesFormat = 'dd.MM.yyyy'
      BottomAxis.DateTimeFormat = 'dd.MM.yyyy'
      BottomAxis.LabelsSeparation = 1
      LeftAxis.LabelStyle = talValue
      LeftAxis.Title.Caption = #1055#1086' '#1086#1090#1085#1086#1096#1077#1085#1080#1102' '#1082' '#1076#1086#1083#1083#1072#1088#1091
      Legend.LegendStyle = lsSeries
      Align = alClient
      TabOrder = 0
      object CheckBox1: TCheckBox
        Left = 800
        Top = 136
        Width = 97
        Height = 17
        Caption = 'CheckBox1'
        TabOrder = 0
        Visible = False
      end
      object Series2: TBarSeries
        Marks.ArrowLength = 8
        Marks.Style = smsValue
        Marks.Visible = True
        DataSource = ADOTable1
        SeriesColor = clGreen
        Title = 'BiteCoin'
        XLabelsSource = #1044#1072#1090#1072
        BarBrush.Color = -1
        MultiBar = mbNone
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        XValues.ValueSource = #1044#1072#1090#1072
        YValues.DateTime = False
        YValues.Name = 'Bar'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
        YValues.ValueSource = 'BiteCoin'
      end
      object Series4: TBarSeries
        Marks.ArrowLength = 15
        Marks.Style = smsValue
        Marks.Visible = True
        DataSource = ADOTable4
        SeriesColor = clBlue
        Title = 'Etheteum'
        XLabelsSource = 'Ethereum'
        MultiBar = mbNone
        XValues.DateTime = True
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        XValues.ValueSource = #1044#1072#1090#1072
        YValues.DateTime = True
        YValues.Name = 'Bar'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
        YValues.ValueSource = 'Ethereum'
      end
      object Series1: TBarSeries
        Marks.ArrowLength = 10
        Marks.Style = smsValue
        Marks.Visible = True
        DataSource = ADOTable2
        SeriesColor = clRed
        Title = 'LiteCoin'
        XLabelsSource = #1044#1072#1090#1072
        MultiBar = mbNone
        XValues.DateTime = True
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        XValues.ValueSource = #1044#1072#1090#1072
        YValues.DateTime = False
        YValues.Name = 'Bar'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
        YValues.ValueSource = 'LiteCoin'
      end
      object Series3: TBarSeries
        Marks.ArrowLength = 3
        Marks.Visible = True
        DataSource = ADOTable3
        SeriesColor = clYellow
        Title = 'DogeCoin'
        XLabelsSource = 'DogeCoin'
        MultiBar = mbNone
        XValues.DateTime = True
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        XValues.ValueSource = #1044#1072#1090#1072
        YValues.DateTime = False
        YValues.Name = 'Bar'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
        YValues.ValueSource = 'DogeCoin'
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 377
    Width = 912
    Height = 64
    Align = alClient
    TabOrder = 1
    object Button1: TButton
      Left = 832
      Top = 32
      Width = 75
      Height = 25
      Caption = #1053#1072#1079#1072#1076
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object con1: TADOConnection
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 56
    Top = 24
  end
  object DataSource1: TDataSource
    Left = 241
    Top = 1
  end
  object ADOTable1: TADOTable
    Connection = con1
    CursorType = ctStatic
    TableName = #1050#1091#1088#1089' '#1041#1080#1090
    Left = 161
    Top = 9
  end
  object ADOTable2: TADOTable
    Connection = con1
    CursorType = ctStatic
    TableName = #1050#1091#1088#1089' '#1051#1080#1090
    Left = 201
    Top = 1
  end
  object ADOTable3: TADOTable
    Connection = con1
    CursorType = ctStatic
    TableName = #1050#1091#1088#1089' '#1044#1086#1075
    Left = 121
    Top = 9
  end
  object ADOTable4: TADOTable
    Connection = con1
    CursorType = ctStatic
    TableName = #1050#1091#1088#1089' '#1101#1092#1080#1088
    Left = 25
    Top = 65
  end
end
