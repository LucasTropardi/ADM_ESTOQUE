inherited Frm_produto: TFrm_produto
  Caption = 'CADASTRO DE PRODUTOS'
  ClientHeight = 356
  ClientWidth = 956
  ExplicitWidth = 962
  ExplicitHeight = 385
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 88
    Top = 55
    Width = 63
    Height = 13
    Caption = 'ID PRODUTO'
    FocusControl = db_id_produto
  end
  object Label2: TLabel [1]
    Left = 88
    Top = 95
    Width = 129
    Height = 13
    Caption = 'DESCRI'#199#195'O DO PRODUTO'
    FocusControl = db_produto_descricao
  end
  object Label3: TLabel [2]
    Left = 88
    Top = 135
    Width = 86
    Height = 13
    Caption = 'VALOR DE CUSTO'
    FocusControl = db_vl_custo
  end
  object Label4: TLabel [3]
    Left = 234
    Top = 135
    Width = 85
    Height = 13
    Caption = 'VALOR DE VENDA'
    FocusControl = db_vl_venda
  end
  object Label5: TLabel [4]
    Left = 384
    Top = 135
    Width = 47
    Height = 13
    Caption = 'ESTOQUE'
    FocusControl = db_estoque
  end
  object Label6: TLabel [5]
    Left = 549
    Top = 135
    Width = 89
    Height = 13
    Caption = 'ESTOQUE M'#205'NIMO'
    FocusControl = db_estoque_min
  end
  object Label7: TLabel [6]
    Left = 92
    Top = 191
    Width = 45
    Height = 13
    Caption = 'UNIDADE'
  end
  object Label8: TLabel [7]
    Left = 234
    Top = 55
    Width = 55
    Height = 13
    Caption = 'CADASTRO'
    FocusControl = db_cadastro
  end
  object Label9: TLabel [8]
    Left = 158
    Top = 191
    Width = 83
    Height = 13
    Caption = 'ID FORNECEDOR'
    FocusControl = db_id_fornecedor
  end
  object Label10: TLabel [9]
    Left = 270
    Top = 189
    Width = 101
    Height = 13
    Caption = 'NOME FORNECEDOR'
    FocusControl = db_nome
  end
  inherited Panel1: TPanel
    Width = 956
    TabOrder = 10
    ExplicitWidth = 956
  end
  inherited Panel2: TPanel
    Top = 285
    Width = 956
    TabOrder = 11
    ExplicitTop = 285
    ExplicitWidth = 956
  end
  inherited DBNavigator1: TDBNavigator
    Left = 268
    Top = 294
    Hints.Strings = ()
    TabOrder = 12
    ExplicitLeft = 268
    ExplicitTop = 294
  end
  inherited BitBtn1: TBitBtn
    TabOrder = 13
    OnClick = BitBtn1Click
  end
  inherited btn_sair: TBitBtn
    TabOrder = 14
  end
  object db_id_produto: TDBEdit [15]
    Left = 88
    Top = 71
    Width = 134
    Height = 21
    DataField = 'ID_PRODUTO'
    DataSource = ds_padrao
    TabOrder = 0
  end
  object db_produto_descricao: TDBEdit [16]
    Left = 88
    Top = 111
    Width = 600
    Height = 21
    CharCase = ecUpperCase
    DataField = 'PRODUTO_DESCRICAO'
    DataSource = ds_padrao
    TabOrder = 2
  end
  object db_vl_custo: TDBEdit [17]
    Left = 88
    Top = 151
    Width = 121
    Height = 21
    DataField = 'VL_CUSTO'
    DataSource = ds_padrao
    TabOrder = 3
  end
  object db_vl_venda: TDBEdit [18]
    Left = 234
    Top = 151
    Width = 119
    Height = 21
    DataField = 'VL_VENDA'
    DataSource = ds_padrao
    TabOrder = 4
  end
  object db_estoque: TDBEdit [19]
    Left = 384
    Top = 151
    Width = 145
    Height = 21
    DataField = 'ESTOQUE'
    DataSource = ds_padrao
    TabOrder = 5
  end
  object db_estoque_min: TDBEdit [20]
    Left = 549
    Top = 151
    Width = 139
    Height = 21
    DataField = 'ESTOQUE_MIN'
    DataSource = ds_padrao
    TabOrder = 6
  end
  object db_cadastro: TDBEdit [21]
    Left = 234
    Top = 71
    Width = 134
    Height = 21
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    TabOrder = 1
  end
  object db_id_fornecedor: TDBEdit [22]
    Left = 158
    Top = 207
    Width = 104
    Height = 21
    DataField = 'ID_FORNECEDOR'
    DataSource = ds_padrao
    TabOrder = 8
  end
  object db_nome: TDBEdit [23]
    Left = 268
    Top = 207
    Width = 420
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = ds_padrao
    TabOrder = 9
  end
  object dbc_unidade: TDBComboBox [24]
    Left = 92
    Top = 207
    Width = 45
    Height = 21
    CharCase = ecUpperCase
    DataField = 'UNIDADE'
    DataSource = ds_padrao
    Items.Strings = (
      'KG'
      'ML'
      'LT'
      'PCT'
      'P'#199
      'CX'
      'UN'
      'FR')
    TabOrder = 7
  end
  inherited Q_padrao: TFDQuery
    SQL.Strings = (
      'SELECT'
      '     A.ID_PRODUTO,'
      '     A.PRODUTO_DESCRICAO,'
      '     A.VL_CUSTO,'
      '     A.VL_VENDA,'
      '     A.ESTOQUE,'
      '     A.ESTOQUE_MIN,'
      '     A.UNIDADE,'
      '     A.CADASTRO,'
      '     A.ID_FORNECEDOR,'
      '     B.NOME'
      'FROM PRODUTO A, FORNECEDOR B'
      'WHERE A.ID_FORNECEDOR = B.ID_FORNECEDOR')
    object Q_padraoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_padraoPRODUTO_DESCRICAO: TStringField
      FieldName = 'PRODUTO_DESCRICAO'
      Origin = 'PRODUTO_DESCRICAO'
      Required = True
      Size = 100
    end
    object Q_padraoVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padraoVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Origin = 'VL_VENDA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padraoESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Required = True
      Precision = 18
      Size = 2
    end
    object Q_padraoESTOQUE_MIN: TFMTBCDField
      FieldName = 'ESTOQUE_MIN'
      Origin = 'ESTOQUE_MIN'
      Required = True
      Precision = 18
      Size = 2
    end
    object Q_padraoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 6
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object Q_padraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object Q_padraoNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
end
