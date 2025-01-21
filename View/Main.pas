unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus, Vcl.StdCtrls,
  Data.DB, Data.SqlExpr, BancoController;

type
  TFMain = class(TForm)
    mainImage: TImage;
    MenuCentral: TMainMenu;
    MenuCadastros: TMenuItem;
    CadUsuarios: TMenuItem;
    MenuConfigurações: TMenuItem;
    PnlBottom: TPanel;
    LbTime: TLabel;
    TimerDataHora: TTimer;
    ConfBanco: TMenuItem;
    LbStatusBanco: TLabel;
    procedure TimerDataHoraTimer(Sender: TObject);
    procedure CadUsuariosClick(Sender: TObject);
    procedure ConfBancoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetaStatusBanco;
  end;

var
  FMain: TFMain;

implementation

uses Entidades, Banco;

{$R *.dfm}

procedure TFMain.CadUsuariosClick(Sender: TObject);
begin
  FEntidades.Show;
end;

procedure TFMain.ConfBancoClick(Sender: TObject);
begin
  FBanco.Show;
end;

procedure TFMain.FormActivate(Sender: TObject);
begin
  SetaStatusBanco;
end;

procedure TFMain.FormShow(Sender: TObject);
begin
  FMain.Width:=1920;
  FMain.Height:=1080;
  FMain.WindowState:=TWindowState.wsMaximized;
end;

procedure TFMain.SetaStatusBanco;
var StatusBanco:Boolean;
begin
  StatusBanco:=TBancoController.GetStatus;
  if StatusBanco then begin
    LbStatusBanco.Caption:='Banco de dados: CONECTADO';
  end else begin
    LbStatusBanco.Caption:='Banco de dados: DESCONECTADO';
  end;
end;

procedure TFMain.TimerDataHoraTimer(Sender: TObject);
var DataHora:TDateTime;
begin
  DataHora:=Now;
  LbTime.Caption:=DateTimeToStr(DataHora);
end;

end.
