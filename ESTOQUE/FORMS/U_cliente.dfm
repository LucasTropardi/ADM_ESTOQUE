inherited Frm_cliente: TFrm_cliente
  Caption = 'CADASTRO DE CLIENTE'
  ClientHeight = 541
  ExplicitHeight = 570
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 150
    Top = 72
    Width = 55
    Height = 13
    Caption = 'ID CLIENTE'
    FocusControl = db_id_cliente
  end
  object Label2: TLabel [1]
    Left = 150
    Top = 125
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = db_nome
  end
  object Label3: TLabel [2]
    Left = 152
    Top = 184
    Width = 54
    Height = 13
    Caption = 'ENDERE'#199'O'
    FocusControl = db_endereco
  end
  object Label4: TLabel [3]
    Left = 680
    Top = 187
    Width = 43
    Height = 13
    Caption = 'N'#218'MERO'
    FocusControl = db_numero
  end
  object Label5: TLabel [4]
    Left = 152
    Top = 240
    Width = 39
    Height = 13
    Caption = 'BAIRRO'
    FocusControl = db_bairro
  end
  object Label6: TLabel [5]
    Left = 152
    Top = 288
    Width = 38
    Height = 13
    Caption = 'CIDADE'
    FocusControl = db_cidade
  end
  object Label7: TLabel [6]
    Left = 682
    Top = 285
    Width = 13
    Height = 13
    Caption = 'UF'
    FocusControl = db_uf
  end
  object Label8: TLabel [7]
    Left = 152
    Top = 341
    Width = 19
    Height = 13
    Caption = 'CEP'
    FocusControl = db_cep
  end
  object Label9: TLabel [8]
    Left = 327
    Top = 344
    Width = 50
    Height = 13
    Caption = 'TELEFONE'
    FocusControl = db_telefone
  end
  object Label10: TLabel [9]
    Left = 540
    Top = 344
    Width = 19
    Height = 13
    Caption = 'CPF'
    FocusControl = db_cpf
  end
  object Label12: TLabel [10]
    Left = 301
    Top = 72
    Width = 55
    Height = 13
    Caption = 'CADASTRO'
    FocusControl = db_cadastro
  end
  object Label11: TLabel [11]
    Left = 154
    Top = 384
    Width = 30
    Height = 13
    Caption = 'EMAIL'
    FocusControl = db_email
  end
  inherited Panel1: TPanel
    TabOrder = 12
  end
  inherited Panel2: TPanel
    Top = 470
    TabOrder = 13
    ExplicitTop = 470
  end
  inherited DBNavigator1: TDBNavigator
    Left = 245
    Top = 478
    Hints.Strings = ()
    TabOrder = 14
    ExplicitLeft = 245
    ExplicitTop = 478
  end
  inherited BitBtn1: TBitBtn
    TabOrder = 15
    OnClick = BitBtn1Click
  end
  inherited btn_sair: TBitBtn
    TabOrder = 16
  end
  object db_id_cliente: TDBEdit [17]
    Left = 150
    Top = 88
    Width = 134
    Height = 21
    DataField = 'ID_CLIENTE'
    DataSource = ds_padrao
    TabOrder = 0
  end
  object db_nome: TDBEdit [18]
    Left = 150
    Top = 144
    Width = 600
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = ds_padrao
    TabOrder = 2
  end
  object db_endereco: TDBEdit [19]
    Left = 154
    Top = 203
    Width = 520
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ENDERECO'
    DataSource = ds_padrao
    TabOrder = 3
  end
  object db_numero: TDBEdit [20]
    Left = 680
    Top = 203
    Width = 70
    Height = 21
    DataField = 'NUMERO'
    DataSource = ds_padrao
    TabOrder = 4
  end
  object db_bairro: TDBEdit [21]
    Left = 152
    Top = 256
    Width = 600
    Height = 21
    CharCase = ecUpperCase
    DataField = 'BAIRRO'
    DataSource = ds_padrao
    TabOrder = 5
  end
  object db_cidade: TDBEdit [22]
    Left = 152
    Top = 304
    Width = 520
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CIDADE'
    DataSource = ds_padrao
    TabOrder = 6
  end
  object db_uf: TDBEdit [23]
    Left = 678
    Top = 304
    Width = 70
    Height = 21
    CharCase = ecUpperCase
    DataField = 'UF'
    DataSource = ds_padrao
    TabOrder = 7
  end
  object db_cep: TDBEdit [24]
    Left = 152
    Top = 360
    Width = 169
    Height = 21
    DataField = 'CEP'
    DataSource = ds_padrao
    TabOrder = 8
  end
  object db_telefone: TDBEdit [25]
    Left = 327
    Top = 360
    Width = 202
    Height = 21
    DataField = 'TELEFONE'
    DataSource = ds_padrao
    TabOrder = 9
  end
  object db_cpf: TDBEdit [26]
    Left = 540
    Top = 360
    Width = 212
    Height = 21
    DataField = 'CPF'
    DataSource = ds_padrao
    TabOrder = 10
  end
  object db_cadastro: TDBEdit [27]
    Left = 301
    Top = 88
    Width = 134
    Height = 21
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    Enabled = False
    TabOrder = 1
  end
  object db_email: TDBEdit [28]
    Left = 152
    Top = 400
    Width = 600
    Height = 21
    CharCase = ecLowerCase
    DataField = 'EMAIL'
    DataSource = ds_padrao
    TabOrder = 11
  end
  inherited Q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_CLIENTE'
    UpdateOptions.AutoIncFields = 'ID_CLIENTE'
    SQL.Strings = (
      'SELECT '
      '      ID_CLIENTE,'
      '      NOME,'
      '      ENDERECO,'
      '      NUMERO,'
      '      BAIRRO,'
      '      CIDADE,'
      '      UF,'
      '      CEP,'
      '      TELEFONE,'
      '      CPF,'
      '      CADASTRO,'
      '      EMAIL'
      'FROM CLIENTE'
      'ORDER BY ID_CLIENTE;')
    object Q_padraoID_CLIENTE: TFDAutoIncField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Q_padraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object Q_padraoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
    object Q_padraoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object Q_padraoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 100
    end
    object Q_padraoCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 100
    end
    object Q_padraoUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object Q_padraoCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      EditMask = '00000\-999;0;_'
      Size = 16
    end
    object Q_padraoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      EditMask = '!\(999\)00000-0000;0;_'
      Size = 16
    end
    object Q_padraoCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Required = True
      EditMask = '000.000.000-00;1;_'
      Size = 16
    end
    object Q_padraoEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
end
