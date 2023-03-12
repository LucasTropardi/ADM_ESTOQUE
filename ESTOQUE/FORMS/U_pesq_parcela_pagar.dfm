inherited Frm_pesq_parcela_pagar: TFrm_pesq_parcela_pagar
  Caption = 'PESQUISA PARCELAS A PAGAR'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited lb_inicio: TLabel
      Visible = False
    end
    inherited lb_fim: TLabel
      Visible = False
    end
    inherited cb_chave_pesquisa: TComboBox
      OnClick = cb_chave_pesquisaClick
      Items.Strings = (
        'C'#211'DIGO FORNECEDOR'
        'NOME FORNECEDOR'
        'TODAS')
    end
    inherited mk_inicio: TMaskEdit
      Visible = False
    end
    inherited mk_fim: TMaskEdit
      Visible = False
    end
  end
  inherited Panel2: TPanel
    inherited lb_resultado: TLabel
      Enabled = False
      Visible = False
    end
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited btn_pesquisar: TBitBtn
    OnClick = btn_pesquisarClick
  end
  inherited btn_transferir: TBitBtn
    OnClick = btn_transferirClick
  end
  inherited btn_imprimir: TBitBtn
    OnClick = btn_imprimirClick
  end
  inherited DBGrid1: TDBGrid
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_COMPRA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_FORNECEDOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 230
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_SEQUENCIA'
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
  inherited Q_pesq_padrao: TFDQuery
    SQL.Strings = (
      'SELECT '
      '     A.ID_COMPRA,'
      '     A.ID_FORNECEDOR,'
      '     B.NOME,'
      '     B.CNPJ,'
      '     C.ID_SEQUENCIA,'
      '     C.VALOR_PARCELA,'
      '     C.DT_VENCIMENTO,'
      '     C.DT_PAGAMENTO,'
      '     C.ATRASO,'
      '     C.JUROS,'
      '     C.VL_JUROS,'
      '     C.TOTAL_PAGAR,'
      '     C.STATUS'
      'FROM COMPRA A'
      'INNER JOIN FORNECEDOR B ON B.ID_FORNECEDOR = A.ID_FORNECEDOR'
      'INNER JOIN CONTAS_PAGAR C ON C.ID_COMPRA = A.ID_COMPRA'
      'ORDER BY A.ID_COMPRA;')
    object Q_pesq_padraoID_COMPRA: TIntegerField
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_pesq_padraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object Q_pesq_padraoNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object Q_pesq_padraoCNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q_pesq_padraoID_SEQUENCIA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_SEQUENCIA'
      Origin = 'ID_SEQUENCIA'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q_pesq_padraoVALOR_PARCELA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_PARCELA'
      Origin = 'VALOR_PARCELA'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_pesq_padraoDT_VENCIMENTO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DT_VENCIMENTO'
      Origin = 'DT_VENCIMENTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q_pesq_padraoDT_PAGAMENTO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DT_PAGAMENTO'
      Origin = 'DT_PAGAMENTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q_pesq_padraoATRASO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ATRASO'
      Origin = 'ATRASO'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q_pesq_padraoJUROS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'JUROS'
      Origin = 'JUROS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object Q_pesq_padraoVL_JUROS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VL_JUROS'
      Origin = 'VL_JUROS'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_pesq_padraoTOTAL_PAGAR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_PAGAR'
      Origin = 'TOTAL_PAGAR'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_pesq_padraoSTATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS'
      Origin = 'STATUS'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
  end
  inherited Rel_pesq_padrao: TfrxReport
    ReportOptions.CreateDate = 44924.728745277800000000
    ReportOptions.LastChange = 44954.679123402780000000
    Datasets = <
      item
        DataSet = DataSet_pesq_padrao
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <
      item
        Name = ' usuario'
        Value = Null
      end
      item
        Name = 'nome'
        Value = ''
      end>
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
        Height = 102.047310000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 15.118120000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'LISTA DE PARCELAS A PAGAR')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Top = 79.370130000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Compra')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 79.370130000000000000
          Top = 79.370130000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Fornecedor')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 257.008040000000000000
          Top = 79.370130000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Nro parcela')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 336.378170000000000000
          Top = 79.370130000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 464.882190000000000000
          Top = 79.370130000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Data de vencimento')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 7.559060000000000000
          Width = 702.992580000000000000
          Height = 56.692950000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 600.945270000000000000
          Top = 79.370130000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Situa'#231#227'o')
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
        Height = 18.897637800000000000
        Top = 181.417440000000000000
        Width = 718.110700000000000000
        DataSet = DataSet_pesq_padrao
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1ID_COMPRA: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ID_COMPRA'
          DataSet = DataSet_pesq_padrao
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."ID_COMPRA"]')
          ParentFont = False
        end
        object frxDBDataset1NOME: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 79.370130000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = DataSet_pesq_padrao
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."NOME"]')
          ParentFont = False
        end
        object frxDBDataset1ID_SEQUENCIA: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 257.008040000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ID_SEQUENCIA'
          DataSet = DataSet_pesq_padrao
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."ID_SEQUENCIA"]')
          ParentFont = False
        end
        object frxDBDataset1VALOR_PARCELA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 336.378170000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR_PARCELA'
          DataSet = DataSet_pesq_padrao
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."VALOR_PARCELA"]')
          ParentFont = False
        end
        object frxDBDataset1DT_VENCIMENTO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 464.882190000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DataField = 'DT_VENCIMENTO'
          DataSet = DataSet_pesq_padrao
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."DT_VENCIMENTO"]')
          ParentFont = False
        end
        object frxDBDataset1STATUS: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 600.945270000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'STATUS'
          DataSet = DataSet_pesq_padrao
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."STATUS"]')
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
        Height = 22.677180000000000000
        Top = 260.787570000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Emitido por:')
          ParentFont = False
        end
        object nome: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 3.779530000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[nome]')
          ParentFont = False
        end
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 268.346630000000000000
          Top = 3.779530000000000000
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
        object Time: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 3.779530000000000000
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
            '[Time]')
          ParentFont = False
        end
        object Page: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 676.535870000000000000
          Top = 3.779530000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
        end
      end
    end
  end
end
