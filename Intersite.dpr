program Intersite;

uses
  Vcl.Forms,
  Main in 'View\Main.pas' {Form1},
  Entidades in 'View\Entidades.pas' {FEntidades},
  CadastroEntidades in 'View\CadastroEntidades.pas' {FCadastroEntidades},
  Entidade in 'Model\Entidade.pas',
  EntidadeController in 'Controller\EntidadeController.pas',
  Endereco in 'Model\Endereco.pas',
  SQL in 'Model\DAO\SQL.pas',
  Enums in 'Model\Enums.pas',
  Banco in 'View\Banco.pas' {FBanco},
  BancoController in 'Controller\BancoController.pas',
  DataAccess in 'Model\DAO\DataAccess.pas' {FDataAccess},
  VisualizarEntidade in 'View\VisualizarEntidade.pas' {FVisualizarEntidade},
  ListaEntidades in 'View\ListaEntidades.pas' {FListaEntidades};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar:=True;
  Application.CreateForm(TFMain, FMain);
  Application.CreateForm(TFEntidades, FEntidades);
  Application.CreateForm(TFCadastroEntidades, FCadastroEntidades);
  Application.CreateForm(TFBanco, FBanco);
  Application.CreateForm(TFDataAccess, FDataAccess);
  Application.CreateForm(TFVisualizarEntidade, FVisualizarEntidade);
  Application.CreateForm(TFListaEntidades, FListaEntidades);
  Application.Run;
end.
