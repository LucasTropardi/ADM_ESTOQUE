inherited Frm_pesq_forma_pgto: TFrm_pesq_forma_pgto
  Caption = 'Frm_pesq_forma_pgto'
  ClientHeight = 526
  ClientWidth = 763
  ExplicitWidth = 779
  ExplicitHeight = 565
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 763
    ExplicitWidth = 763
    inherited lb_inicio: TLabel
      Enabled = False
      Visible = False
    end
    inherited lb_fim: TLabel
      Enabled = False
      Visible = False
    end
    inherited cb_chave_pesquisa: TComboBox
      Items.Strings = (
        'C'#211'DIGO'
        'DESCRI'#199#195'O'
        'TODAS')
    end
    inherited mk_inicio: TMaskEdit
      Enabled = False
      Visible = False
    end
    inherited mk_fim: TMaskEdit
      Enabled = False
      Visible = False
    end
  end
  inherited Panel2: TPanel
    Top = 450
    Width = 763
    ExplicitTop = 450
    ExplicitWidth = 763
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited btn_pesquisar: TBitBtn
    Left = 516
    Top = 19
    OnClick = btn_pesquisarClick
    ExplicitLeft = 516
    ExplicitTop = 19
  end
  inherited btn_transferir: TBitBtn
    Left = 614
    Top = 19
    OnClick = btn_transferirClick
    ExplicitLeft = 614
    ExplicitTop = 19
  end
  inherited btn_imprimir: TBitBtn
    Left = 123
    Top = 247
    Enabled = False
    Visible = False
    ExplicitLeft = 123
    ExplicitTop = 247
  end
  inherited DBGrid1: TDBGrid
    Width = 763
    Height = 368
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_FORMA_PGTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Width = 500
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CADASTRO'
        Visible = True
      end>
  end
  inherited Q_pesq_padrao: TFDQuery
    SQL.Strings = (
      'SELECT '
      '     ID_FORMA_PGTO,'
      '     DESCRICAO,'
      '     CADASTRO'
      'FROM FORMA_PGTO'
      'ORDER BY ID_FORMA_PGTO;')
    Left = 616
    Top = 144
    object Q_pesq_padraoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_pesq_padraoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object Q_pesq_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited ds_pesq_padrao: TDataSource
    Left = 616
    Top = 200
  end
  inherited Rel_pesq_padrao: TfrxReport
    Left = 616
    Top = 328
    Datasets = <>
    Variables = <>
    Style = <>
  end
  inherited DataSet_pesq_padrao: TfrxDBDataset
    Left = 616
    Top = 264
  end
  inherited frxPDFExport1: TfrxPDFExport
    Left = 504
    Top = 392
  end
end
