unit Menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmMenu = class(TForm)
    MainMenu1: TMainMenu;
    Cadstros1: TMenuItem;
    Produtos1: TMenuItem;
    Fornecedores1: TMenuItem;
    Estoque1: TMenuItem;
    Movimentaes1: TMenuItem;
    Relatrios1: TMenuItem;
    Sair1: TMenuItem;
    Usurios1: TMenuItem;
    Cargos1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure Usurios1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure Cargos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenu: TfrmMenu;

implementation

{$R *.dfm}

uses Usuarios, Funcionarios, Cargos;

procedure TfrmMenu.Cargos1Click(Sender: TObject);
begin
  frmCargos:= TfrmCargos.Create(frmCargos);
  frmCargos.ShowModal;
end;

procedure TfrmMenu.Fornecedores1Click(Sender: TObject);
begin
  frmFuncionarios:= TfrmFuncionarios.Create(frmFuncionarios);
  frmFuncionarios.ShowModal;
end;

procedure TfrmMenu.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmMenu.Usurios1Click(Sender: TObject);
begin
  frmUsuarios:= TfrmUsuarios.Create(frmUsuarios);
  frmUsuarios.ShowModal;
end;

end.
