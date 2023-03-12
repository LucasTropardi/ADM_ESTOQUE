object DM: TDM
  OldCreateOrder = False
  Height = 495
  Width = 866
  object conexao: TFDConnection
    Params.Strings = (
      'Database=C:\ESTOQUE\EXE\BANCO\ESTOQUE.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=localhost'
      'Port=3050'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 72
  end
  object transacao: TFDTransaction
    Connection = conexao
    Left = 144
    Top = 64
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'C:\Windows\System32\FBCLIENT.DLL'
    Left = 264
    Top = 72
  end
  object Q_login: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'SELECT '
      '     ID_USUARIO,'
      '     NOME,'
      '     SENHA,'
      '     TIPO'
      'FROM USUARIO'
      'ORDER BY ID_USUARIO')
    Left = 392
    Top = 64
    object Q_loginID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_loginNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object Q_loginSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Required = True
      Size = 30
    end
    object Q_loginTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
  end
  object ds_login: TDataSource
    DataSet = Q_login
    Left = 440
    Top = 64
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 456
    Top = 184
  end
  object FDMoniRemoteClientLink1: TFDMoniRemoteClientLink
    Port = 3050
    Left = 264
    Top = 176
  end
end
