inherited Frm_fornecedor: TFrm_fornecedor
  Caption = 'CADASTRO DE FORNECEDORES'
  ClientHeight = 482
  ClientWidth = 975
  ExplicitWidth = 981
  ExplicitHeight = 511
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 144
    Top = 64
    Width = 83
    Height = 13
    Caption = 'ID FORNECEDOR'
    FocusControl = db_id_fornecedor
  end
  object Label2: TLabel [1]
    Left = 144
    Top = 104
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = db_nome
  end
  object Label3: TLabel [2]
    Left = 144
    Top = 144
    Width = 54
    Height = 13
    Caption = 'ENDERE'#199'O'
    FocusControl = db_endereco
  end
  object Label4: TLabel [3]
    Left = 670
    Top = 144
    Width = 43
    Height = 13
    Caption = 'N'#218'MERO'
    FocusControl = db_numero
  end
  object Label5: TLabel [4]
    Left = 144
    Top = 184
    Width = 39
    Height = 13
    Caption = 'BAIRRO'
    FocusControl = db_bairro
  end
  object Label6: TLabel [5]
    Left = 144
    Top = 232
    Width = 38
    Height = 13
    Caption = 'CIDADE'
    FocusControl = db_cidade
  end
  object Label7: TLabel [6]
    Left = 670
    Top = 184
    Width = 13
    Height = 13
    Caption = 'UF'
    FocusControl = db_uf
  end
  object Label8: TLabel [7]
    Left = 144
    Top = 280
    Width = 19
    Height = 13
    Caption = 'CEP'
    FocusControl = db_cep
  end
  object Label9: TLabel [8]
    Left = 328
    Top = 280
    Width = 50
    Height = 13
    Caption = 'TELEFONE'
    FocusControl = db_telefone
  end
  object Label10: TLabel [9]
    Left = 520
    Top = 280
    Width = 25
    Height = 13
    Caption = 'CNPJ'
    FocusControl = db_cnpj
  end
  object Label11: TLabel [10]
    Left = 140
    Top = 320
    Width = 30
    Height = 13
    Caption = 'EMAIL'
    FocusControl = db_email
  end
  object Label12: TLabel [11]
    Left = 284
    Top = 64
    Width = 55
    Height = 13
    Caption = 'CADASTRO'
    FocusControl = db_cadastro
  end
  inherited Panel1: TPanel
    Width = 975
    TabOrder = 12
    ExplicitWidth = 975
  end
  inherited Panel2: TPanel
    Top = 411
    Width = 975
    TabOrder = 13
    ExplicitTop = 411
    ExplicitWidth = 975
  end
  inherited DBNavigator1: TDBNavigator
    Left = 254
    Top = 419
    Hints.Strings = ()
    TabOrder = 14
    ExplicitLeft = 254
    ExplicitTop = 419
  end
  inherited BitBtn1: TBitBtn
    TabOrder = 15
    OnClick = BitBtn1Click
  end
  inherited btn_sair: TBitBtn
    TabOrder = 16
  end
  object db_id_fornecedor: TDBEdit [17]
    Left = 140
    Top = 80
    Width = 138
    Height = 21
    DataField = 'ID_FORNECEDOR'
    DataSource = ds_padrao
    TabOrder = 0
  end
  object db_nome: TDBEdit [18]
    Left = 140
    Top = 120
    Width = 600
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = ds_padrao
    TabOrder = 2
  end
  object db_endereco: TDBEdit [19]
    Left = 140
    Top = 160
    Width = 524
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ENDERECO'
    DataSource = ds_padrao
    TabOrder = 3
  end
  object db_numero: TDBEdit [20]
    Left = 670
    Top = 160
    Width = 70
    Height = 21
    DataField = 'NUMERO'
    DataSource = ds_padrao
    TabOrder = 4
  end
  object db_bairro: TDBEdit [21]
    Left = 140
    Top = 200
    Width = 524
    Height = 21
    CharCase = ecUpperCase
    DataField = 'BAIRRO'
    DataSource = ds_padrao
    TabOrder = 5
  end
  object db_cidade: TDBEdit [22]
    Left = 140
    Top = 248
    Width = 600
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CIDADE'
    DataSource = ds_padrao
    TabOrder = 7
  end
  object db_uf: TDBEdit [23]
    Left = 670
    Top = 200
    Width = 70
    Height = 21
    CharCase = ecUpperCase
    DataField = 'UF'
    DataSource = ds_padrao
    TabOrder = 6
  end
  object db_cep: TDBEdit [24]
    Left = 140
    Top = 296
    Width = 173
    Height = 21
    DataField = 'CEP'
    DataSource = ds_padrao
    TabOrder = 8
  end
  object db_telefone: TDBEdit [25]
    Left = 328
    Top = 296
    Width = 177
    Height = 21
    DataField = 'TELEFONE'
    DataSource = ds_padrao
    TabOrder = 9
  end
  object db_cnpj: TDBEdit [26]
    Left = 520
    Top = 296
    Width = 220
    Height = 21
    DataField = 'CNPJ'
    DataSource = ds_padrao
    TabOrder = 10
  end
  object db_email: TDBEdit [27]
    Left = 140
    Top = 336
    Width = 600
    Height = 21
    CharCase = ecLowerCase
    DataField = 'EMAIL'
    DataSource = ds_padrao
    TabOrder = 11
  end
  object db_cadastro: TDBEdit [28]
    Left = 284
    Top = 80
    Width = 134
    Height = 21
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    TabOrder = 1
  end
  inherited Q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_FORNECEDOR'
    UpdateOptions.AutoIncFields = 'ID_FORNECEDOR'
    SQL.Strings = (
      'SELECT'
      '     ID_FORNECEDOR,'
      '     NOME,'
      '     ENDERECO,'
      '     NUMERO,'
      '     BAIRRO,'
      '     CIDADE,'
      '     UF,'
      '     CEP,'
      '     TELEFONE,'
      '     CNPJ,'
      '     EMAIL,'
      '     CADASTRO'
      'FROM FORNECEDOR'
      'ORDER BY ID_FORNECEDOR;')
    object Q_padraoID_FORNECEDOR: TFDAutoIncField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
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
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 16
    end
    object Q_padraoCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
      EditMask = '00\.000\.000\./-00;0;'
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
