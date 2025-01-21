object FEntidades: TFEntidades
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsNone
  Caption = 'Gerenciamento de Usu'#225'rios'
  ClientHeight = 300
  ClientWidth = 680
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
  OnKeyDown = FormKeyDown
  TextHeight = 15
  object PnlCenter: TPanel
    Left = 2
    Top = 27
    Width = 676
    Height = 271
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Selecione um op'#231#227'o'
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
    object pnlLeft: TPanel
      Left = 30
      Top = 30
      Width = 300
      Height = 211
      Cursor = crHandPoint
      Align = alLeft
      BevelOuter = bvNone
      Color = clGradientInactiveCaption
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      ParentBackground = False
      TabOrder = 0
      OnClick = pnlLeftClick
      object pnlLeftCenter: TPanel
        AlignWithMargins = True
        Left = 15
        Top = 56
        Width = 270
        Height = 140
        Cursor = crHandPoint
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Adicionar'
        Color = clGradientInactiveCaption
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        ShowCaption = False
        TabOrder = 0
        OnClick = pnlLeftClick
        object SvgAdicionar: TSkSvg
          Left = 0
          Top = 0
          Width = 270
          Height = 140
          Cursor = crHandPoint
          Align = alClient
          OnClick = pnlLeftClick
          Svg.Source = 
            '<?xml version="1.0" encoding="iso-8859-1"?><!-- Generator: Adobe' +
            ' Illustrator 19.2.1, SVG Export Plug-In . SVG Version: 6.00 Buil' +
            'd 0)  --><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="ht' +
            'tp://www.w3.org/1999/xlink" version="1.1" id="Layer_1" x="0px" y' +
            '="0px" viewBox="0 0 80 80" style="enable-background:new 0 0 80 8' +
            '0;" xml:space="preserve" width="80" height="80">'#13#10'<g>'#13#10#9'<path st' +
            'yle="fill:#C2E8FF;" d="M4.506,73C4.778,61.375,14.54,52,26.5,52h1' +
            '5c11.96,0,21.722,9.375,21.994,21H4.506z"/>'#13#10#9'<g>'#13#10#9#9'<path style=' +
            '"fill:#7496C4;" d="M41.5,52.5c11.512,0,20.94,8.883,21.476,20l-57' +
            '.952,0c0.536-11.117,9.964-20,21.476-20H41.5     M41.5,51.5h-15C1' +
            '4.074,51.5,4,61.35,4,73.5v0h60v0C64,61.35,53.926,51.5,41.5,51.5L' +
            '41.5,51.5z"/>'#13#10#9'</g>'#13#10'</g>'#13#10'<g>'#13#10#9'<path style="fill:#E8D47B;" d=' +
            '"M34,59c-6.685,0-9.192-5.859-9.5-6.648V40.819h19v11.533C43.192,5' +
            '3.141,40.685,59,34,59z"/>'#13#10#9'<path style="fill:#BA9B48;" d="M43,4' +
            '1.319v10.936c-0.407,0.994-2.849,6.245-9,6.245c-6.154,0-8.596-5.2' +
            '57-9-6.245V41.319H43    M44,40.319H24v12.124c0,0,2.534,7.057,10,' +
            '7.057s10-7.057,10-7.057V40.319L44,40.319z"/>'#13#10'</g>'#13#10'<g>'#13#10#9'<g>'#13#10#9 +
            #9'<path style="fill:#E8D47B;" d="M46.857,37.286c-2.561,0-4.644-2.' +
            '083-4.644-4.643S44.297,28,46.857,28    c3.298,0,4.643,0.849,4.64' +
            '3,2.929C51.5,33.439,49.42,37.286,46.857,37.286z M21.143,37.286c-' +
            '2.562,0-4.643-3.847-4.643-6.357    c0-2.08,1.345-2.929,4.643-2.9' +
            '29c2.561,0,4.644,2.083,4.644,4.643S23.703,37.286,21.143,37.286z"' +
            '/>'#13#10#9'</g>'#13#10#9'<g>'#13#10#9#9'<path style="fill:#BA9B48;" d="M46.857,28.5c3' +
            '.45,0,4.143,0.929,4.143,2.429c0,2.503-2.048,5.857-4.143,5.857   ' +
            ' c-2.284,0-4.143-1.858-4.143-4.143C42.714,30.358,44.573,28.5,46.' +
            '857,28.5 M21.143,28.5c2.284,0,4.143,1.858,4.143,4.143    c0,2.28' +
            '4-1.858,4.143-4.143,4.143c-2.095,0-4.143-3.354-4.143-5.857C17,29' +
            '.429,17.693,28.5,21.143,28.5 M46.857,27.5    c-2.84,0-5.143,2.30' +
            '2-5.143,5.143s2.303,5.143,5.143,5.143c2.84,0,5.143-4.017,5.143-6' +
            '.857C52,28.088,49.697,27.5,46.857,27.5    L46.857,27.5z M21.143,' +
            '27.5c-2.84,0-5.143,0.588-5.143,3.429c0,2.84,2.303,6.857,5.143,6.' +
            '857c2.84,0,5.143-2.303,5.143-5.143    S23.983,27.5,21.143,27.5L2' +
            '1.143,27.5z"/>'#13#10#9'</g>'#13#10'</g>'#13#10'<g>'#13#10#9'<g>'#13#10#9#9'<path style="fill:#FFE' +
            'EA3;" d="M34,51c-1.3,0-2.534-0.498-3.477-1.403l-0.091-0.086l-0.1' +
            '19-0.034    C24.535,47.838,20.5,42.501,20.5,36.5V20.228c0-3.403,' +
            '2.769-6.172,6.172-6.172h14.656c3.403,0,6.172,2.769,6.172,6.172V3' +
            '6.5    c0,6.001-4.035,11.338-9.813,12.977l-0.119,0.034l-0.091,0.' +
            '086C36.534,50.502,35.3,51,34,51z"/>'#13#10#9'</g>'#13#10#9'<g>'#13#10#9#9'<path style=' +
            '"fill:#BA9B48;" d="M41.328,14.556c3.128,0,5.672,2.545,5.672,5.67' +
            '2V36.5c0,5.779-3.886,10.918-9.449,12.496    l-0.24,0.068l-0.18,0' +
            '.173C36.282,50.051,35.17,50.5,34,50.5s-2.282-0.449-3.131-1.263l-' +
            '0.18-0.173l-0.24-0.068    C24.886,47.418,21,42.279,21,36.5V20.22' +
            '8c0-3.128,2.545-5.672,5.672-5.672H41.328 M41.328,13.556H26.672  ' +
            '  c-3.685,0-6.672,2.987-6.672,6.672V36.5c0,6.405,4.306,11.793,10' +
            '.177,13.458C31.17,50.911,32.515,51.5,34,51.5    s2.83-0.589,3.82' +
            '3-1.542C43.694,48.293,48,42.905,48,36.5V20.228C48,16.543,45.013,' +
            '13.556,41.328,13.556L41.328,13.556z"/>'#13#10#9'</g>'#13#10'</g>'#13#10'<g>'#13#10#9'<path' +
            ' style="fill:#FFC49C;" d="M47.5,33v-8.5c0-6.66-5.292-8.458-5.346' +
            '-8.476l-0.326-0.106l-0.217,0.267   C41.564,16.243,36.814,22,30,2' +
            '2c-0.521,0-1.062-0.017-1.608-0.033c-0.569-0.017-1.146-0.035-1.71' +
            '1-0.035   c-2.006,0-6.181,0-6.181,4.568V33h-0.218c-0.7-1.192-3.7' +
            '82-6.755-3.782-12.348C16.5,10.848,23.696,4,34,4   c6.472,0,9.527' +
            ',5.675,9.557,5.732l0.119,0.226l0.253,0.037c5.166,0.74,7.571,4.39' +
            '6,7.571,11.505c0,5.077-3.073,10.359-3.776,11.5   H47.5z"/>'#13#10#9'<g>' +
            #13#10#9#9'<path style="fill:#A16A4A;" d="M34,4.5c6.155,0,8.997,5.242,9' +
            '.114,5.463l0.237,0.454l0.507,0.073C46.924,10.929,51,12.548,51,21' +
            '.5    c0,3.895-1.872,7.936-3,10.018V24.5c0-3.644-1.526-5.878-2.8' +
            '07-7.111c-1.4-1.347-2.824-1.821-2.884-1.84l-0.653-0.211    l-0.4' +
            '33,0.532c-0.046,0.056-4.658,5.63-11.224,5.63c-0.516,0-1.052-0.01' +
            '6-1.594-0.033c-0.574-0.017-1.155-0.035-1.725-0.035    c-1.999,0-' +
            '6.681,0-6.681,5.068v4.944c-1.132-2.203-3-6.489-3-10.792C17,11.14' +
            '2,23.991,4.5,34,4.5 M34,3.5    c-10.719,0-18,7.333-18,17.152c0,6' +
            '.504,4,12.848,4,12.848h1c0,0,0-5.211,0-7c0-3.582,2.701-4.068,5.6' +
            '81-4.068    c1.109,0,2.257,0.067,3.319,0.067c7.146,0,12-5.999,12' +
            '-5.999s5,1.626,5,8c0,1.968,0,9,0,9h1c0,0,4-6.073,4-12    c0-8.32' +
            '2-3.405-11.342-8-12C44,9.5,40.868,3.5,34,3.5L34,3.5z"/>'#13#10#9'</g>'#13#10 +
            '</g>'#13#10'<g>'#13#10#9'<path style="fill:#BAE0BD;" d="M62,80.5c-9.649,0-17.' +
            '5-7.851-17.5-17.5S52.351,45.5,62,45.5S79.5,53.351,79.5,63   S71.' +
            '649,80.5,62,80.5z"/>'#13#10#9'<g>'#13#10#9#9'<path style="fill:#5E9C76;" d="M62' +
            ',46c9.374,0,17,7.626,17,17s-7.626,17-17,17s-17-7.626-17-17S52.62' +
            '6,46,62,46 M62,45    c-9.941,0-18,8.059-18,18s8.059,18,18,18s18-' +
            '8.059,18-18S71.941,45,62,45L62,45z"/>'#13#10#9'</g>'#13#10'</g>'#13#10'<line style=' +
            '"fill:none;stroke:#FFFFFF;stroke-width:4;stroke-miterlimit:10;" ' +
            'x1="62" y1="73.001" x2="62" y2="53.001"/>'#13#10'<line style="fill:non' +
            'e;stroke:#FFFFFF;stroke-width:4;stroke-miterlimit:10;" x1="52" y' +
            '1="63.001" x2="72" y2="63.001"/>'#13#10'</svg>'
          ExplicitLeft = 128
          ExplicitTop = 72
          ExplicitWidth = 50
          ExplicitHeight = 50
        end
      end
      object Panel1: TPanel
        Left = 5
        Top = 5
        Width = 290
        Height = 41
        Cursor = crHandPoint
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Adicionar'
        Color = 9792256
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        ShowCaption = False
        TabOrder = 1
        OnClick = pnlLeftClick
        object Label1: TLabel
          AlignWithMargins = True
          Left = 10
          Top = 10
          Width = 270
          Height = 21
          Cursor = crHandPoint
          Margins.Left = 10
          Margins.Top = 10
          Margins.Right = 10
          Margins.Bottom = 10
          Align = alClient
          Alignment = taCenter
          Caption = 'Adicionar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = pnlLeftClick
          ExplicitWidth = 74
        end
      end
    end
    object pnlRight: TPanel
      Left = 346
      Top = 30
      Width = 300
      Height = 211
      Cursor = crHandPoint
      Align = alRight
      BevelOuter = bvNone
      Color = clGradientInactiveCaption
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      ParentBackground = False
      TabOrder = 1
      object pnlRightCaption: TPanel
        Left = 5
        Top = 5
        Width = 290
        Height = 41
        Cursor = crHandPoint
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Adicionar'
        Color = 9792256
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        ShowCaption = False
        TabOrder = 0
        object lbRightCaption: TLabel
          AlignWithMargins = True
          Left = 10
          Top = 10
          Width = 270
          Height = 21
          Cursor = crHandPoint
          Margins.Left = 10
          Margins.Top = 10
          Margins.Right = 10
          Margins.Bottom = 10
          Align = alClient
          Alignment = taCenter
          Caption = 'Listar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 41
        end
      end
      object pnlRightCenter: TPanel
        AlignWithMargins = True
        Left = 15
        Top = 56
        Width = 270
        Height = 140
        Cursor = crHandPoint
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Adicionar'
        Color = clGradientInactiveCaption
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        ShowCaption = False
        TabOrder = 1
        object SvgListar: TSkSvg
          Left = 0
          Top = 0
          Width = 270
          Height = 140
          Cursor = crHandPoint
          Align = alClient
          OnClick = SvgListarClick
          Svg.Source = 
            '<?xml version="1.0" ?><!DOCTYPE svg  PUBLIC '#39'-//W3C//DTD SVG 1.1' +
            '//EN'#39'  '#39'http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd'#39'><svg e' +
            'nable-background="new 0 0 48 48" height="48px" id="_x3C_Layer_x3' +
            'E_" version="1.1" viewBox="0 0 48 48" width="48px" xml:space="pr' +
            'eserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://w' +
            'ww.w3.org/1999/xlink"><g id="result_x2C__clipboard_x2C__check_ma' +
            'rk"><path d="M40.5,45.5h-33c-0.553,0-1-0.448-1-1v-38c0-0.552,0.4' +
            '47-1,1-1h33c0.553,0,1,0.448,1,1v38   C41.5,45.052,41.053,45.5,40' +
            '.5,45.5z" fill="#8C9EFF" id="XMLID_206_"/><path d="M40.5,46h-33C' +
            '6.673,46,6,45.327,6,44.5v-38C6,5.673,6.673,5,7.5,5h7.042c0.276,0' +
            ',0.5,0.224,0.5,0.5   S14.818,6,14.542,6H7.5C7.224,6,7,6.224,7,6.' +
            '5v38C7,44.776,7.224,45,7.5,45h33c0.276,0,0.5-0.224,0.5-0.5v-38  ' +
            ' C41,6.224,40.776,6,40.5,6h-6.957c-0.276,0-0.5-0.224-0.5-0.5s0.2' +
            '24-0.5,0.5-0.5H40.5C41.327,5,42,5.673,42,6.5v38   C42,45.327,41.' +
            '327,46,40.5,46z" fill="#0277BD"/><path d="M32.319,42.5H10c-0.276' +
            ',0-0.5-0.224-0.5-0.5V8c0-0.276,0.224-0.5,0.5-0.5h28   c0.276,0,0' +
            '.5,0.224,0.5,0.5v29.266c0,0.148-0.066,0.289-0.18,0.384l-5.681,4.' +
            '734C32.55,42.459,32.437,42.5,32.319,42.5z" fill="#F5F5F5" id="XM' +
            'LID_163_"/><path d="M32.675,42H10V8h4.5C14.776,8,15,8.224,15,8.5' +
            'S14.776,9,14.5,9H11v32h21.325L37,37.26V9h-3.5   C33.224,9,33,8.7' +
            '76,33,8.5S33.224,8,33.5,8H38v29.741L32.675,42z" fill="#FFFFFF"/>' +
            '<path d="M32.319,43H10c-0.551,0-1-0.449-1-1V8c0-0.551,0.449-1,1-' +
            '1h4.5C14.776,7,15,7.224,15,7.5S14.776,8,14.5,8   H10v34h22.319L3' +
            '8,37.266V8h-4.5C33.224,8,33,7.776,33,7.5S33.224,7,33.5,7H38c0.55' +
            '1,0,1,0.449,1,1v29.266   c0,0.296-0.13,0.576-0.358,0.767l-5.682,' +
            '4.735C32.78,42.918,32.553,43,32.319,43z" fill="#0277BD"/><path d' +
            '="M7.5,43C7.224,43,7,42.776,7,42.5v-34C7,8.224,7.224,8,7.5,8S8,8' +
            '.224,8,8.5v34C8,42.776,7.776,43,7.5,43z" fill="#E8EAF6"/><g><pat' +
            'h d="M32.5,42.073V38c0-0.276,0.224-0.5,0.5-0.5h4.947c0.188,0,0.2' +
            '72,0.234,0.128,0.354    l-5.247,4.373C32.698,42.335,32.5,42.243,' +
            '32.5,42.073z" fill="#EEEEEE" id="XMLID_10_"/><path d="M32.702,42' +
            '.774c-0.101,0-0.203-0.022-0.299-0.067C32.154,42.59,32,42.348,32,' +
            '42.073V38    c0-0.551,0.449-1,1-1h4.947c0.299,0,0.558,0.182,0.65' +
            '9,0.463c0.101,0.281,0.018,0.585-0.212,0.776l-5.246,4.372    C33.' +
            '019,42.718,32.862,42.774,32.702,42.774z M33,38v3.433L37.119,38H3' +
            '3z" fill="#0277BD"/></g><g><path d="M26.831,4.5c-0.413-1.163-1.5' +
            '12-2-2.816-2c-1.304,0-2.402,0.837-2.815,2h-4.185    c-0.275,0-0.' +
            '5,0.224-0.5,0.5v4c0,0.276,0.225,0.5,0.5,0.5h14c0.276,0,0.5-0.224' +
            ',0.5-0.5V5c0-0.276-0.224-0.5-0.5-0.5H26.831z" fill="#EEEEEE" id=' +
            '"XMLID_5_"/><path d="M31.015,10h-14c-0.551,0-1-0.449-1-1V5c0-0.5' +
            '51,0.449-1,1-1h3.851c0.575-1.209,1.799-2,3.149-2    c1.351,0,2.5' +
            '75,0.791,3.15,2h3.85c0.551,0,1,0.449,1,1v4C32.015,9.551,31.566,1' +
            '0,31.015,10z M17.015,5v4h14V5h-4.184    c-0.211,0-0.4-0.133-0.47' +
            '1-0.333C26.005,3.67,25.063,3,24.015,3c-1.048,0-1.99,0.67-2.344,1' +
            '.667C21.6,4.867,21.411,5,21.199,5    H17.015z" fill="#0277BD"/><' +
            '/g><path d="M17.515,8c-0.276,0-0.5-0.224-0.5-0.5V5h4.184c0.211,0' +
            ',0.401-0.133,0.471-0.333   C22.024,3.67,22.967,3,24.015,3c0.276,' +
            '0,0.5,0.224,0.5,0.5S24.291,4,24.015,4c-0.625,0-1.189,0.403-1.403' +
            ',1.002   C22.4,5.599,21.832,6,21.198,6h-3.184v1.5C18.015,7.776,1' +
            '7.791,8,17.515,8z" fill="#FFFFFF"/><g><path d="M18.5,35h-4c-0.27' +
            '6,0-0.5-0.224-0.5-0.5v-4c0-0.276,0.224-0.5,0.5-0.5h4c0.276,0,0.5' +
            ',0.224,0.5,0.5v4    C19,34.776,18.776,35,18.5,35z M15,34h3v-3h-3' +
            'V34z" fill="#0277BD"/><path d="M18.5,27h-4c-0.276,0-0.5-0.224-0.' +
            '5-0.5v-4c0-0.276,0.224-0.5,0.5-0.5h4c0.276,0,0.5,0.224,0.5,0.5v4' +
            '    C19,26.776,18.776,27,18.5,27z M15,26h3v-3h-3V26z" fill="#027' +
            '7BD"/><path d="M18.5,19h-4c-0.276,0-0.5-0.224-0.5-0.5v-4c0-0.276' +
            ',0.224-0.5,0.5-0.5h4c0.276,0,0.5,0.224,0.5,0.5v4    C19,18.776,1' +
            '8.776,19,18.5,19z M15,18h3v-3h-3V18z" fill="#0277BD"/><path d="M' +
            '33.5,34h-12c-0.276,0-0.5-0.224-0.5-0.5s0.224-0.5,0.5-0.5h12c0.27' +
            '6,0,0.5,0.224,0.5,0.5    S33.776,34,33.5,34z" fill="#0277BD"/><p' +
            'ath d="M33.5,32h-12c-0.276,0-0.5-0.224-0.5-0.5s0.224-0.5,0.5-0.5' +
            'h12c0.276,0,0.5,0.224,0.5,0.5    S33.776,32,33.5,32z" fill="#027' +
            '7BD"/><path d="M33.5,26h-12c-0.276,0-0.5-0.224-0.5-0.5s0.224-0.5' +
            ',0.5-0.5h12c0.276,0,0.5,0.224,0.5,0.5    S33.776,26,33.5,26z" fi' +
            'll="#0277BD"/><path d="M33.5,24h-12c-0.276,0-0.5-0.224-0.5-0.5s0' +
            '.224-0.5,0.5-0.5h12c0.276,0,0.5,0.224,0.5,0.5    S33.776,24,33.5' +
            ',24z" fill="#0277BD"/><path d="M33.5,18h-12c-0.276,0-0.5-0.224-0' +
            '.5-0.5s0.224-0.5,0.5-0.5h12c0.276,0,0.5,0.224,0.5,0.5    S33.776' +
            ',18,33.5,18z" fill="#0277BD"/><path d="M33.5,16h-12c-0.276,0-0.5' +
            '-0.224-0.5-0.5s0.224-0.5,0.5-0.5h12c0.276,0,0.5,0.224,0.5,0.5   ' +
            ' S33.776,16,33.5,16z" fill="#0277BD"/></g></g></svg>'
          ExplicitLeft = 128
          ExplicitTop = 72
          ExplicitWidth = 50
          ExplicitHeight = 50
        end
      end
    end
  end
  object pnlHeader: TPanel
    Left = 2
    Top = 2
    Width = 676
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    Caption = 'pnlHeader'
    Color = 9792256
    ParentBackground = False
    ShowCaption = False
    TabOrder = 1
    object SkSvg1: TSkSvg
      Left = 651
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
end
