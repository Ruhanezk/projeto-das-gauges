object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 620
  ClientWidth = 839
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Gauge4: TGauge
    Left = 32
    Top = 104
    Width = 65
    Height = 477
    BorderStyle = bsNone
    Color = clBtnFace
    Kind = gkVerticalBar
    MaxValue = 10000000
    ParentColor = False
    Progress = 0
    ShowText = False
  end
  object SpeedButton1: TSpeedButton
    Left = 264
    Top = 216
    Width = 233
    Height = 57
    Caption = 'Clockwise Gauge'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 264
    Top = 304
    Width = 233
    Height = 57
    Caption = 'Anticlockwise Gauge'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton2Click
  end
  object Gauge1: TGauge
    Left = 32
    Top = 40
    Width = 705
    Height = 65
    BorderStyle = bsNone
    MaxValue = 10000000
    Progress = 0
    ShowText = False
  end
  object Gauge3: TGauge
    Left = 96
    Top = 516
    Width = 705
    Height = 65
    BackColor = clBlack
    BorderStyle = bsNone
    ForeColor = clWhite
    MaxValue = 10000000
    Progress = 10000000
    ShowText = False
  end
  object Gauge2: TGauge
    Left = 736
    Top = 40
    Width = 65
    Height = 481
    BackColor = clBlack
    BorderStyle = bsNone
    Color = clBtnFace
    ForeColor = clWhite
    Kind = gkVerticalBar
    MaxValue = 10000000
    ParentColor = False
    Progress = 10000000
    ShowText = False
  end
  object SEdit1: TSpinEdit
    Left = 560
    Top = 280
    Width = 41
    Height = 22
    MaxValue = 2147483647
    MinValue = 0
    TabOrder = 0
    Value = 1
  end
end
