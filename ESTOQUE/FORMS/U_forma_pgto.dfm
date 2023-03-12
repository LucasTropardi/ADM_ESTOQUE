inherited Frm_forma_pgto: TFrm_forma_pgto
  Caption = 'CADASTRO DE FORMAS DE PAGAMENTO'
  ClientHeight = 336
  ClientWidth = 958
  ExplicitWidth = 964
  ExplicitHeight = 365
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 72
    Top = 88
    Width = 80
    Height = 13
    Caption = 'ID FORMA PGTO'
    FocusControl = db_id_forma_pgto
  end
  object Label2: TLabel [1]
    Left = 72
    Top = 144
    Width = 59
    Height = 13
    Caption = 'DESCRI'#199#195'O'
    FocusControl = db_descricao
  end
  object Label3: TLabel [2]
    Left = 240
    Top = 88
    Width = 55
    Height = 13
    Caption = 'CADASTRO'
    FocusControl = db_cadastro
  end
  inherited Panel1: TPanel
    Width = 958
    ExplicitWidth = 958
  end
  inherited Panel2: TPanel
    Top = 265
    Width = 958
    ExplicitTop = 265
    ExplicitWidth = 958
  end
  inherited DBNavigator1: TDBNavigator
    Left = 188
    Top = 273
    Hints.Strings = ()
    ExplicitLeft = 188
    ExplicitTop = 273
  end
  inherited BitBtn1: TBitBtn
    OnClick = BitBtn1Click
  end
  object db_id_forma_pgto: TDBEdit [8]
    Left = 72
    Top = 104
    Width = 134
    Height = 21
    DataField = 'ID_FORMA_PGTO'
    DataSource = ds_padrao
    TabOrder = 5
  end
  object db_descricao: TDBEdit [9]
    Left = 72
    Top = 160
    Width = 600
    Height = 21
    CharCase = ecUpperCase
    DataField = 'DESCRICAO'
    DataSource = ds_padrao
    TabOrder = 6
  end
  object db_cadastro: TDBEdit [10]
    Left = 240
    Top = 104
    Width = 134
    Height = 21
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    Enabled = False
    TabOrder = 7
  end
  inherited Q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_FORMA_PGTO'
    UpdateOptions.AutoIncFields = 'ID_FORMA_PGTO'
    SQL.Strings = (
      'SELECT'
      '     ID_FORMA_PGTO,'
      '     DESCRICAO,'
      '     CADASTRO'
      'FROM FORMA_PGTO'
      'ORDER BY ID_FORMA_PGTO;')
    Top = 88
    object Q_padraoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object Q_padraoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited ds_padrao: TDataSource
    Left = 840
    Top = 152
  end
end
