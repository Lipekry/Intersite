unit BancoController;

interface

uses Vcl.Dialogs;

type TBancoController = class
  class procedure SaveConfiguration(const DriverID, Server, Port, Database, UserName, Password: string);
  class function GetStatus:Boolean;
end;

implementation

uses DataAccess;

{ TBancoController }

class function TBancoController.GetStatus: Boolean;
begin
  Result:=FDataAccess.Conexao.Connected;
end;

class procedure TBancoController.SaveConfiguration(const DriverID, Server, Port, Database, UserName, Password: string);
var FullFilePath: string;
begin
  FDataAccess.Conexao.DriverName:=DriverID;
  FDataAccess.Conexao.Params.Database:=Database;
  FDataAccess.Conexao.Params.UserName:=UserName;
  FDataAccess.Conexao.Params.Password:=Password;
  FDataAccess.Conexao.Params.Add('Server='+Server);
  FDataAccess.Conexao.Params.Add('Port='+Port);
  FDataAccess.Conexao.LoginPrompt:=False;
  FDataAccess.Conexao.Connected:=True;
  if FDataAccess.Conexao.Connected then begin
    ShowMessage('Conexão realizada com sucesso');
  end else begin
    ShowMessage('Falha ao conectar-se ao banco de dados');
  end;
end;

end.
