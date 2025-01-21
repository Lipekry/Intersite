unit EntidadeController;

interface

uses Entidade, System.SysUtils, FireDAC.Comp.Client, SQL, Vcl.Dialogs, DataAccess;

type TEntidadeController = class
  private
    function CPFValido(Cpf:String):Boolean;
    function RGValido(RG:String):Boolean;
    function EmailValido(Email:String):Boolean;
  public
    procedure CriarEntidade(Categoria, Nome, CPF, RG, Email, Telefone, DataNasc, CEP, Estado, Cidade, Bairro, Rua, Numero, Complemento: String);
    function StatusBanco:Boolean;
    Constructor Create;
    Destructor Destroy;
end;

implementation

{ TEntidadeController }

constructor TEntidadeController.Create;
begin
  inherited;
end;

procedure TEntidadeController.CriarEntidade(Categoria, Nome, CPF, RG, Email, Telefone, DataNasc, CEP, Estado, Cidade, Bairro, Rua, Numero, Complemento: String);
var Entidade:TEntidade;
begin
  Entidade:=TEntidade.Create;
  try
    if (Self.RGValido(RG)) and (Self.CPFValido(CPF)) and (Self.EmailValido(Email)) then begin
      Entidade.Categoria:=Categoria;
      Entidade.Nome:=Nome;
      Entidade.CPF:=CPF;
      Entidade.RG:=RG;
      Entidade.Email:=Email;
      Entidade.Telefone:=Telefone;
      Entidade.DtNasc:=DataNasc;
      Entidade.Endereco.CEP:=CEP;
      Entidade.Endereco.Estado:=Estado;
      Entidade.Endereco.Cidade:=Cidade;
      Entidade.Endereco.Bairro:=Bairro;
      Entidade.Endereco.Rua:=Rua;
      Entidade.Endereco.Numero:=StrToInt(Numero);
      Entidade.Endereco.Complemento:=Complemento;
      Entidade.Save;
    end;
  finally
    Entidade.Free;
  end;
end;

destructor TEntidadeController.Destroy;
begin
  inherited;
end;

function TEntidadeController.EmailValido(Email: String): Boolean;
var Query:TFDQuery;
begin
  Query:=TSQLInter.Select('entidades', 'ent_email', 'WHERE ent_email='+QuotedStr(Email));
  Result:=Query.RecordCount=0;
  if not Result then ShowMessage('Email já está em uso');
  Query.Close;Query.Free;
end;

function TEntidadeController.RGValido(rg: String): Boolean;
var Query:TFDQuery;
begin
  Query:=TSQLInter.Select('entidades', 'ent_rg', 'WHERE ent_rg='+QuotedStr(rg));
  Result:=Query.RecordCount=0;
  if not Result then ShowMessage('RG já está em uso');
  Query.Close;Query.Free;
end;

function TEntidadeController.StatusBanco: Boolean;
begin
  Result:=DataAccess.FDataAccess.Conexao.Connected;
end;

function TEntidadeController.CPFValido(Cpf: String): Boolean;
var Query:TFDQuery;
begin
  Query:=TSQLInter.Select('entidades', 'ent_Cpf', 'WHERE ent_Cpf='+QuotedStr(Cpf));
  Result:=Query.RecordCount=0;
  if not Result then ShowMessage('CPF já está em uso');
  Query.Close;Query.Free;
end;

end.
