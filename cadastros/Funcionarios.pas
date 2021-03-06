unit Funcionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Data.DB, System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids;

type
  TfrmFuncionarios = class(TForm)
    Panel1: TPanel;
    rbNome: TRadioButton;
    rbCPF: TRadioButton;
    ednomePesquisa: TEdit;
    edPesquisaCpf: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    edNome: TEdit;
    edLogradouro: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    edCpf: TMaskEdit;
    Label5: TLabel;
    edTelefone: TMaskEdit;
    Label6: TLabel;
    cbCargo: TComboBox;
    DBGrid1: TDBGrid;
    ImageList1: TImageList;
    btnNovo: TButton;
    btnSalvar: TButton;
    btnEditar: TButton;
    btnDeletar: TButton;
    procedure rbCPFClick(Sender: TObject);
    procedure rbNomeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFuncionarios: TfrmFuncionarios;

implementation

{$R *.dfm}

procedure TfrmFuncionarios.FormShow(Sender: TObject);
begin
  rbNome.Checked := True;
  ednomePesquisa.Visible:= True;
  edPesquisaCpf.Visible:= False;
end;

procedure TfrmFuncionarios.rbCPFClick(Sender: TObject);
begin
  ednomePesquisa.Visible:= False;
  edPesquisaCpf.Visible:= True;
end;

procedure TfrmFuncionarios.rbNomeClick(Sender: TObject);
begin
  ednomePesquisa.Visible:= True;
  edPesquisaCpf.Visible:= False;
end;

end.
