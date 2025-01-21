unit ListaEntidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Skia, Vcl.Skia, Vcl.StdCtrls,
  Vcl.Mask, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, DataAccess;

type
  TFListaEntidades = class(TForm)
    PnlCenter: TPanel;
    pnlTop: TPanel;
    pnlHeader: TPanel;
    SkSvg1: TSkSvg;
    PnlMessage: TPanel;
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    EntidadesGrid: TDBGrid;
    edPesquisa: TLabeledEdit;
    procedure FormShow(Sender: TObject);
    procedure SkSvg1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListaEntidades: TFListaEntidades;

implementation

{$R *.dfm}

procedure TFListaEntidades.FormShow(Sender: TObject);
begin
  EntidadesGrid.DataSource.DataSet.Active:=True;
end;

procedure TFListaEntidades.SkSvg1Click(Sender: TObject);
begin
  Self.Close;
end;

end.
