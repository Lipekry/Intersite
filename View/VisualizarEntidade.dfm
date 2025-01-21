object FVisualizarEntidade: TFVisualizarEntidade
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FVisualizarEntidade'
  ClientHeight = 590
  ClientWidth = 640
  Color = 9792256
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object PnlCenter: TPanel
    Left = 0
    Top = 25
    Width = 640
    Height = 540
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Perfil Entidade'
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
      Width = 580
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
        Width = 557
        Height = 21
        Margins.Left = 10
        Align = alTop
        Caption = 'Informa'#231#245'es Pessoais'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 163
      end
      object Label3: TLabel
        Left = 15
        Top = 58
        Width = 74
        Height = 21
        Caption = 'Categoria'
      end
      object Panel1: TPanel
        Left = 14
        Top = 569
        Width = 550
        Height = 5
        BevelOuter = bvNone
        Color = 9792256
        ParentBackground = False
        TabOrder = 7
      end
      object Panel2: TPanel
        Left = 14
        Top = 32
        Width = 550
        Height = 5
        BevelOuter = bvNone
        Color = 9792256
        ParentBackground = False
        TabOrder = 8
      end
      object edNome: TLabeledEdit
        Left = 158
        Top = 82
        Width = 121
        Height = 23
        EditLabel.Width = 70
        EditLabel.Height = 21
        EditLabel.Caption = 'Nome (*)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Text = ''
      end
      object edEmail: TLabeledEdit
        Left = 301
        Top = 82
        Width = 121
        Height = 23
        EditLabel.Width = 43
        EditLabel.Height = 21
        EditLabel.Caption = 'Email'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        Text = ''
      end
      object edTelefone: TLabeledEdit
        Left = 444
        Top = 82
        Width = 120
        Height = 23
        EditLabel.Width = 66
        EditLabel.Height = 21
        EditLabel.Caption = 'Telefone'
        EditMask = '(##) #####.####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        MaxLength = 15
        ParentFont = False
        TabOrder = 3
        Text = '(  )      .    '
      end
      object edRg: TLabeledEdit
        Left = 15
        Top = 138
        Width = 121
        Height = 23
        EditLabel.Width = 44
        EditLabel.Height = 21
        EditLabel.Caption = 'RG (*)'
        EditMask = '##.###.###.#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        MaxLength = 12
        ParentFont = False
        TabOrder = 4
        Text = '  .   .   . '
      end
      object edCPF: TLabeledEdit
        Left = 158
        Top = 138
        Width = 121
        Height = 23
        EditLabel.Width = 51
        EditLabel.Height = 21
        EditLabel.Caption = 'CPF (*)'
        EditMask = '###.###.###-##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        MaxLength = 14
        ParentFont = False
        TabOrder = 5
        Text = '   .   .   -  '
      end
      object edNascimento: TLabeledEdit
        Left = 301
        Top = 138
        Width = 121
        Height = 23
        EditLabel.Width = 127
        EditLabel.Height = 21
        EditLabel.Caption = 'Data de Nasc. (*)'
        EditMask = '##/##/####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentFont = False
        TabOrder = 6
        Text = '  /  /    '
      end
      object cbCategoria: TComboBox
        Left = 14
        Top = 82
        Width = 122
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ItemIndex = 0
        ParentFont = False
        TabOrder = 0
        Text = 'Cliente'
        Items.Strings = (
          'Cliente'
          'Fornecedor'
          'Transportador')
      end
    end
    object Panel3: TPanel
      AlignWithMargins = True
      Left = 30
      Top = 460
      Width = 580
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
      object BtCadastrar: TButton
        Left = 14
        Top = 12
        Width = 250
        Height = 41
        Caption = 'Atualizar'
        TabOrder = 0
      end
      object Button1: TButton
        Left = 314
        Top = 12
        Width = 250
        Height = 41
        Caption = 'Excluir'
        TabOrder = 1
      end
    end
    object Panel6: TPanel
      AlignWithMargins = True
      Left = 30
      Top = 250
      Width = 580
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
      TabOrder = 2
      object Label4: TLabel
        AlignWithMargins = True
        Left = 15
        Top = 8
        Width = 557
        Height = 21
        Margins.Left = 10
        Align = alTop
        Caption = 'Endere'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 71
      end
      object Panel7: TPanel
        Left = 14
        Top = 569
        Width = 550
        Height = 5
        BevelOuter = bvNone
        Color = 9792256
        ParentBackground = False
        TabOrder = 7
      end
      object Panel8: TPanel
        Left = 14
        Top = 32
        Width = 550
        Height = 5
        BevelOuter = bvNone
        Color = 9792256
        ParentBackground = False
        TabOrder = 8
      end
      object edCEP: TLabeledEdit
        Left = 15
        Top = 82
        Width = 121
        Height = 23
        EditLabel.Width = 52
        EditLabel.Height = 21
        EditLabel.Caption = 'CEP (*)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Text = ''
      end
      object edRua: TLabeledEdit
        Left = 15
        Top = 138
        Width = 121
        Height = 23
        EditLabel.Width = 52
        EditLabel.Height = 21
        EditLabel.Caption = 'Rua (*)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        Text = ''
      end
      object edComplemento: TLabeledEdit
        Left = 301
        Top = 138
        Width = 263
        Height = 23
        EditLabel.Width = 109
        EditLabel.Height = 21
        EditLabel.Caption = 'Complemento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        Text = ''
      end
      object edBairro: TLabeledEdit
        Left = 444
        Top = 82
        Width = 120
        Height = 23
        EditLabel.Width = 69
        EditLabel.Height = 21
        EditLabel.Caption = 'Bairro (*)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        Text = ''
      end
      object edCidade: TLabeledEdit
        Left = 301
        Top = 82
        Width = 121
        Height = 23
        EditLabel.Width = 76
        EditLabel.Height = 21
        EditLabel.Caption = 'Cidade (*)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        Text = ''
      end
      object edEstado: TLabeledEdit
        Left = 158
        Top = 82
        Width = 121
        Height = 23
        EditLabel.Width = 74
        EditLabel.Height = 21
        EditLabel.Caption = 'Estado (*)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Text = ''
      end
      object edNumero: TLabeledEdit
        Left = 158
        Top = 138
        Width = 121
        Height = 23
        EditLabel.Width = 86
        EditLabel.Height = 21
        EditLabel.Caption = 'N'#250'mero (*)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        Text = ''
      end
    end
  end
  object pnlHeader: TPanel
    Left = 0
    Top = 0
    Width = 640
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    Caption = 'pnlHeader'
    Color = 9792256
    ParentBackground = False
    ShowCaption = False
    TabOrder = 1
    object SkSvg1: TSkSvg
      Left = 615
      Top = 0
      Width = 25
      Height = 25
      Cursor = crHandPoint
      Align = alRight
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
    Left = 0
    Top = 565
    Width = 640
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
