object FListaEntidades: TFListaEntidades
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FListaEntidades'
  ClientHeight = 657
  ClientWidth = 1076
  Color = 9792256
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Padding.Left = 2
  Padding.Top = 2
  Padding.Right = 2
  Padding.Bottom = 2
  Position = poMainFormCenter
  OnShow = FormShow
  TextHeight = 15
  object PnlCenter: TPanel
    Left = 2
    Top = 27
    Width = 1072
    Height = 603
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Lista de entidades'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    Padding.Left = 30
    Padding.Top = 30
    Padding.Right = 30
    Padding.Bottom = 30
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    VerticalAlignment = taAlignTop
    object pnlTop: TPanel
      AlignWithMargins = True
      Left = 30
      Top = 40
      Width = 1012
      Height = 529
      Cursor = crHandPoint
      Margins.Left = 0
      Margins.Top = 10
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      BevelOuter = bvNone
      Color = clGradientInactiveCaption
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      ParentBackground = False
      TabOrder = 0
      object Label1: TLabel
        AlignWithMargins = True
        Left = 15
        Top = 8
        Width = 989
        Height = 21
        Margins.Left = 10
        Align = alTop
        Caption = 'Lista de entidades'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 137
      end
      object Panel1: TPanel
        Left = 14
        Top = 569
        Width = 550
        Height = 5
        BevelOuter = bvNone
        Color = 9792256
        ParentBackground = False
        TabOrder = 0
      end
      object Panel2: TPanel
        Left = 14
        Top = 29
        Width = 989
        Height = 5
        BevelOuter = bvNone
        Color = 9792256
        ParentBackground = False
        TabOrder = 1
      end
      object EntidadesGrid: TDBGrid
        Left = 14
        Top = 120
        Width = 989
        Height = 393
        DataSource = FDataAccess.DataSourceEntidades
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -16
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = [fsBold]
      end
      object edPesquisa: TLabeledEdit
        Left = 14
        Top = 85
        Width = 403
        Height = 29
        Hint = 'Pesquise por nome'
        EditLabel.Width = 73
        EditLabel.Height = 21
        EditLabel.Caption = 'Pesquisar'
        TabOrder = 3
        Text = ''
      end
    end
  end
  object pnlHeader: TPanel
    Left = 2
    Top = 2
    Width = 1072
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    Caption = 'pnlHeader'
    Color = 9792256
    ParentBackground = False
    ShowCaption = False
    TabOrder = 1
    object SkSvg1: TSkSvg
      Left = 1047
      Top = 0
      Width = 25
      Height = 25
      Cursor = crHandPoint
      Align = alRight
      OnClick = SkSvg1Click
      Svg.OverrideColor = claRed
      Svg.Source = 
        '<?xml version="1.0" ?><svg viewBox="0 0 32 32" xmlns="http://www' +
        '.w3.org/2000/svg"><defs><style>.cls-1{fill:none;stroke:#000;stro' +
        'ke-linecap:round;stroke-linejoin:round;stroke-width:2px;}</style' +
        '></defs><title/><g id="cross"><line class="cls-1" x1="7" x2="25"' +
        ' y1="7" y2="25"/><line class="cls-1" x1="7" x2="25" y1="25" y2="' +
        '7"/></g></svg>'
      ExplicitLeft = 0
    end
  end
  object PnlMessage: TPanel
    Left = 2
    Top = 630
    Width = 1072
    Height = 25
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'pnlHeader'
    Color = 9792256
    ParentBackground = False
    ShowCaption = False
    TabOrder = 2
  end
end
