unit Banco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Skia, Vcl.Skia, Vcl.StdCtrls,
  Vcl.Mask, Vcl.ExtCtrls;

type
  TFBanco = class(TForm)
    PnlCenter: TPanel;
    pnlTop: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    edEndereco: TLabeledEdit;
    edPorta: TLabeledEdit;
    edBase: TLabeledEdit;
    edUsuario: TLabeledEdit;
    edSenha: TLabeledEdit;
    Panel3: TPanel;
    Button1: TButton;
    pnlHeader: TPanel;
    SkSvg1: TSkSvg;
    PnlMessage: TPanel;
    cbTipo: TComboBox;
    procedure edEnderecoExit(Sender: TObject);
    procedure edPortaExit(Sender: TObject);
    procedure edBaseExit(Sender: TObject);
    procedure edUsuarioExit(Sender: TObject);
    procedure edSenhaExit(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SkSvg1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ValidateEdit(Sender:TLabeledEdit);
    procedure ClearEdits(Form:TForm);
  end;

var
  FBanco: TFBanco;

implementation

uses BancoController;

procedure TFBanco.ClearEdits(Form: TForm);
var I: Integer;
begin
  for I:=0 to Form.ComponentCount-1 do begin
    if Form.Components[I] is TEdit then begin
      TEdit(Form.Components[I]).Clear;
    end;
  end;
end;

procedure TFBanco.edPortaExit(Sender: TObject);
begin
  ValidateEdit(edPorta);
end;

procedure TFBanco.edSenhaExit(Sender: TObject);
begin
  ValidateEdit(edSenha);
end;

procedure TFBanco.edUsuarioExit(Sender: TObject);
begin
  ValidateEdit(edUsuario);
end;

procedure TFBanco.SkSvg1Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TFBanco.ValidateEdit(Sender: TLabeledEdit);
begin
  if Sender.Text='' then begin
    ShowMessage('O campo "'+Sender.EditLabel.Caption+'" não pode ser vazio');
    Sender.SetFocus;
  end;
end;

{$R *.dfm}

procedure TFBanco.Button1Click(Sender: TObject);
var BancoCont:TBancoController;
begin
  BancoCont:=TBancoController.Create;
  BancoCont.SaveConfiguration(
                              cbTipo.Text,
                              edEndereco.Text,
                              edPorta.Text,
                              edBase.Text,
                              edUsuario.Text,
                              edSenha.Text
                              );
  if BancoCont.GetStatus then Self.Close;
end;

procedure TFBanco.Button2Click(Sender: TObject);
begin
  cbTipo.setFocus;
  Self.Close;
end;

procedure TFBanco.edBaseExit(Sender: TObject);
begin
  ValidateEdit(edBase);
end;

procedure TFBanco.edEnderecoExit(Sender: TObject);
begin
  ValidateEdit(edEndereco);
end;

end.
