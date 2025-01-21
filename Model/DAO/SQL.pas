unit SQL;

interface

uses FireDAC.Comp.Client, FireDAC.DApt.Column, FireDAC.DApt;

type TSQLInter = class
  private
    class function EstruturaSQL(SQL: String): TFDQuery;
  public
    class function Select(Tabelas, Colunas, Condicoes: String): TFDQuery;
    class procedure Insert(Tabela, Colunas, Valores: String);
    class procedure Update(Tabela, Alteracoes, Condicao: String);
    class function Existente(Colunas, Tabelas, Condicoes: String):Boolean;
    class function UltimoID(Tabela, Campo: String): Integer;
  end;

implementation

uses Vcl.Dialogs, System.SysUtils, System.Classes, DataAccess;

{ TSQLInter }

class procedure TSQLInter.Insert(Tabela, Colunas, Valores: String);
var QR:TFDQuery;
begin
  QR:=EstruturaSQL('INSERT INTO '+Tabela+' ('+Colunas+') VALUES ('+Valores+')');
  try
    QR.ExecSQL;
  finally
    QR.Free;
  end;
end;

class function TSQLInter.Select(Tabelas, Colunas, Condicoes: String): TFDQuery;
var QR:TFDQuery;
begin
  QR:=EstruturaSQL('SELECT '+Colunas+ ' FROM ' + Tabelas + ' ' + Condicoes);
  try
    QR.Open;
  finally
    Result:=QR;
  end;
end;

class procedure TSQLInter.Update(Tabela, Alteracoes, Condicao: String);
var QR:TFDQuery;
begin
  QR:=EstruturaSQL('UPDATE '+Tabela+' SET '+Alteracoes+ ' ' + Condicao +'');
  try
    QR.ExecSQL;
  finally
    QR.Free;
  end;
end;

class function TSQLInter.EstruturaSQL(SQL: String): TFDQuery;
var QR:TFDQuery;
begin
  QR:=TFDQuery.Create(nil);
  QR.Connection:=DataAccess.FDataAccess.Conexao;
  QR.SQL.Clear;
  QR.SQL.Add(SQL);
  Result:= QR;
end;

class function TSQLInter.Existente(Colunas, Tabelas, Condicoes: String): Boolean;
var
  QR: TFDQuery;
begin
  QR:= Select(Tabelas, Colunas, Condicoes);
  try
    result:= not QR.IsEmpty;
  finally
    QR.Free;
  end;
end;

class function TSQLInter.UltimoID(Tabela, Campo: String): Integer;
var
  QR: TFDQuery;
begin
  QR:= Select(Tabela, Campo, 'ORDER BY '+Campo+' DESC LIMIT 1');
  try
    result:= QR.FieldByName(Campo).AsInteger;
  finally
    QR.Free;
  end;
end;

{ TSQLInter }

end.
