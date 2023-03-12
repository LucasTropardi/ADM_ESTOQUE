inherited frm_usuario: Tfrm_usuario
  Caption = 'CADASTRO DE USUARIO'
  ClientHeight = 343
  ClientWidth = 933
  ExplicitWidth = 939
  ExplicitHeight = 372
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 184
    Top = 64
    Width = 11
    Height = 13
    Caption = 'ID'
    FocusControl = db_id
  end
  object Label2: TLabel [1]
    Left = 184
    Top = 104
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = db_nome
  end
  object Label3: TLabel [2]
    Left = 386
    Top = 147
    Width = 24
    Height = 13
    Caption = 'TIPO'
  end
  object Label4: TLabel [3]
    Left = 184
    Top = 147
    Width = 33
    Height = 13
    Caption = 'SENHA'
    FocusControl = db_senha
  end
  object Label5: TLabel [4]
    Left = 576
    Top = 147
    Width = 55
    Height = 13
    Caption = 'CADASTRO'
    FocusControl = db_cadastro
  end
  inherited Panel1: TPanel
    Width = 933
    TabOrder = 5
    ExplicitWidth = 933
  end
  inherited Panel2: TPanel
    Top = 272
    Width = 933
    TabOrder = 6
    ExplicitTop = 272
    ExplicitWidth = 933
  end
  inherited DBNavigator1: TDBNavigator
    Left = 268
    Top = 280
    Hints.Strings = ()
    TabOrder = 7
    ExplicitLeft = 268
    ExplicitTop = 280
  end
  inherited BitBtn1: TBitBtn
    TabOrder = 8
    OnClick = BitBtn1Click
  end
  object db_id: TDBEdit [9]
    Left = 184
    Top = 80
    Width = 134
    Height = 21
    DataField = 'ID_USUARIO'
    DataSource = ds_padrao
    TabOrder = 0
  end
  object db_nome: TDBEdit [10]
    Left = 184
    Top = 120
    Width = 526
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = ds_padrao
    TabOrder = 1
  end
  object db_senha: TDBEdit [11]
    Left = 184
    Top = 166
    Width = 150
    Height = 21
    DataField = 'SENHA'
    DataSource = ds_padrao
    PasswordChar = '*'
    TabOrder = 2
  end
  object db_cadastro: TDBEdit [12]
    Left = 576
    Top = 166
    Width = 134
    Height = 21
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    Enabled = False
    TabOrder = 4
  end
  object db_tipo: TDBComboBox [13]
    Left = 386
    Top = 166
    Width = 143
    Height = 21
    CharCase = ecUpperCase
    DataField = 'TIPO'
    DataSource = ds_padrao
    Items.Strings = (
      'ADMINISTRADOR'
      'APOIO')
    TabOrder = 3
  end
  inherited btn_sair: TBitBtn
    TabOrder = 9
  end
  inherited Q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_USUARIO'
    UpdateOptions.AutoIncFields = 'ID_USUARIO'
    SQL.Strings = (
      'SELECT'
      '     ID_USUARIO,'
      '     NOME,'
      '     SENHA,'
      '     TIPO,'
      '     CADASTRO'
      'FROM USUARIO'
      'ORDER BY ID_USUARIO;')
    object Q_padraoID_USUARIO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object Q_padraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object Q_padraoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object Q_padraoSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Required = True
      Size = 30
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
end
