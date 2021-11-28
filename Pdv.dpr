program Pdv;

uses
  Vcl.Forms,
  Login in 'Login.pas' {FrmLogin},
  Menu in 'Menu.pas' {frmMenu},
  Usuarios in 'cadastros\Usuarios.pas' {frmUsuarios},
  Funcionarios in 'cadastros\Funcionarios.pas' {frmFuncionarios};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TfrmUsuarios, frmUsuarios);
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.CreateForm(TfrmFuncionarios, frmFuncionarios);
  Application.Run;
end.
