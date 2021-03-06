unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.Imaging.jpeg, Vcl.StdCtrls, Vcl.Buttons ;

type
  TFrmLogin = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    pnlLogin: TPanel;
    Image2: TImage;
    edLogin: TEdit;
    edSenha: TEdit;
    btnLogin: TSpeedButton;
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer;
      var Resize: Boolean);
    procedure btnLoginClick(Sender: TObject);
  private
    { Private declarations }
    procedure centralizaPainel;
    procedure login;
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.dfm}

uses Menu;

procedure TFrmLogin.btnLoginClick(Sender: TObject);
var
  loginNome, loginSenha : string;
begin
  loginNome:= Trim(edLogin.Text);
  loginSenha:= Trim(edSenha.Text);

  if(loginNome.IsEmpty)then
  begin
    MessageDlg('Login vazio', mtInformation, mbOKCancel, 0);
    edLogin.SetFocus;
    Exit;
  end
  else if(loginSenha.IsEmpty)then
  begin
    MessageDlg('Senha vazio', mtInformation, mbOKCancel, 0);
    edSenha.SetFocus;
    Exit;
  end;

  login;
end;

procedure TFrmLogin.centralizaPainel;
begin
  pnlLogin.Top:= (Self.Height div 2)  - (pnlLogin.Height div 2);
  pnlLogin.Left:= (Self.Width div 2) - (pnlLogin.Width div 2);
end;

procedure TFrmLogin.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  centralizaPainel;
end;

procedure TFrmLogin.login;
begin
  frmMenu:= TfrmMenu.Create(frmMenu);
  frmMenu.ShowModal;

end;

end.
