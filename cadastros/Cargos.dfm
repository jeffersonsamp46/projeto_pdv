object frmCargos: TfrmCargos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cargos'
  ClientHeight = 360
  ClientWidth = 615
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 24
    Top = 8
    Width = 33
    Height = 13
    Caption = 'Cargo:'
  end
  object btnDeletar: TButton
    Left = 352
    Top = 303
    Width = 65
    Height = 37
    Caption = 'Deletar'
    ImageIndex = 0
    TabOrder = 0
  end
  object btnEditar: TButton
    Left = 281
    Top = 303
    Width = 65
    Height = 37
    Caption = 'Editar'
    ImageIndex = 1
    TabOrder = 1
  end
  object btnSalvar: TButton
    Left = 210
    Top = 303
    Width = 65
    Height = 37
    Caption = 'Salvar'
    ImageIndex = 4
    TabOrder = 2
    OnClick = btnSalvarClick
  end
  object btnNovo: TButton
    Left = 139
    Top = 303
    Width = 65
    Height = 37
    Caption = 'Novo'
    ImageIndex = 2
    TabOrder = 3
    OnClick = btnNovoClick
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 48
    Width = 553
    Height = 225
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object edNome: TEdit
    Left = 24
    Top = 24
    Width = 251
    Height = 21
    TabOrder = 5
  end
end
