unit CadastroEntidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Skia, Vcl.Skia, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask, REST.Types, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope, System.JSON, IdHTTP, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, REST.Response.Adapter;

type
  TFCadastroEntidades = class(TForm)
    PnlCenter: TPanel;
    pnlHeader: TPanel;
    SkSvg1: TSkSvg;
    pnlTop: TPanel;
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    edNome: TLabeledEdit;
    edEmail: TLabeledEdit;
    edTelefone: TLabeledEdit;
    edRg: TLabeledEdit;
    edCPF: TLabeledEdit;
    edNascimento: TLabeledEdit;
    PnlMessage: TPanel;
    cbCategoria: TComboBox;
    Label3: TLabel;
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
    BtCadastrar: TButton;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    FDMemTable1: TFDMemTable;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SkSvg1Click(Sender: TObject);
    procedure edNomeExit(Sender: TObject);
    procedure edRgExit(Sender: TObject);
    procedure edCPFExit(Sender: TObject);
    procedure edNascimentoExit(Sender: TObject);
    procedure edCEPExit(Sender: TObject);
    procedure edEstadoExit(Sender: TObject);
    procedure edCidadeExit(Sender: TObject);
    procedure edBairroExit(Sender: TObject);
    procedure edRuaExit(Sender: TObject);
    procedure edNumeroExit(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BtCadastrarClick(Sender: TObject);
    procedure edCEPChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ValidateEdit(Sender:TLabeledEdit);
    procedure ClearEdits(Form:TForm);
    procedure ConsultaCEP;
  end;

var
  FCadastroEntidades: TFCadastroEntidades;

implementation

{$R *.dfm}

uses EntidadeController;

procedure TFCadastroEntidades.edCidadeExit(Sender: TObject);
begin
  ValidateEdit(edCidade);
end;

procedure TFCadastroEntidades.edCPFExit(Sender: TObject);
begin
  ValidateEdit(edCPF);
end;

procedure TFCadastroEntidades.edEstadoExit(Sender: TObject);
begin
  ValidateEdit(edEstado);
end;

procedure TFCadastroEntidades.edNascimentoExit(Sender: TObject);
begin
  ValidateEdit(edNascimento);
end;

procedure TFCadastroEntidades.edNomeExit(Sender: TObject);
begin
  ValidateEdit(edNome);
end;

procedure TFCadastroEntidades.edNumeroExit(Sender: TObject);
begin
  ValidateEdit(edNumero);
end;

procedure TFCadastroEntidades.edRgExit(Sender: TObject);
begin
  ValidateEdit(edRg);
end;

procedure TFCadastroEntidades.edRuaExit(Sender: TObject);
begin
  ValidateEdit(edRua);
end;

procedure TFCadastroEntidades.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_ESCAPE then Self.Close;
end;

procedure TFCadastroEntidades.BtCadastrarClick(Sender: TObject);
var EntCont:TEntidadeController;
begin
  EntCont:=TEntidadeController.Create;
  Try
    EntCont.CriarEntidade(
      cbCategoria.Items[cbCategoria.ItemIndex],
      edNome.Text,
      edCPF.Text,
      edRg.Text,
      edEmail.Text,
      edTelefone.Text,
      edNascimento.EditText,
      edCEP.Text,
      edEstado.Text,
      edCidade.Text,
      edBairro.Text,
      edRua.Text,
      edNumero.Text,
      edComplemento.Text
    );
    ClearEdits(Self);
    ShowMessage('Entidade cadastrada com sucesso');
  Finally
    EntCont.Free;
  End;
end;

procedure TFCadastroEntidades.Button2Click(Sender: TObject);
begin
  ClearEdits(Self);
  Self.Close;
end;

procedure TFCadastroEntidades.ClearEdits(Form: TForm);
var I: Integer;
begin
  for I:=0 to Form.ComponentCount-1 do begin
    if Form.Components[I] is TLabeledEdit then begin
      TEdit(Form.Components[I]).Clear;
    end;
  end;
end;

procedure TFCadastroEntidades.ConsultaCEP;
var TempCep:string;
begin
  TempCep:=edCEP.Text;
  RESTRequest1.Resource:=TempCep + '/json';
  RESTRequest1.Execute;
  if RESTRequest1.Response.StatusCode=200 then begin
    if RESTRequest1.Response.Content.IndexOf('erro') > 0 then begin
        ShowMessage('CEP Não encontrado');
    end else begin
       with FDMemTable1 do begin
        edEstado.Text:=FieldByName('uf').AsString;
        edCidade.Text:=FieldByName('localidade').AsString;
        edBairro.Text:=FieldByName('bairro').AsString;
        edRua.Text:=FieldByName('logradouro').AsString;
        edNumero.SetFocus;
      end;
    end;
  end;
end;

procedure TFCadastroEntidades.ValidateEdit(Sender: TLabeledEdit);
begin
  if Sender.Text='' then begin
    ShowMessage('O campo "'+Sender.EditLabel.Caption+'" não pode ser vazio');
    Sender.SetFocus;
  end;
end;

procedure TFCadastroEntidades.edBairroExit(Sender: TObject);
begin
  ValidateEdit(edBairro);
end;

procedure TFCadastroEntidades.edCEPChange(Sender: TObject);
begin
  if Length(edCEP.Text)=8 then ConsultaCEP;
end;

procedure TFCadastroEntidades.edCEPExit(Sender: TObject);
begin
  ValidateEdit(edNome);
end;

procedure TFCadastroEntidades.SkSvg1Click(Sender: TObject);
begin
  Self.Close;
end;

end.
