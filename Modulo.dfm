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
  end
  object queryCargos: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from cargos')
    Left = 40
    Top = 136
  end
end
