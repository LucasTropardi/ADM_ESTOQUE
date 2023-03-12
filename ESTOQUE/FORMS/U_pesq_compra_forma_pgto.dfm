inherited Frm_pesq_compra_forma_pgto: TFrm_pesq_compra_forma_pgto
  Caption = 'PESQUISA COMPRAS POR FORMAS DE PAGAMENTO'
  ClientHeight = 518
  ClientWidth = 986
  ExplicitWidth = 1002
  ExplicitHeight = 557
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 986
    ExplicitWidth = 986
    inherited Label1: TLabel
      Left = 744
      Visible = False
      ExplicitLeft = 744
    end
    inherited lb_nome: TLabel
      Left = 671
      Top = 7
      Visible = False
      ExplicitLeft = 671
      ExplicitTop = 7
    end
    inherited lb_inicio: TLabel
      Left = 40
      ExplicitLeft = 40
    end
    inherited lb_fim: TLabel
      Left = 185
      ExplicitLeft = 185
    end
    inherited cb_chave_pesquisa: TComboBox
      Left = 744
      Visible = False
      ExplicitLeft = 744
    end
    inherited ed_nome: TEdit
      Left = 671
      Top = 31
      Visible = False
      ExplicitLeft = 671
      ExplicitTop = 31
    end
    inherited mk_inicio: TMaskEdit
      Left = 40
      ExplicitLeft = 40
    end
    inherited mk_fim: TMaskEdit
      Left = 185
      ExplicitLeft = 185
    end
  end
  inherited Panel2: TPanel
    Top = 442
    Width = 986
    ExplicitTop = 442
    ExplicitWidth = 986
    inherited lb_resultado: TLabel
      Top = 24
      ExplicitTop = 24
    end
    object lb_valor_compra: TLabel [1]
      Left = 336
      Top = 24
      Width = 82
      Height = 19
      Caption = 'Resultado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited btn_pesquisar: TBitBtn
    Left = 417
    Top = 19
    OnClick = btn_pesquisarClick
    ExplicitLeft = 417
    ExplicitTop = 19
  end
  inherited btn_transferir: TBitBtn
    Visible = False
  end
  inherited btn_imprimir: TBitBtn
    Left = 515
    Top = 19
    OnClick = btn_imprimirClick
    ExplicitLeft = 515
    ExplicitTop = 19
  end
  inherited DBGrid1: TDBGrid
    Width = 986
    Height = 360
    Columns = <
      item
        Expanded = False
        FieldName = 'QTDE_COMPRAS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_COMPRA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FORMA_PGTO'
        Visible = True
      end>
  end
  inherited Q_pesq_padrao: TFDQuery
    SQL.Strings = (
      'SELECT '
      '      COUNT(A.ID_COMPRA) AS QTDE_COMPRAS, '
      '      SUM(A.VALOR) AS VALOR_COMPRA, '
      '      A.ID_FORMA_PGTO AS ID,'
      '      B.DESCRICAO AS FORMA_PGTO'
      'FROM COMPRA A '
      'INNER JOIN FORMA_PGTO B '
      'ON B.ID_FORMA_PGTO = A.ID_FORMA_PGTO'
      'GROUP BY A.ID_FORMA_PGTO, B.DESCRICAO'
      'ORDER BY A.ID_FORMA_PGTO, B.DESCRICAO;')
    object Q_pesq_padraoQTDE_COMPRAS: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'QTDE_COMPRAS'
      Origin = 'QTDE_COMPRAS'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q_pesq_padraoVALOR_COMPRA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_COMPRA'
      Origin = 'VALOR_COMPRA'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_pesq_padraoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID_FORMA_PGTO'
      Required = True
    end
    object Q_pesq_padraoFORMA_PGTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FORMA_PGTO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  inherited Rel_pesq_padrao: TfrxReport
    ReportOptions.CreateDate = 44924.728745277800000000
    ReportOptions.LastChange = 44946.877252384300000000
    Datasets = <
      item
        DataSet = DataSet_pesq_padrao
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <
      item
        Name = ' Data'
        Value = Null
      end
      item
        Name = 'Data_ini'
        Value = ''
      end
      item
        Name = 'Data_fim'
        Value = ''
      end
      item
        Name = 'nome'
        Value = ''
      end
      item
        Name = 'Qtde'
        Value = ''
      end
      item
        Name = 'Valor_compra'
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
        Height = 94.488188980000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 7.559060000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE COMPRAS AGRUPARAS POR FORMA DE PAGAMENTO')
          ParentFont = False
        end
        object Data_ini: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 249.448980000000000000
          Top = 60.472480000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Data_ini]')
          ParentFont = False
        end
        object Data_fim: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 359.055350000000000000
          Top = 60.472480000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Data_fim]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 294.803340000000000000
          Top = 30.236240000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'No per'#237'odo de:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 317.480520000000000000
          Top = 60.472480000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'a')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 695.433520000000000000
          Height = 83.149660000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 136.063080000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 11.338590000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Qtdede compras')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Top = 11.338590000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valores de compras')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 351.496290000000000000
          Top = 11.338590000000000000
          Width = 366.614410000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Forma de Pagamento')
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
        Top = 230.551330000000000000
        Width = 718.110700000000000000
        DataSet = DataSet_pesq_padrao
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1QTDE_COMPRAS: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'QTDE_COMPRAS'
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
            '[frxDBDataset1."QTDE_COMPRAS"]')
          ParentFont = False
        end
        object frxDBDataset1VALOR_COMPRA: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 120.944960000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR_COMPRA'
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
            '[frxDBDataset1."VALOR_COMPRA"]')
          ParentFont = False
        end
        object frxDBDataset1ID: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 272.126160000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ID'
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
            '[frxDBDataset1."ID"]')
          ParentFont = False
        end
        object frxDBDataset1FORMA_PGTO: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 351.496290000000000000
          Width = 366.614410000000000000
          Height = 18.897650000000000000
          DataField = 'FORMA_PGTO'
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
            '[frxDBDataset1."FORMA_PGTO"]')
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
        Height = 68.031540000000000000
        Top = 309.921460000000000000
        Width = 718.110700000000000000
        object Qtde: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 222.992270000000000000
          Top = 7.559060000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Qtde]')
          ParentFont = False
        end
        object Valor_compra: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 438.425480000000000000
          Top = 7.559060000000000000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Valor_compra]')
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
        Top = 400.630180000000000000
        Width = 718.110700000000000000
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 313.700990000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
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
          Left = 381.732530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[nome]')
          ParentFont = False
        end
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 461.102660000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
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
          Left = 540.472790000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
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
          Left = 680.315400000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page]')
        end
      end
    end
  end
  inherited DataSet_pesq_padrao: TfrxDBDataset
    FieldAliases.Strings = (
      'QTDE_COMPRAS=QTDE_COMPRAS'
      'VALOR_COMPRA=VALOR_COMPRA'
      'ID=ID'
      'FORMA_PGTO=FORMA_PGTO')
  end
end
