unit Cargos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TfrmCargos = class(TForm)
    btnDeletar: TButton;
    btnEditar: TButton;
    btnSalvar: TButton;
    btnNovo: TButton;
    DBGrid1: TDBGrid;
    edNome: TEdit;
    Label2: TLabel;
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure associarCampos;
    function validaForm: Boolean;
    function existCargo(nomeCargo: string): Boolean;
  public
    { Public declarations }
  end;

var
  frmCargos: TfrmCargos;

implementation

{$R *.dfm}

uses Modulo;

{ TfrmCargos }

procedure TfrmCargos.associarCampos;
var
  cargo : String;
begin
  cargo := UpperCase(Trim(edNome.Text));
  dm.TbCargos.FieldByName('cargo').Value := cargo;
end;

procedure TfrmCargos.btnNovoClick(Sender: TObject);
begin
  dm.TbCargos.Insert;

  btnSalvar.Enabled := True;
  btnEditar.Enabled := False;
  btnDeletar.Enabled := False;
end;

procedure TfrmCargos.btnSalvarClick(Sender: TObject);
begin
  if(validaForm) then
  begin
    associarCampos;
    dm.TbCargos.Post;
    MessageDlg('Salvo com sucesso.', mtInformation, mbOKCancel, 0);
    btnSalvar.Enabled := False;
    edNome.Clear;
    edNome.SetFocus;
  end;
end;

procedure TfrmCargos.FormShow(Sender: TObject);
begin
  dm.TbCargos.Active := True;

  btnNovo.Enabled := True;
  btnSalvar.Enabled := False;
  btnEditar.Enabled := False;
  btnDeletar.Enabled := False;
end;

function TfrmCargos.validaForm: Boolean;
var
  cargo : string;
begin
  Result:= False;
  cargo := UpperCase(Trim(edNome.Text));
  if(cargo.IsEmpty) then
  begin
    MessageDlg('Cargo inv?lido...', mtError, mbOKCancel, 0);
    edNome.SetFocus;
    Exit;
  end
  else if(existCargo(cargo))then
  begin
    MessageDlg('Cargo j? cadastrado', mtError, mbOKCancel, 0);
    edNome.SetFocus;
    Exit;
  end
  else
  begin
    Result:= True;
  end;
end;

function TfrmCargos.existCargo(nomeCargo: string): Boolean;
var
  select : string;
begin
    select:= 'SELECT CARGO FROM cargos WHERE CARGO =  '+ QuotedStr(nomeCargo);
    dm.queryCargos.SQL.Clear;
    dm.queryCargos.Open(select);

    if(dm.queryCargos.IsEmpty)then
    begin
      Result := False;
    end
    else
    begin
      Result := True;
    end;

end;

end.
