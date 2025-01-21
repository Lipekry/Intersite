object FDataAccess: TFDataAccess
  Left = 0
  Top = 0
  Caption = 'FDataAccess'
  ClientHeight = 158
  ClientWidth = 295
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Conexao: TFDConnection
    Params.Strings = (
      'Server=localhost'
      'Password=rp1064'
      'DriverID=PG'
      'User_Name=postgres')
    LoginPrompt = False
    Left = 40
    Top = 22
  end
  object DriverConexao: TFDPhysPgDriverLink
    Tag = 1
    DriverID = 'PG'
    VendorHome = '.\config'
    Left = 136
    Top = 24
  end
  object DataSourceEntidades: TDataSource
    AutoEdit = False
    DataSet = QREntidades
    Left = 35
    Top = 90
  end
  object QREntidades: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      
        'SELECT ent_nome as Nome, ent_cpf as CPF, ent_rg as RG, ent_categ' +
        'oria as Categoria, end_cep as CEP  FROM entidades LEFT JOIN Ende' +
        'reco ON end_ent_id = ent_id')
    Left = 139
    Top = 90
  end
end
