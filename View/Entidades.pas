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
    procedure SvgListarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEntidades: TFEntidades;

implementation

{$R *.dfm}

uses CadastroEntidades, EntidadeController, ListaEntidades;

procedure TFEntidades.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_ESCAPE then Self.Close;
end;

procedure TFEntidades.pnlLeftClick(Sender: TObject);
var EntCont:TEntidadeController;
begin
  EntCont:=TEntidadeController.Create;
  if not EntCont.StatusBanco then begin
    ShowMessage('Para realizar cadastros, é necessário configurar o banco de dados');
  end else begin
    FCadastroEntidades.Show;
    Self.Close;
  end;
  EntCont.Free;
end;

procedure TFEntidades.SkSvg1Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TFEntidades.SvgListarClick(Sender: TObject);
var EntCont:TEntidadeController;
begin
  EntCont:=TEntidadeController.Create;
  if not EntCont.StatusBanco then begin
    ShowMessage('Para listar cadastros, é necessário configurar o banco de dados');
  end else begin
    FListaEntidades.Show;
    Self.Close;
  end;
  EntCont.Free;
end;

end.
