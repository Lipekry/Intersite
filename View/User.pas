unit Entidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, System.Skia,
  Vcl.Skia;

type
  TFEntidades = class(TForm)
    PnlCenter: TPanel;
    pnlLeft: TPanel;
    pnlLeftCenter: TPanel;
    pnlRight: TPanel;
    pnlRightCaption: TPanel;
    lbRightCaption: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    pnlRightCenter: TPanel;
    SvgAdicionar: TSkSvg;
    SvgListar: TSkSvg;
    pnlHeader: TPanel;
    SkSvg1: TSkSvg;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SkSvg1Click(Sender: TObject);
    procedure pnlLeftClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEntidades: TFEntidades;

implementation

{$R *.dfm}

uses CadastroEntidades;

procedure TFEntidades.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_ESCAPE then Self.Close;
end;

procedure TFEntidades.pnlLeftClick(Sender: TObject);
begin
  FCadastroEntidades.Show;
  Self.Close;
end;

procedure TFEntidades.SkSvg1Click(Sender: TObject);
begin
  Self.Close;
end;

end.
