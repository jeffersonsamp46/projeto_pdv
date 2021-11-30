object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 440
  Width = 712
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=pdv'
      'User_Name=postgres'
      'Password=admin'
      'DriverID=PG')
    LoginPrompt = False
    Left = 40
    Top = 8
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorHome = 'D:\Workspace\Aplicacoes_delphi\projeto_pdv'
    Left = 600
    Top = 8
  end
  object TbCargos: TFDTable
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'cargos'
    TableName = 'cargos'
    Left = 40
    Top = 72
    object TbCargosid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TbCargoscargo: TWideStringField
      FieldName = 'cargo'
      Origin = 'cargo'
      Size = 30
    end
  end
  object queryCargos: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from cargos')
    Left = 40
    Top = 136
    object queryCargosid: TLargeintField
      DisplayLabel = 'ID:'
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object queryCargoscargo: TWideStringField
      FieldName = 'Cargo:'
      Origin = 'cargo'
      Size = 30
    end
  end
end
