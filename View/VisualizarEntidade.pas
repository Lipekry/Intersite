unit VisualizarEntidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Skia, Vcl.Skia, Vcl.StdCtrls,
  Vcl.Mask, Vcl.ExtCtrls;

type
  TFVisualizarEntidade = class(TForm)
    PnlCenter: TPanel;
    pnlTop: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    edNome: TLabeledEdit;
    edEmail: TLabeledEdit;
    edTelefone: TLabeledEdit;
    edRg: TLabeledEdit;
    edCPF: TLabeledEdit;
    edNascimento: TLabeledEdit;
    cbCategoria: TComboBox;
    Panel3: TPanel;
    BtCadastrar: TButton;
    Panel6: TPanel;
    Label4: TLabel;
    Panel7: TPanel;
    Panel8: TPanel;
    edCEP: TLabeledEdit;
    edRua: TLabeledEdit;
    edComplemento: TLabeledEdit;
    edBairro: TLabeledEdit;
    edCidade: TLabeledEdit;
    edEstado: TLabeledEdit;
    edNumero: TLabeledEdit;
    pnlHeader: TPanel;
    SkSvg1: TSkSvg;
    PnlMessage: TPanel;
    Button1: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Inicializa(CodEntidade:Integer);
  end;

var
  FVisualizarEntidade: TFVisualizarEntidade;

implementation

{$R *.dfm}

{ TFVisualizarEntidade }

procedure TFVisualizarEntidade.Inicializa(CodEntidade: Integer);
begin

end;

end.
