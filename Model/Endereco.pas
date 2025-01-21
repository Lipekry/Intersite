unit Endereco;

interface

type TEndereco = class
  public
    CEP:String;
    Estado:String;
    Cidade:String;
    Bairro:String;
    Rua:String;
    Numero:Integer;
    Complemento:String;
    constructor Create;
    destructor Destroy; override;
    procedure Save;
end;

implementation

uses SysUtils,SQL;

{ TEndereco }

constructor TEndereco.Create;
begin
  Self.CEP:='';
  Self.Estado:='';
  Self.Cidade:='';
  Self.Bairro:='';
  Self.Rua:='';
  Self.Numero:=0;
  Self.Complemento:='';
  inherited;
end;

destructor TEndereco.Destroy;
begin
  inherited;
end;

procedure TEndereco.Save;
var Colunas,Valores:String;
    LastID:String;
begin
  LastID:=TSQLInter.UltimoID('Entidades','ent_id').ToString;
  Colunas:='end_CEP, end_estado, end_cidade, end_bairro, end_rua, end_numero, end_complemento, end_ent_id';
  Valores:=QuotedStr(Self.CEP)+','+QuotedStr(Self.Estado)+','+QuotedStr(Self.Cidade)+','+QuotedStr(Self.Bairro)+','+QuotedStr(Self.Rua)+','+QuotedStr(IntToStr(Self.Numero))+','+QuotedStr(Self.Complemento+' ')+','+QuotedStr(LastID);
  TSQLInter.Insert('Endereco',Colunas,Valores);
end;

end.
