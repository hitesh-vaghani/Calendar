object frmMain: TfrmMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #35430#39443#21839#38988
  ClientHeight = 266
  ClientWidth = 506
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -20
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 28
  object btnCaleDis: TButton
    Left = 112
    Top = 48
    Width = 300
    Height = 65
    Caption = #12459#12524#12531#12480#12540#34920#31034
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btnCaleDisClick
  end
  object btnCaleDisBackColor: TButton
    Left = 112
    Top = 128
    Width = 300
    Height = 65
    Caption = #12459#12524#12531#12480#12540#34920#31034#65288#32972#26223#33394#20184#65289
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnCaleDisBackColorClick
  end
end
