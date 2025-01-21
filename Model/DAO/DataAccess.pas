unit DataAccess;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Phys.PGDef, FireDAC.Phys.PG, Data.DB, FireDAC.Comp.Client,
  Datasnap.DBClient, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TFDataAccess = class(TForm)
    Conexao: TFDConnection;
    DriverConexao: TFDPhysPgDriverLink;
    DataSourceEntidades: TDataSource;
    QREntidades: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDataAccess: TFDataAccess;

implementation

{$R *.dfm}

end.
