inherited Frm_compra01: TFrm_compra01
  Caption = 'CADASTRO DE COMPRAS'
  PixelsPerInch = 96
  TextHeight = 13
  inherited DBNavigator1: TDBNavigator
    Hints.Strings = ()
  end
  inherited BitBtn1: TBitBtn
    OnClick = BitBtn1Click
  end
  inherited Panel3: TPanel
    Height = 176
    ExplicitHeight = 176
    object Label1: TLabel
      Left = 88
      Top = 16
      Width = 60
      Height = 13
      Caption = 'ID_COMPRA'
      FocusControl = db_id_compra
    end
    object Label2: TLabel
      Left = 88
      Top = 62
      Width = 86
      Height = 13
      Caption = 'ID_FORNECEDOR'
      FocusControl = db_id_fornecedor
    end
    object Label3: TLabel
      Left = 88
      Top = 112
      Width = 86
      Height = 13
      Caption = 'ID_FORMA_PGTO'
      FocusControl = db_id_forma_pgto
    end
    object Label4: TLabel
      Left = 240
      Top = 16
      Width = 55
      Height = 13
      Caption = 'CADASTRO'
      FocusControl = db_cadastro
    end
    object Label5: TLabel
      Left = 366
      Top = 16
      Width = 46
      Height = 13
      Caption = 'USUARIO'
      FocusControl = db_usuario
    end
    object Label6: TLabel
      Left = 680
      Top = 16
      Width = 33
      Height = 13
      Caption = 'VALOR'
      FocusControl = db_valor
    end
    object Label7: TLabel
      Left = 240
      Top = 62
      Width = 29
      Height = 13
      Caption = 'NOME'
    end
    object Label8: TLabel
      Left = 240
      Top = 112
      Width = 59
      Height = 13
      Caption = 'DESCRICAO'
    end
    object Label14: TLabel
      Left = 520
      Top = 16
      Width = 51
      Height = 13
      Caption = 'SUBTOTAL'
      FocusControl = db_usuario
    end
    object Label15: TLabel
      Left = 680
      Top = 112
      Width = 62
      Height = 13
      Caption = 'COND_PGTO'
      FocusControl = db_cond_pgto
    end
    object btn_check_fornecedor: TSpeedButton
      Left = 839
      Top = 78
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
      OnClick = btn_check_fornecedorClick
    end
    object btn_busca_forma_pgto: TSpeedButton
      Left = 839
      Top = 128
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
      OnClick = btn_busca_forma_pgtoClick
    end
    object db_id_compra: TDBEdit
      Left = 88
      Top = 32
      Width = 134
      Height = 21
      DataField = 'ID_COMPRA'
      DataSource = ds_padrao
      TabOrder = 0
    end
    object db_id_fornecedor: TDBEdit
      Left = 88
      Top = 78
      Width = 134
      Height = 21
      DataField = 'ID_FORNECEDOR'
      DataSource = ds_padrao
      TabOrder = 4
    end
    object db_id_forma_pgto: TDBEdit
      Left = 88
      Top = 128
      Width = 134
      Height = 21
      DataField = 'ID_FORMA_PGTO'
      DataSource = ds_padrao
      TabOrder = 5
      OnExit = db_id_forma_pgtoExit
    end
    object db_cadastro: TDBEdit
      Left = 240
      Top = 32
      Width = 120
      Height = 21
      DataField = 'CADASTRO'
      DataSource = ds_padrao
      TabOrder = 1
    end
    object db_usuario: TDBEdit
      Left = 366
      Top = 32
      Width = 148
      Height = 21
      DataField = 'USUARIO'
      DataSource = ds_padrao
      Enabled = False
      TabOrder = 2
    end
    object db_valor: TDBEdit
      Left = 680
      Top = 32
      Width = 154
      Height = 21
      DataField = 'VALOR'
      DataSource = ds_padrao
      TabOrder = 3
    end
    object db_subtotal: TDBEdit
      Left = 520
      Top = 32
      Width = 154
      Height = 21
      DataField = 'SUBTOTAL'
      DataSource = ds_padrao_item
      TabOrder = 6
    end
    object db_cond_pgto: TDBEdit
      Left = 680
      Top = 128
      Width = 153
      Height = 21
      DataField = 'COND_PGTO'
      DataSource = ds_padrao
      TabOrder = 7
      OnExit = db_cond_pgtoExit
    end
  end
  inherited Panel4: TPanel
    object Label9: TLabel
      Left = 16
      Top = 39
      Width = 66
      Height = 13
      Caption = 'ID_PRODUTO'
      FocusControl = db_id_produto
    end
    object Label10: TLabel
      Left = 172
      Top = 39
      Width = 27
      Height = 13
      Caption = 'QTDE'
      FocusControl = db_qtde
    end
    object Label12: TLabel
      Left = 831
      Top = 39
      Width = 62
      Height = 13
      Caption = 'TOTAL_ITEM'
      FocusControl = db_total_item
    end
    object Label11: TLabel
      Left = 301
      Top = 39
      Width = 51
      Height = 13
      Caption = 'VL_CUSTO'
      FocusControl = dv_vl_custo
    end
    object Label13: TLabel
      Left = 445
      Top = 39
      Width = 55
      Height = 13
      Caption = 'DESCONTO'
      FocusControl = db_desconto
    end
    object db_id_produto: TDBEdit
      Left = 16
      Top = 58
      Width = 150
      Height = 21
      DataField = 'ID_PRODUTO'
      DataSource = ds_padrao_item
      TabOrder = 0
      OnExit = db_id_produtoExit
    end
    object db_qtde: TDBEdit
      Left = 172
      Top = 58
      Width = 123
      Height = 21
      DataField = 'QTDE'
      DataSource = ds_padrao_item
      TabOrder = 1
      OnClick = db_qtdeClick
      OnExit = db_qtdeExit
    end
    object DBEdit3: TDBEdit
      Left = 504
      Top = 88
      Width = 251
      Height = 21
      DataField = 'VL_CUSTO'
      DataSource = ds_padrao_item
      TabOrder = 2
    end
    object db_total_item: TDBEdit
      Left = 831
      Top = 58
      Width = 119
      Height = 21
      DataField = 'TOTAL_ITEM'
      DataSource = ds_padrao_item
      TabOrder = 3
      OnExit = db_total_itemExit
    end
    object dv_vl_custo: TDBEdit
      Left = 301
      Top = 58
      Width = 138
      Height = 21
      DataField = 'VL_CUSTO'
      DataSource = ds_padrao_item
      TabOrder = 4
    end
    object db_desconto: TDBEdit
      Left = 445
      Top = 58
      Width = 114
      Height = 21
      DataField = 'DESCONTO'
      DataSource = ds_padrao_item
      TabOrder = 5
      OnClick = db_descontoClick
      OnExit = db_descontoExit
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
  object db_nome: TDBLookupComboBox [11]
    Left = 240
    Top = 127
    Width = 593
    Height = 21
    DataField = 'NOME'
    DataSource = ds_padrao
    TabOrder = 11
  end
  object db_descricao: TDBLookupComboBox [12]
    Left = 240
    Top = 177
    Width = 434
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = ds_padrao
    TabOrder = 12
  end
  inherited PageControl1: TPageControl
    Top = 225
    Height = 269
    ActivePage = item_compra
    TabOrder = 13
    ExplicitTop = 225
    ExplicitHeight = 269
    inherited item_compra: TTabSheet
      ExplicitHeight = 241
      inherited DBGrid1: TDBGrid
        Height = 241
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_SEQUENCIA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_COMPRA'
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
            FieldName = 'VL_CUSTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL_ITEM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCONTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Visible = True
          end>
      end
    end
    inherited contas_pagar: TTabSheet
      ExplicitHeight = 241
      inherited DBGrid2: TDBGrid
        Height = 241
        DataSource = ds_conta_pagar
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_SEQUENCIA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_COMPRA'
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
            FieldName = 'DT_PAGAMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ATRASO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'JUROS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_JUROS'
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
    UpdateOptions.GeneratorName = 'GEN_ID_COMPRA'
    UpdateOptions.AutoIncFields = 'ID_COMPRA'
    SQL.Strings = (
      'SELECT '
      '     A.ID_COMPRA,'
      '     A.ID_FORNECEDOR,'
      '     B.NOME,'
      '     A.ID_FORMA_PGTO,'
      '     A.COND_PGTO,'
      '     C.DESCRICAO,'
      '     A.USUARIO,'
      '     A.VALOR,A.CADASTRO'
      'FROM COMPRA A inner join FORNECEDOR B '
      'on B.ID_FORNECEDOR = A.ID_FORNECEDOR'
      'inner join FORMA_PGTO C '
      'on C.ID_FORMA_PGTO = A.ID_FORMA_PGTO')
    Left = 936
    Top = 232
    object Q_padraoID_COMPRA: TFDAutoIncField
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Q_padraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object Q_padraoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      Required = True
    end
    object Q_padraoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Required = True
      Size = 100
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object Q_padraoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padraoNOME: TStringField
      FieldKind = fkLookup
      FieldName = 'NOME'
      LookupDataSet = Q_fornecedor
      LookupKeyFields = 'ID_FORNECEDOR'
      LookupResultField = 'NOME'
      KeyFields = 'ID_FORNECEDOR'
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
      Size = 60
      Lookup = True
    end
    object Q_padraoCOND_PGTO: TIntegerField
      FieldName = 'COND_PGTO'
      Origin = 'COND_PGTO'
    end
  end
  inherited ds_padrao: TDataSource
    Left = 936
    Top = 296
  end
  inherited Q_padrao_item: TFDQuery
    Active = True
    IndexFieldNames = 'ID_COMPRA'
    AggregatesActive = True
    MasterFields = 'ID_COMPRA'
    DetailFields = 'ID_COMPRA'
    Connection = DM.conexao
    SQL.Strings = (
      'SELECT'
      '     ID_SEQUENCIA,'
      '     ID_COMPRA,'
      '     ID_PRODUTO,'
      '     QTDE,'
      '     VL_CUSTO,'
      '     DESCONTO,'
      '     TOTAL_ITEM'
      'FROM ITEM_COMPRA'
      'WHERE ID_COMPRA = :ID_COMPRA')
    Left = 936
    Top = 368
    ParamData = <
      item
        Name = 'ID_COMPRA'
        DataType = ftAutoInc
        ParamType = ptInput
        Value = 6
      end>
    object Q_padrao_itemID_SEQUENCIA: TIntegerField
      FieldName = 'ID_SEQUENCIA'
      Origin = 'ID_SEQUENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_padrao_itemID_COMPRA: TIntegerField
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_padrao_itemID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object Q_padrao_itemQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Required = True
      Precision = 18
      Size = 2
    end
    object Q_padrao_itemVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
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
    object Q_padrao_itemDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padrao_itemDESCRICAO: TStringField
      FieldKind = fkLookup
      FieldName = 'DESCRICAO'
      LookupDataSet = Q_produto
      LookupKeyFields = 'ID_PRODUTO'
      LookupResultField = 'PRODUTO_DESCRICAO'
      KeyFields = 'ID_PRODUTO'
      Size = 100
      Lookup = True
    end
    object Q_padrao_itemSUBTOTAL: TAggregateField
      FieldName = 'SUBTOTAL'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(TOTAL_ITEM)'
    end
  end
  inherited ds_padrao_item: TDataSource
    Left = 936
    Top = 424
  end
  object Q_fornecedor: TFDQuery
    Active = True
    Connection = DM.conexao
    SQL.Strings = (
      'SELECT ID_FORNECEDOR, NOME FROM FORNECEDOR'
      'ORDER BY ID_FORNECEDOR')
    Left = 616
    Top = 336
    object Q_fornecedorID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_fornecedorNOME: TStringField
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
      'SELECT ID_FORMA_PGTO,DESCRICAO'
      'FROM FORMA_PGTO'
      'ORDER BY ID_FORMA_PGTO')
    Left = 704
    Top = 272
    object Q_forma_pgtoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_forma_pgtoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
  end
  object ds_fornecedor: TDataSource
    DataSet = Q_fornecedor
    Left = 704
    Top = 328
  end
  object ds_forma_pgto: TDataSource
    DataSet = Q_forma_pgto
    Left = 608
    Top = 280
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
      '     VL_CUSTO'
      'FROM PRODUTO'
      'ORDER BY ID_PRODUTO')
    Left = 864
    Top = 240
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
    object Q_produtoVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object Rel_recibo_compra: TfrxReport
    Version = '2023.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44940.905863229200000000
    ReportOptions.LastChange = 44940.905863229200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 760
    Top = 448
    Datasets = <
      item
        DataSet = Frm_venda.frx_padrao
        DataSetName = 'frx_padrao'
      end
      item
        DataSet = Frm_venda.frx_empresa
        DataSetName = 'frx_empresa'
      end
      item
        DataSet = Frm_venda.frx_padrao_item
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
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 196.535560000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 30.236240000000000000
          Top = 18.897650000000000000
          Width = 151.181200000000000000
          Height = 147.401670000000000000
          DataField = 'LOGO'
          DataSet = Frm_venda.frx_empresa
          DataSetName = 'frx_empresa'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 275.905690000000000000
        Width = 718.110700000000000000
        RowCount = 0
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 359.055350000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
    end
  end
  object frxDBD_Q_padrao: TfrxDBDataset
    UserName = 'frxDBD_Q_padrao'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_COMPRA=ID_COMPRA'
      'ID_FORNECEDOR=ID_FORNECEDOR'
      'ID_FORMA_PGTO=ID_FORMA_PGTO'
      'USUARIO=USUARIO'
      'CADASTRO=CADASTRO'
      'VALOR=VALOR'
      'NOME=NOME'
      'DESCRICAO=DESCRICAO')
    DataSource = ds_padrao
    BCDToCurrency = False
    DataSetOptions = []
    Left = 784
    Top = 328
  end
  object Fd_empresa: TFDQuery
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
    Left = 792
    Top = 272
    object Fd_empresaID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Fd_empresaRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Required = True
      Size = 100
    end
    object Fd_empresaN_FANTASIA: TStringField
      FieldName = 'N_FANTASIA'
      Origin = 'N_FANTASIA'
      Required = True
      Size = 100
    end
    object Fd_empresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
    object Fd_empresaNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object Fd_empresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 100
    end
    object Fd_empresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 100
    end
    object Fd_empresaUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object Fd_empresaCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 15
    end
    object Fd_empresaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      Size = 15
    end
    object Fd_empresaCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
    end
    object Fd_empresaEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
    end
    object Fd_empresaLOGO: TBlobField
      FieldName = 'LOGO'
      Origin = 'LOGO'
    end
    object Fd_empresaCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  object ds_empresa: TDataSource
    Left = 840
    Top = 368
  end
  object frxDBD_empresa: TfrxDBDataset
    UserName = 'fd_empresa'
    CloseDataSource = False
    DataSet = Fd_empresa
    BCDToCurrency = False
    DataSetOptions = []
    Left = 840
    Top = 304
  end
  object frxDBD_padrao_item: TfrxDBDataset
    UserName = 'frxDBD_padrao_item'
    CloseDataSource = False
    DataSet = Q_padrao_item
    BCDToCurrency = False
    DataSetOptions = []
    Left = 776
    Top = 384
  end
  object frxDBD_recibo_compra: TfrxDBDataset
    UserName = 'frxDBD_recibo_compra'
    CloseDataSource = False
    DataSet = Q_padrao
    BCDToCurrency = False
    DataSetOptions = []
    Left = 848
    Top = 440
  end
  object Q_conta_pagar: TFDQuery
    Active = True
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
      '     STATUS'
      'FROM CONTAS_PAGAR'
      'WHERE ID_COMPRA = :ID_COMPRA')
    Left = 664
    Top = 384
    ParamData = <
      item
        Name = 'ID_COMPRA'
        DataType = ftAutoInc
        ParamType = ptInput
        Value = 6
      end>
    object Q_conta_pagarID_SEQUENCIA: TIntegerField
      FieldName = 'ID_SEQUENCIA'
      Origin = 'ID_SEQUENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_conta_pagarID_COMPRA: TIntegerField
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_conta_pagarVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      Origin = 'VALOR_PARCELA'
      Required = True
      Precision = 18
      Size = 2
    end
    object Q_conta_pagarDT_VENCIMENTO: TDateField
      FieldName = 'DT_VENCIMENTO'
      Origin = 'DT_VENCIMENTO'
      Required = True
    end
    object Q_conta_pagarDT_PAGAMENTO: TDateField
      FieldName = 'DT_PAGAMENTO'
      Origin = 'DT_PAGAMENTO'
    end
    object Q_conta_pagarATRASO: TIntegerField
      FieldName = 'ATRASO'
      Origin = 'ATRASO'
    end
    object Q_conta_pagarJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Origin = 'JUROS'
      Precision = 18
      Size = 2
    end
    object Q_conta_pagarVL_JUROS: TFMTBCDField
      FieldName = 'VL_JUROS'
      Origin = 'VL_JUROS'
      Precision = 18
      Size = 2
    end
    object Q_conta_pagarTOTAL_PAGAR: TFMTBCDField
      FieldName = 'TOTAL_PAGAR'
      Origin = 'TOTAL_PAGAR'
      Precision = 18
      Size = 2
    end
    object Q_conta_pagarSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 30
    end
  end
  object ds_conta_pagar: TDataSource
    DataSet = Q_conta_pagar
    Left = 672
    Top = 456
  end
end
