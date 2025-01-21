unit Entidade;

interface

uses Enums, Endereco, System.StrUtils, System.SysUtils;

type TEntidade = class
  public
    Categoria:String;
    Nome:String;
    Email:String;
    Telefone:String;
    RG:String;
    CPF:String;
    DtNasc:String;
    Endereco:TEndereco;
    procedure Save;
    procedure Edit(Id:String);
    constructor Create;
    destructor Destroy; override;
end;

implementation

uses SQL;

{ TEntidade }

constructor TEntidade.Create;
begin
  Self.Categoria:='';
  Self.Nome:='';
  Self.Email:='';
  Self.Telefone:='';
  Self.RG:='';
  Self.CPF:='';
  Self.DtNasc:='';
  Self.Endereco:=TEndereco.Create;
  inherited;
end;

destructor TEntidade.Destroy;
begin
  Self.Endereco.Free;
  inherited;
end;

procedure TEntidade.Edit(Id:String);
var Colunas,Valores:String;
begin
  Valores:='ent_categoria='+QuotedStr(Self.Categoria)+',';
  Valores:=Valores+'ent_nome='+QuotedStr(Self.Nome)+',';
  Valores:=Valores+'ent_email='+QuotedStr(Self.Email)+',';
  Valores:=Valores+'ent_telefone='+QuotedStr(Self.Telefone)+',';
  Valores:=Valores+'ent_rg='+QuotedStr(Self.RG)+',';
  Valores:=Valores+'ent_cpf='+QuotedStr(Self.CPF)+',';
  Valores:=Valores+'ent_dtnasc='+QuotedStr(Self.DtNasc);
  TSQLInter.Update('Entidades',Valores,'WHERE ent_id='+QuotedStr(Id));
end;

procedure TEntidade.Save;
var Colunas,Valores:String;
begin
  Colunas:='ent_categoria, ent_nome, ent_email, ent_telefone, ent_rg, ent_cpf, ent_dtnasc';
  Valores:=QuotedStr(Self.Categoria)+','+QuotedStr(Self.Nome)+','+QuotedStr(Self.Email)+','+QuotedStr(Self.Telefone)+','+QuotedStr(Self.RG)+','+QuotedStr(Self.CPF)+','+QuotedStr(Self.DtNasc);
  TSQLInter.Insert('Entidades',Colunas,Valores);
  Self.Endereco.Save;
end;

end.
