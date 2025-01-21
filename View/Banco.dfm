object FBanco: TFBanco
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FBanco'
  ClientHeight = 406
  ClientWidth = 640
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
  TextHeight = 15
  object PnlCenter: TPanel
    Left = 2
    Top = 27
    Width = 636
    Height = 352
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Banco de dados'
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
      Width = 576
      Height = 200
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
        Width = 553
        Height = 21
        Margins.Left = 10
        Align = alTop
        Caption = 'Informa'#231#245'es de conex'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 187
      end
      object Label3: TLabel
        Left = 15
        Top = 58
        Width = 34
        Height = 21
        Caption = 'Tipo'
      end
      object Panel1: TPanel
        Left = 14
        Top = 569
        Width = 550
        Height = 5
        BevelOuter = bvNone
        Color = 9792256
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 6
      end
      object Panel2: TPanel
        Left = 14
        Top = 32
        Width = 550
        Height = 5
        BevelOuter = bvNone
        Color = 9792256
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 7
      end
      object edEndereco: TLabeledEdit
        Left = 158
        Top = 82
        Width = 121
        Height = 23
        EditLabel.Width = 94
        EditLabel.Height = 21
        EditLabel.Caption = 'Endere'#231'o (*)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Text = 'localhost'
        OnExit = edEnderecoExit
      end
      object edPorta: TLabeledEdit
        Left = 301
        Top = 82
        Width = 121
        Height = 23
        EditLabel.Width = 64
        EditLabel.Height = 21
        EditLabel.Caption = 'Porta (*)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        Text = '5432'
        OnExit = edPortaExit
      end
      object edBase: TLabeledEdit
        Left = 444
        Top = 82
        Width = 120
        Height = 23
        EditLabel.Width = 54
        EditLabel.Height = 21
        EditLabel.Caption = 'Base(*)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        Text = 'Intersite'
        OnExit = edBaseExit
      end
      object edUsuario: TLabeledEdit
        Left = 15
        Top = 138
        Width = 121
        Height = 23
        EditLabel.Width = 82
        EditLabel.Height = 21
        EditLabel.Caption = 'Usuario (*)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        Text = 'postgres'
        OnExit = edUsuarioExit
      end
      object edSenha: TLabeledEdit
        Left = 158
        Top = 138
        Width = 121
        Height = 23
        EditLabel.Width = 70
        EditLabel.Height = 21
        EditLabel.Caption = 'Senha (*)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        PasswordChar = '#'
        TabOrder = 5
        Text = ''
        OnExit = edSenhaExit
      end
      object cbTipo: TComboBox
        Left = 14
        Top = 82
        Width = 122
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Text = 'PG'
        Items.Strings = (
          'PG')
      end
    end
    object Panel3: TPanel
      AlignWithMargins = True
      Left = 30
      Top = 250
      Width = 576
      Height = 63
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
      TabOrder = 1
      object Button1: TButton
        Left = 165
        Top = 12
        Width = 250
        Height = 41
        Caption = 'Confirmar'
        TabOrder = 0
        OnClick = Button1Click
      end
    end
  end
  object pnlHeader: TPanel
    Left = 2
    Top = 2
    Width = 636
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    Caption = 'pnlHeader'
    Color = 9792256
    ParentBackground = False
    ShowCaption = False
    TabOrder = 1
    object SkSvg1: TSkSvg
      Left = 611
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
    Top = 379
    Width = 636
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
