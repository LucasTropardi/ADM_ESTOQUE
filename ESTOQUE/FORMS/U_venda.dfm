inherited Frm_venda: TFrm_venda
  Caption = 'CADASTRO DE VENDAS'
  ClientWidth = 928
  ExplicitWidth = 934
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 928
    ExplicitWidth = 928
  end
  inherited Panel2: TPanel
    Width = 928
    ExplicitWidth = 928
  end
  inherited DBNavigator1: TDBNavigator
    Left = 580
    Top = 585
    Hints.Strings = ()
    ExplicitLeft = 580
    ExplicitTop = 585
  end
  inherited BitBtn1: TBitBtn
    OnClick = BitBtn1Click
  end
  inherited Panel3: TPanel
    Width = 928
    Height = 112
    ExplicitWidth = 928
    ExplicitHeight = 112
    object Label1: TLabel
      Left = 48
      Top = 14
      Width = 50
      Height = 13
      Caption = 'ID_VENDA'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 48
      Top = 54
      Width = 58
      Height = 13
      Caption = 'ID_CLIENTE'
      FocusControl = db_id_cliente
    end
    object Label3: TLabel
      Left = 230
      Top = 13
      Width = 55
      Height = 13
      Caption = 'CADASTRO'
      FocusControl = db_cadastro
    end
    object Label4: TLabel
      Left = 366
      Top = 10
      Width = 46
      Height = 13
      Caption = 'USUARIO'
      FocusControl = db_usuario
    end
    object Label5: TLabel
      Left = 698
      Top = 13
      Width = 33
      Height = 13
      Caption = 'VALOR'
      FocusControl = db_valor
    end
    object Label7: TLabel
      Left = 230
      Top = 54
      Width = 41
      Height = 13
      Caption = 'CLIENTE'
      FocusControl = DBEdit7
    end
    object Label15: TLabel
      Left = 535
      Top = 13
      Width = 51
      Height = 13
      Caption = 'SUBTOTAL'
      FocusControl = db_usuario
    end
    object btn_check_cliente: TSpeedButton
      Left = 839
      Top = 70
      Width = 25
      Height = 21
      Glyph.Data = {
        6E070000424D6E07000000000000360000002800000016000000150000000100
        20000000000038070000C40E0000C40E00000000000000000000000000000000
        000000000000000000007F7F7F0682827525797F855A5674A797747E87699387
        762D6A6A7F0C0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00007F7F7F02000000001564E0540C57F3ED1A58E668000000007F7F7F020000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000048
        EC0E0052FDA70258FFFF0544FABD002CF3170000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000046FA6C004BFCF7004B
        FDFF0645FFFF0B3BF67300007F02000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000003FFA340040FDDB0040FFFF003BF9FF013FFFFF0737
        FBE50A2DEF320000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000026
        F2140032FDAF0038FFFF0032FCFF0032FAFF0032FCFF0334FFFF082CF6AB0048
        FE07000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000033FF050028FF78002AFDFD0029
        FCFE0028FEFF0026FFFF0026FBFF0029FEFF0528FAFD0A26F464000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000001FF84A0020FEEE0020FFFF001EFFFF001CFCFA0D26
        FCFA0622FFFF001CFCFF0120FFFF061FFBDD061EF22A00000000000000000000
        000000000000000000000000000000000000000000000000000000000000000E
        FE240013FCD10016FFFF0014FFFF0014FEEE000FFC712D39FC592030FEE20716
        FFFF0011FEFF0317FFFF0716F3AB002AD4060000000000000000000000000000
        0000000000000000000000000000000000000909FE1A0104FDAB000AFFFF0009
        FFFF0009FED50009FE4F0000FF03000000003439FC741C23FEF50308FFFF0007
        FFFF030DFBF9060DF17300000000000000000000000000000000000000000000
        000000000000000000001313FD801213FEFA0203FEFD0000FDB00000FE2D0000
        000000000000000000003F3FFF042F30FD8D1817FEFE0202FFFF0001FFFF0407
        FCE10307E7420000000000000000000000000000000000000000000000000000
        00002323F61D2222FD8E0B09FB880000EF100000000000000000000000000000
        0000000000003333FF0A2E2EFBA01616FFFF0101FFFF0001FFFF0507F4C50909
        D71A000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00003F3FF2142C2CFAAB1414FFFF0000FFFF0102FFFF0406EE9C0000D40C0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000003232
        F4192D2DFAAF1515FFFF0000FFFF0102FAF60406EE7800007F04000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000003838F51B2D2D
        FAAC1616FFFF0102FFFF0102FAE80505DF5A0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000003F3FF4182D2DFAA21919
        FFFF0202FFFF0001F0DE0307DB41000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000004343E4133030F6921C1CFBFD0405
        FFFF0001E3D60005DC3300000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000005555D40C3234F47A2020FDF20807FFFF0000
        E1CF0000D0310000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000006666CC053737F4602424FBE40D0DFFFF0000E2CE0000
        CF36000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000003838F0442929FCC50C0CFAFF0000E0D0000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000001C1CEB350A0AFCAE0101F196}
      OnClick = btn_check_clienteClick
    end
    object DBEdit1: TDBEdit
      Left = 48
      Top = 30
      Width = 158
      Height = 21
      DataField = 'ID_VENDA'
      DataSource = ds_padrao
      TabOrder = 0
    end
    object db_id_cliente: TDBEdit
      Left = 48
      Top = 70
      Width = 158
      Height = 21
      DataField = 'ID_CLIENTE'
      DataSource = ds_padrao
      TabOrder = 4
      OnExit = db_id_clienteExit
    end
    object db_cadastro: TDBEdit
      Left = 230
      Top = 29
      Width = 130
      Height = 21
      DataField = 'CADASTRO'
      DataSource = ds_padrao
      Enabled = False
      TabOrder = 1
    end
    object db_usuario: TDBEdit
      Left = 366
      Top = 29
      Width = 163
      Height = 21
      DataField = 'USUARIO'
      DataSource = ds_padrao
      Enabled = False
      TabOrder = 2
    end
    object db_valor: TDBEdit
      Left = 695
      Top = 29
      Width = 138
      Height = 21
      DataField = 'VALOR'
      DataSource = ds_padrao
      TabOrder = 3
    end
    object DBEdit7: TDBEdit
      Left = 230
      Top = 70
      Width = 603
      Height = 21
      DataField = 'CLIENTE'
      DataSource = ds_padrao
      TabOrder = 5
    end
    object db_subtotal: TDBEdit
      Left = 535
      Top = 29
      Width = 154
      Height = 21
      DataField = 'SUBTOTAL'
      DataSource = ds_padrao_item
      TabOrder = 6
    end
  end
  inherited Panel4: TPanel
    Width = 928
    ExplicitWidth = 928
    object Label10: TLabel
      Left = 48
      Top = 15
      Width = 66
      Height = 13
      Caption = 'ID_PRODUTO'
      FocusControl = db_id_produto
    end
    object Label11: TLabel
      Left = 226
      Top = 15
      Width = 27
      Height = 13
      Caption = 'QTDE'
      FocusControl = db_qtde
    end
    object Label12: TLabel
      Left = 355
      Top = 15
      Width = 50
      Height = 13
      Caption = 'VL_VENDA'
      FocusControl = db_vl_venda
    end
    object Label13: TLabel
      Left = 499
      Top = 15
      Width = 55
      Height = 13
      Caption = 'DESCONTO'
      FocusControl = db_desconto
    end
    object Label14: TLabel
      Left = 731
      Top = 15
      Width = 62
      Height = 13
      Caption = 'TOTAL_ITEM'
      FocusControl = db_total_item
    end
    object db_id_produto: TDBEdit
      Left = 48
      Top = 34
      Width = 172
      Height = 21
      DataField = 'ID_PRODUTO'
      DataSource = ds_padrao_item
      TabOrder = 0
      OnExit = db_id_produtoExit
    end
    object db_qtde: TDBEdit
      Left = 226
      Top = 34
      Width = 123
      Height = 21
      DataField = 'QTDE'
      DataSource = ds_padrao_item
      TabOrder = 1
      OnClick = db_qtdeClick
      OnExit = db_qtdeExit
    end
    object db_vl_venda: TDBEdit
      Left = 355
      Top = 34
      Width = 138
      Height = 21
      DataField = 'VL_VENDA'
      DataSource = ds_padrao_item
      TabOrder = 2
    end
    object db_desconto: TDBEdit
      Left = 499
      Top = 34
      Width = 114
      Height = 21
      DataField = 'DESCONTO'
      DataSource = ds_padrao_item
      TabOrder = 3
      OnClick = db_descontoClick
      OnExit = db_descontoExit
    end
    object db_total_item: TDBEdit
      Left = 731
      Top = 34
      Width = 119
      Height = 21
      DataField = 'TOTAL_ITEM'
      DataSource = ds_padrao_item
      TabOrder = 4
      OnExit = db_total_itemExit
    end
  end
  inherited btn_item: TBitBtn
    OnClick = btn_itemClick
  end
  inherited btn_ok: TBitBtn
    OnClick = btn_okClick
  end
  inherited btn_excluir: TBitBtn
    OnClick = btn_excluirClick
  end
  inherited btn_imprimir: TBitBtn
    OnClick = btn_imprimirClick
  end
  inherited PageControl1: TPageControl
    Top = 161
    Width = 928
    Height = 333
    ActivePage = item_compra
    ExplicitTop = 161
    ExplicitWidth = 928
    ExplicitHeight = 333
    inherited item_compra: TTabSheet
      ExplicitWidth = 920
      ExplicitHeight = 305
      inherited DBGrid1: TDBGrid
        Width = 920
        Height = 305
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_SEQUENCIA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_VENDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_PRODUTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_VENDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCONTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL_ITEM'
            Visible = True
          end>
      end
    end
    inherited contas_pagar: TTabSheet
      Caption = 'Contas_receber'
      ExplicitWidth = 920
      ExplicitHeight = 305
      inherited DBGrid2: TDBGrid
        Width = 920
        Height = 305
        DataSource = ds_conta_receber
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_SEQUENCIA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_VENDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_PARCELA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_VENCIMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ATRASO'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_PAGAMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_JUROS'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL_PAGAR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STATUS'
            Visible = True
          end>
      end
    end
  end
  inherited Q_padrao: TFDQuery
    Active = True
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_VENDA'
    UpdateOptions.AutoIncFields = 'ID_VENDA'
    SQL.Strings = (
      'SELECT'
      '     VENDA.ID_VENDA,'
      '     VENDA.ID_CLIENTE,'
      '     CLIENTE.NOME,'
      '     VENDA.ID_FORMA_PGTO,'
      '     VENDA.USUARIO,'
      '     VENDA.VALOR,'
      '     VENDA.CADASTRO,'
      '     VENDA.PARCELA,'
      '     VENDA.DINHEIRO,'
      '     VENDA.TROCO'
      'FROM VENDA INNER JOIN CLIENTE'
      'ON CLIENTE.ID_CLIENTE = VENDA.ID_CLIENTE;'
      '    ')
    object Q_padraoID_VENDA: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Q_padraoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      Required = True
    end
    object Q_padraoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Required = True
      Size = 100
    end
    object Q_padraoNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object Q_padraoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object Q_padraoCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIENTE'
      LookupDataSet = Q_cliente
      LookupKeyFields = 'ID_CLIENTE'
      LookupResultField = 'NOME'
      KeyFields = 'ID_CLIENTE'
      Size = 100
      Lookup = True
    end
    object Q_padraoDESCRICAO: TStringField
      FieldKind = fkLookup
      FieldName = 'DESCRICAO'
      LookupDataSet = Q_forma_pgto
      LookupKeyFields = 'ID_FORMA_PGTO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_FORMA_PGTO'
      Size = 100
      Lookup = True
    end
    object Q_padraoPARCELA: TIntegerField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
    end
    object Q_padraoDINHEIRO: TFMTBCDField
      FieldName = 'DINHEIRO'
      Origin = 'DINHEIRO'
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padraoTROCO: TFMTBCDField
      FieldName = 'TROCO'
      Origin = 'TROCO'
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padraoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
    end
  end
  inherited Q_padrao_item: TFDQuery
    Active = True
    IndexFieldNames = 'ID_VENDA'
    AggregatesActive = True
    MasterFields = 'ID_VENDA'
    DetailFields = 'ID_VENDA'
    Connection = DM.conexao
    SQL.Strings = (
      'SELECT '
      '     ITEM_VENDA.ID_SEQUENCIA,'
      '     ITEM_VENDA.ID_VENDA,'
      '     ITEM_VENDA.ID_PRODUTO,'
      '     PRODUTO.PRODUTO_DESCRICAO,'
      '     ITEM_VENDA.QTDE,'
      '     ITEM_VENDA.VL_VENDA,'
      '     ITEM_VENDA.DESCONTO,'
      '     ITEM_VENDA.TOTAL_ITEM'
      'FROM ITEM_VENDA INNER JOIN PRODUTO'
      'ON PRODUTO.ID_PRODUTO = ITEM_VENDA.ID_PRODUTO'
      'WHERE ID_VENDA = :ID_VENDA'
      'ORDER BY ID_SEQUENCIA;     ')
    ParamData = <
      item
        Name = 'ID_VENDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 17
      end>
    object Q_padrao_itemID_SEQUENCIA: TIntegerField
      FieldName = 'ID_SEQUENCIA'
      Origin = 'ID_SEQUENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_padrao_itemID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_padrao_itemID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object Q_padrao_itemPRODUTO_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO_DESCRICAO'
      Origin = 'PRODUTO_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object Q_padrao_itemQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Required = True
      OnValidate = Q_padrao_itemQTDEValidate
      Precision = 18
      Size = 2
    end
    object Q_padrao_itemVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Origin = 'VL_VENDA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padrao_itemDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padrao_itemTOTAL_ITEM: TFMTBCDField
      FieldName = 'TOTAL_ITEM'
      Origin = 'TOTAL_ITEM'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padrao_itemSUBTOTAL: TAggregateField
      FieldName = 'SUBTOTAL'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(TOTAL_ITEM)'
    end
  end
  object Q_cliente: TFDQuery
    Active = True
    Connection = DM.conexao
    SQL.Strings = (
      'SELECT'
      '     ID_CLIENTE,'
      '     NOME'
      'FROM CLIENTE'
      'ORDER BY ID_CLIENTE;')
    Left = 760
    Top = 208
    object Q_clienteID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_clienteNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
  end
  object Q_forma_pgto: TFDQuery
    Active = True
    Connection = DM.conexao
    SQL.Strings = (
      'SELECT '
      '     ID_FORMA_PGTO,'
      '     DESCRICAO'
      'FROM FORMA_PGTO'
      'ORDER BY ID_FORMA_PGTO;')
    Left = 696
    Top = 208
  end
  object ds_cliente: TDataSource
    DataSet = Q_cliente
    Left = 760
    Top = 264
  end
  object ds_forma_pgto: TDataSource
    DataSet = Q_forma_pgto
    Left = 696
    Top = 264
  end
  object Q_produto: TFDQuery
    Active = True
    Connection = DM.conexao
    SQL.Strings = (
      'SELECT'
      '     ID_PRODUTO,'
      '     PRODUTO_DESCRICAO,'
      '     ESTOQUE,'
      '     ESTOQUE_MIN,'
      '     VL_VENDA'
      'FROM PRODUTO'
      'ORDER BY ID_PRODUTO')
    Left = 760
    Top = 320
    object Q_produtoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_produtoPRODUTO_DESCRICAO: TStringField
      FieldName = 'PRODUTO_DESCRICAO'
      Origin = 'PRODUTO_DESCRICAO'
      Required = True
      Size = 100
    end
    object Q_produtoESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Required = True
      Precision = 18
      Size = 2
    end
    object Q_produtoESTOQUE_MIN: TFMTBCDField
      FieldName = 'ESTOQUE_MIN'
      Origin = 'ESTOQUE_MIN'
      Required = True
      Precision = 18
      Size = 2
    end
    object Q_produtoVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Origin = 'VL_VENDA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object ds_produto: TDataSource
    DataSet = Q_produto
    Left = 760
    Top = 384
  end
  object Q_conta_receber: TFDQuery
    IndexFieldNames = 'ID_VENDA'
    MasterSource = ds_padrao
    MasterFields = 'ID_VENDA'
    DetailFields = 'ID_VENDA'
    Connection = DM.conexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT'
      '     ID_SEQUENCIA,'
      '     ID_VENDA,'
      '     VALOR_PARCELA,'
      '     DT_VENCIMENTO,'
      '     ATRASO,'
      '     DT_PAGAMENTO,'
      '     VL_JUROS,'
      '     TOTAL_PAGAR,'
      '     STATUS'
      'FROM CONTAS_RECEBER'
      'WHERE ID_VENDA = :ID_VENDA'
      'ORDER BY ID_SEQUENCIA;')
    Left = 688
    Top = 328
    ParamData = <
      item
        Name = 'ID_VENDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 2
      end>
    object Q_conta_receberID_SEQUENCIA: TIntegerField
      FieldName = 'ID_SEQUENCIA'
      Origin = 'ID_SEQUENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_conta_receberID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_conta_receberVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      Origin = 'VALOR_PARCELA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_conta_receberDT_VENCIMENTO: TDateField
      FieldName = 'DT_VENCIMENTO'
      Origin = 'DT_VENCIMENTO'
      Required = True
    end
    object Q_conta_receberDT_PAGAMENTO: TDateField
      FieldName = 'DT_PAGAMENTO'
      Origin = 'DT_PAGAMENTO'
    end
    object Q_conta_receberVL_JUROS: TFMTBCDField
      FieldName = 'VL_JUROS'
      Origin = 'VL_JUROS'
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_conta_receberTOTAL_PAGAR: TFMTBCDField
      FieldName = 'TOTAL_PAGAR'
      Origin = 'TOTAL_PAGAR'
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_conta_receberSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 30
    end
    object Q_conta_receberATRASO: TIntegerField
      FieldName = 'ATRASO'
      Origin = 'ATRASO'
    end
  end
  object ds_conta_receber: TDataSource
    DataSet = Q_conta_receber
    Left = 688
    Top = 384
  end
  object Q_empresa: TFDQuery
    Active = True
    Connection = DM.conexao
    SQL.Strings = (
      'SELECT ID_EMPRESA,'
      '       RAZAO_SOCIAL,'
      '       N_FANTASIA,'
      '       ENDERECO,'
      '       NUMERO,'
      '       BAIRRO,'
      '       CIDADE,'
      '       UF,'
      '       CEP,'
      '       TELEFONE,'
      '       CNPJ,'
      '       EMAIL,'
      '       LOGO,'
      '       CADASTRO'
      'FROM EMPRESA')
    Left = 604
    Top = 281
    object Q_empresaID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_empresaRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Required = True
      Size = 100
    end
    object Q_empresaN_FANTASIA: TStringField
      FieldName = 'N_FANTASIA'
      Origin = 'N_FANTASIA'
      Required = True
      Size = 100
    end
    object Q_empresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
    object Q_empresaNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object Q_empresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 100
    end
    object Q_empresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 100
    end
    object Q_empresaUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object Q_empresaCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 15
    end
    object Q_empresaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      Size = 15
    end
    object Q_empresaCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
    end
    object Q_empresaEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
    end
    object Q_empresaLOGO: TBlobField
      FieldName = 'LOGO'
      Origin = 'LOGO'
    end
    object Q_empresaCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  object ds_empresa: TDataSource
    DataSet = Q_empresa
    Left = 604
    Top = 337
  end
  object frx_padrao: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'frx_padrao'
    CloseDataSource = False
    DataSet = Q_padrao
    BCDToCurrency = False
    DataSetOptions = []
    Left = 492
    Top = 313
  end
  object frx_empresa: TfrxDBDataset
    UserName = 'frx_empresa'
    CloseDataSource = False
    DataSet = Q_empresa
    BCDToCurrency = False
    DataSetOptions = []
    Left = 492
    Top = 409
  end
  object frx_padrao_item: TfrxDBDataset
    UserName = 'frx_padrao_item'
    CloseDataSource = False
    DataSet = Q_padrao_item
    BCDToCurrency = False
    DataSetOptions = []
    Left = 492
    Top = 361
  end
  object Rel_recibo_venda: TfrxReport
    Version = '2023.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44940.909268645800000000
    ReportOptions.LastChange = 44996.676559768520000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 492
    Top = 265
    Datasets = <
      item
        DataSet = frx_padrao
        DataSetName = 'frx_padrao'
      end
      item
        DataSet = frx_empresa
        DataSetName = 'frx_empresa'
      end
      item
        DataSet = frx_padrao_item
        DataSetName = 'frx_padrao_item'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 143.622140000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 7.559060000000000000
          Width = 132.283550000000000000
          Height = 124.724490000000000000
          DataField = 'LOGO'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object frx_empresaRAZAO_SOCIAL: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 257.008040000000000000
          Top = 7.559060000000000000
          Width = 309.921460000000000000
          Height = 18.897650000000000000
          DataField = 'RAZAO_SOCIAL'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."RAZAO_SOCIAL"]')
          ParentFont = False
        end
        object frx_empresaENDERECO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 238.110390000000000000
          Top = 45.354360000000000000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          DataField = 'ENDERECO'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."ENDERECO"]')
        end
        object frx_empresaNUMERO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 510.236550000000000000
          Top = 45.354360000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'NUMERO'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."NUMERO"]')
        end
        object frx_empresaBAIRRO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 68.031540000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'BAIRRO'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."BAIRRO"]')
        end
        object frx_empresaCIDADE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 400.630180000000000000
          Top = 68.031540000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'CIDADE'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."CIDADE"]')
        end
        object frx_empresaUF: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 517.795610000000000000
          Top = 68.031540000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'UF'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."UF"]')
        end
        object frx_empresaCEP: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 215.433210000000000000
          Top = 90.708720000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'CEP'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."CEP"]')
        end
        object frx_empresaTELEFONE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 90.708720000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONE'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."TELEFONE"]')
        end
        object frx_empresaEMAIL: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 222.992270000000000000
          Top = 113.385900000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          DataField = 'EMAIL'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."EMAIL"]')
        end
        object frx_empresaCNPJ: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 26.456710000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          DataField = 'CNPJ'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."CNPJ"]')
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858380000000000000
          Top = 7.559060000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Raz'#227'o social:')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858380000000000000
          Top = 45.354360000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Endere'#231'o:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 45.354360000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#186)
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858380000000000000
          Top = 68.031540000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Bairro:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 351.496290000000000000
          Top = 68.031540000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cidade:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 68.031540000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858380000000000000
          Top = 90.708720000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362400000000000000
          Top = 90.708720000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Telefone:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858380000000000000
          Top = 113.385900000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'E-mail:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858380000000000000
          Top = 26.456710000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ:')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 185.196970000000000000
        Width = 718.110700000000000000
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Top = 7.559060000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Venda')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 52.913420000000000000
          Top = 7.559060000000000000
          Width = 415.748300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 498.897960000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Data')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897637795275600000
        Top = 272.126160000000000000
        Width = 718.110700000000000000
        DataSet = frx_padrao
        DataSetName = 'frx_padrao'
        RowCount = 0
        object frx_padraoID_VENDA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'ID_VENDA'
          DataSet = frx_padrao
          DataSetName = 'frx_padrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_padrao."ID_VENDA"]')
          ParentFont = False
        end
        object frx_padraoNOME: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 52.913420000000000000
          Width = 415.748300000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = frx_padrao
          DataSetName = 'frx_padrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_padrao."NOME"]')
          ParentFont = False
        end
        object frx_padraoVALOR: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 468.661720000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR'
          DataSet = frx_padrao
          DataSetName = 'frx_padrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_padrao."VALOR"]')
          ParentFont = False
        end
        object frx_padraoCADASTRO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 616.063390000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'CADASTRO'
          DataSet = frx_padrao
          DataSetName = 'frx_padrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_padrao."CADASTRO"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897637795275600000
        Top = 638.740570000000000000
        Width = 718.110700000000000000
        object frx_empresaRAZAO_SOCIAL1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          DataField = 'RAZAO_SOCIAL'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_empresa."RAZAO_SOCIAL"]')
          ParentFont = False
        end
        object frx_empresaCNPJ1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 234.330860000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'CNPJ'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_empresa."CNPJ"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 185.196970000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CNPJ:')
          ParentFont = False
        end
        object Page: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 687.874460000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
        end
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 559.370440000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 657.638220000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Pag')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 64.252010000000000000
        Top = 313.700990000000000000
        Width = 718.110700000000000000
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Top = 22.677180000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Produtos')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 45.354360000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Seq')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 56.692950000000000000
          Top = 45.354360000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Id')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 45.354360000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Item')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 45.354360000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'QTDE')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 517.795610000000000000
          Top = 45.354360000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Pre'#231'o')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 45.354360000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897637800000000000
        Top = 400.630180000000000000
        Width = 718.110700000000000000
        DataSet = frx_padrao_item
        DataSetName = 'frx_padrao_item'
        RowCount = 0
        object frx_padrao_itemID_SEQUENCIA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'ID_SEQUENCIA'
          DataSet = frx_padrao_item
          DataSetName = 'frx_padrao_item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_padrao_item."ID_SEQUENCIA"]')
          ParentFont = False
        end
        object frx_padrao_itemID_PRODUTO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 37.795300000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'ID_PRODUTO'
          DataSet = frx_padrao_item
          DataSetName = 'frx_padrao_item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_padrao_item."ID_PRODUTO"]')
          ParentFont = False
        end
        object frx_padrao_itemPRODUTO_DESCRICAO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 90.708720000000000000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          DataField = 'PRODUTO_DESCRICAO'
          DataSet = frx_padrao_item
          DataSetName = 'frx_padrao_item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frx_padrao_item."PRODUTO_DESCRICAO"]')
          ParentFont = False
        end
        object frx_padrao_itemQTDE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 396.850650000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'QTDE'
          DataSet = frx_padrao_item
          DataSetName = 'frx_padrao_item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_padrao_item."QTDE"]')
          ParentFont = False
        end
        object frx_padrao_itemVL_VENDA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 468.661720000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DataField = 'VL_VENDA'
          DataSet = frx_padrao_item
          DataSetName = 'frx_padrao_item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_padrao_item."VL_VENDA"]')
          ParentFont = False
        end
        object frx_padrao_itemTOTAL_ITEM: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 608.504330000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL_ITEM'
          DataSet = frx_padrao_item
          DataSetName = 'frx_padrao_item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_padrao_item."TOTAL_ITEM"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 136.063080000000000000
        Top = 480.000310000000000000
        Width = 718.110700000000000000
        object frx_padraoVALOR1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 393.071120000000000000
          Top = 109.606370000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR'
          DataSet = frx_padrao
          DataSetName = 'frx_padrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_padrao."VALOR"]')
          ParentFont = False
        end
        object frx_padraoDINHEIRO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 502.677490000000000000
          Top = 109.606370000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'DINHEIRO'
          DataSet = frx_padrao
          DataSetName = 'frx_padrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_padrao."DINHEIRO"]')
          ParentFont = False
        end
        object frx_padraoTROCO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 612.283860000000000000
          Top = 109.606370000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'TROCO'
          DataSet = frx_padrao
          DataSetName = 'frx_padrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_padrao."TROCO"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 650.079160000000000000
          Top = 83.149660000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Troco')
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 521.575140000000000000
          Top = 83.149660000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor pago')
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 419.527830000000000000
          Top = 83.149660000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor total')
        end
      end
    end
  end
end
