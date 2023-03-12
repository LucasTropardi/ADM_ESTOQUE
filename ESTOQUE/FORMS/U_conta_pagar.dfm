inherited Frm_conta_pagar: TFrm_conta_pagar
  Caption = 'PAGAMENTO DE CONTAS'
  ClientHeight = 391
  ClientWidth = 759
  ExplicitWidth = 765
  ExplicitHeight = 420
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 31
    Top = 80
    Width = 60
    Height = 13
    Caption = 'ID_COMPRA'
  end
  object Label2: TLabel [1]
    Left = 549
    Top = 256
    Width = 38
    Height = 13
    Caption = 'STATUS'
  end
  object Label3: TLabel [2]
    Left = 31
    Top = 123
    Width = 86
    Height = 13
    Caption = 'ID_FORNECEDOR'
  end
  object Label4: TLabel [3]
    Left = 139
    Top = 123
    Width = 29
    Height = 13
    Caption = 'NOME'
  end
  object Label5: TLabel [4]
    Left = 512
    Top = 123
    Width = 25
    Height = 13
    Caption = 'CNPJ'
  end
  object Label7: TLabel [5]
    Left = 139
    Top = 200
    Width = 84
    Height = 13
    Caption = 'VALOR_PARCELA'
  end
  object Label8: TLabel [6]
    Left = 258
    Top = 200
    Width = 84
    Height = 13
    Caption = 'DT_VENCIMENTO'
  end
  object Label9: TLabel [7]
    Left = 398
    Top = 200
    Width = 81
    Height = 13
    Caption = 'DT_PAGAMENTO'
  end
  object Label10: TLabel [8]
    Left = 548
    Top = 200
    Width = 41
    Height = 13
    Caption = 'ATRASO'
  end
  object Label11: TLabel [9]
    Left = 33
    Top = 256
    Width = 33
    Height = 13
    Caption = 'JUROS'
  end
  object Label12: TLabel [10]
    Left = 142
    Top = 256
    Width = 50
    Height = 13
    Caption = 'VL_JUROS'
  end
  object Label13: TLabel [11]
    Left = 314
    Top = 256
    Width = 72
    Height = 13
    Caption = 'TOTAL_PAGAR'
  end
  object Label6: TLabel [12]
    Left = 32
    Top = 203
    Width = 75
    Height = 13
    Caption = 'ID_SEQUENCIA'
  end
  inherited Panel1: TPanel
    Width = 759
    Height = 57
    ExplicitWidth = 759
    ExplicitHeight = 57
    inherited btn_novo: TBitBtn
      Left = 32
      Visible = False
      ExplicitLeft = 32
    end
    inherited btn_deletar: TBitBtn
      Left = 42
      Enabled = False
      Visible = False
      ExplicitLeft = 42
    end
    inherited btn_editar: TBitBtn
      Left = 100
      Top = 5
      ExplicitLeft = 100
      ExplicitTop = 5
    end
    inherited btn_gravar: TBitBtn
      Left = 238
      Visible = False
      ExplicitLeft = 238
    end
    inherited btn_cancelar: TBitBtn
      Left = 226
      Top = 5
      ExplicitLeft = 226
      ExplicitTop = 5
    end
    inherited btn_atualizar: TBitBtn
      Left = 362
      Top = 5
      ExplicitLeft = 362
      ExplicitTop = 5
    end
  end
  inherited Panel2: TPanel
    Top = 320
    Width = 759
    ExplicitTop = 320
    ExplicitWidth = 759
  end
  inherited DBNavigator1: TDBNavigator
    Left = 178
    Top = 328
    Hints.Strings = ()
    ExplicitLeft = 178
    ExplicitTop = 328
  end
  inherited BitBtn1: TBitBtn
    Left = 486
    Top = 5
    OnClick = BitBtn1Click
    ExplicitLeft = 486
    ExplicitTop = 5
  end
  inherited btn_sair: TBitBtn
    Left = 616
    Top = 5
    ExplicitLeft = 616
    ExplicitTop = 5
  end
  object RadioGroup1: TRadioGroup [18]
    Left = 8
    Top = 63
    Width = 743
    Height = 122
    Caption = 'DADOS DA COMPRA:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object RadioGroup2: TRadioGroup [19]
    Left = 8
    Top = 184
    Width = 743
    Height = 130
    Caption = 'DADOS DA PARCELA:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object DBEdit6: TDBEdit [20]
    Left = 32
    Top = 219
    Width = 86
    Height = 21
    DataField = 'ID_SEQUENCIA'
    DataSource = ds_pagar
    TabOrder = 7
  end
  object DBEdit7: TDBEdit [21]
    Left = 139
    Top = 219
    Width = 113
    Height = 21
    DataField = 'VALOR_PARCELA'
    DataSource = ds_pagar
    TabOrder = 8
  end
  object DBEdit8: TDBEdit [22]
    Left = 258
    Top = 219
    Width = 134
    Height = 21
    DataField = 'DT_VENCIMENTO'
    DataSource = ds_pagar
    TabOrder = 9
  end
  object DBEdit9: TDBEdit [23]
    Left = 398
    Top = 219
    Width = 134
    Height = 21
    DataField = 'DT_PAGAMENTO'
    DataSource = ds_pagar
    TabOrder = 10
    OnExit = DBEdit9Exit
  end
  object DBEdit10: TDBEdit [24]
    Left = 545
    Top = 219
    Width = 146
    Height = 21
    DataField = 'ATRASO'
    DataSource = ds_pagar
    TabOrder = 11
  end
  object DBEdit2: TDBEdit [25]
    Left = 549
    Top = 272
    Width = 143
    Height = 21
    DataField = 'STATUS'
    DataSource = ds_pagar
    TabOrder = 12
  end
  object DBEdit13: TDBEdit [26]
    Left = 314
    Top = 272
    Width = 219
    Height = 21
    DataField = 'TOTAL_PAGAR'
    DataSource = ds_pagar
    TabOrder = 13
  end
  object DBEdit12: TDBEdit [27]
    Left = 140
    Top = 272
    Width = 168
    Height = 21
    DataField = 'VL_JUROS'
    DataSource = ds_pagar
    TabOrder = 14
  end
  object DBEdit11: TDBEdit [28]
    Left = 33
    Top = 272
    Width = 85
    Height = 21
    DataField = 'JUROS'
    DataSource = ds_pagar
    TabOrder = 15
    OnExit = DBEdit11Exit
  end
  object DBEdit1: TDBEdit [29]
    Left = 31
    Top = 96
    Width = 86
    Height = 21
    DataField = 'ID_COMPRA'
    DataSource = ds_padrao
    TabOrder = 16
  end
  object DBEdit3: TDBEdit [30]
    Left = 31
    Top = 139
    Width = 86
    Height = 21
    DataField = 'ID_FORNECEDOR'
    DataSource = ds_padrao
    TabOrder = 17
  end
  object DBEdit4: TDBEdit [31]
    Left = 139
    Top = 139
    Width = 367
    Height = 21
    DataField = 'NOME'
    DataSource = ds_padrao
    TabOrder = 18
  end
  object DBEdit5: TDBEdit [32]
    Left = 512
    Top = 139
    Width = 179
    Height = 21
    DataField = 'CNPJ'
    DataSource = ds_padrao
    TabOrder = 19
  end
  inherited Q_padrao: TFDQuery
    SQL.Strings = (
      'SELECT '
      '     A.ID_COMPRA,'
      '     A.ID_FORNECEDOR,'
      '     B.NOME,'
      '     B.CNPJ /*,'
      '     C.ID_SEQUENCIA,'
      '     C.VALOR_PARCELA,'
      '     C.DT_VENCIMENTO,'
      '     C.DT_PAGAMENTO,'
      '     C.ATRASO,'
      '     C.JUROS,'
      '     C.VL_JUROS,'
      '     C.TOTAL_PAGAR,'
      '     C.STATUS */'
      'FROM COMPRA A'
      'INNER JOIN FORNECEDOR B ON B.ID_FORNECEDOR = A.ID_FORNECEDOR'
      'INNER JOIN CONTAS_PAGAR C ON C.ID_COMPRA = A.ID_COMPRA'
      'WHERE STATUS = '#39'EM ABERTO'#39
      'ORDER BY A.ID_COMPRA;')
    Left = 704
    Top = 72
    object Q_padraoID_COMPRA: TIntegerField
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    object Q_padraoCNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  inherited ds_padrao: TDataSource
    Left = 704
    Top = 128
  end
  object Q_pagar: TFDQuery
    IndexFieldNames = 'ID_COMPRA'
    MasterSource = ds_padrao
    MasterFields = 'ID_COMPRA'
    DetailFields = 'ID_COMPRA'
    Connection = DM.conexao
    SQL.Strings = (
      'SELECT '
      '     ID_SEQUENCIA,'
      '     ID_COMPRA,'
      '     VALOR_PARCELA,'
      '     DT_VENCIMENTO,'
      '     DT_PAGAMENTO,'
      '     ATRASO,'
      '     JUROS,'
      '     VL_JUROS,'
      '     TOTAL_PAGAR,'
      '     STATUS '
      'FROM CONTAS_PAGAR'
      '/*WHERE ID_COMPRA = :PID_COMPRA'
      'AND STATUS = '#39'EM ABERTO'#39'*/'
      'ORDER BY ID_COMPRA')
    Left = 512
    Top = 64
    object Q_pagarID_SEQUENCIA: TIntegerField
      FieldName = 'ID_SEQUENCIA'
      Origin = 'ID_SEQUENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_pagarID_COMPRA: TIntegerField
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_pagarVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      Origin = 'VALOR_PARCELA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_pagarDT_VENCIMENTO: TDateField
      FieldName = 'DT_VENCIMENTO'
      Origin = 'DT_VENCIMENTO'
      Required = True
    end
    object Q_pagarDT_PAGAMENTO: TDateField
      FieldName = 'DT_PAGAMENTO'
      Origin = 'DT_PAGAMENTO'
    end
    object Q_pagarATRASO: TIntegerField
      FieldName = 'ATRASO'
      Origin = 'ATRASO'
    end
    object Q_pagarJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Origin = 'JUROS'
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_pagarVL_JUROS: TFMTBCDField
      FieldName = 'VL_JUROS'
      Origin = 'VL_JUROS'
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_pagarTOTAL_PAGAR: TFMTBCDField
      FieldName = 'TOTAL_PAGAR'
      Origin = 'TOTAL_PAGAR'
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_pagarSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 30
    end
  end
  object ds_pagar: TDataSource
    DataSet = Q_pagar
    Left = 432
    Top = 72
  end
end
