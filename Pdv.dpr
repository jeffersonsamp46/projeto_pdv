program Pdv;

uses
  Vcl.Forms,
  Login in 'Login.pas' {FrmLogin},
  Menu in 'Menu.pas' {frmMenu},
  Usuarios in 'cadastros\Usuarios.pas' {frmUsuarios},
  Funcionarios in 'cadastros\Funcionarios.pas' {frmFuncionarios},
  Cargos in 'cadastros\Cargos.pas' {frmCargos},
  Modulo in 'Modulo.pas' {dm: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TfrmUsuarios, frmUsuarios);
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.CreateForm(TfrmFuncionarios, frmFuncionarios);
  Application.CreateForm(TfrmCargos, frmCargos);
  Application.CreateForm(Tdm, dm);
  Application.Run;
end.
