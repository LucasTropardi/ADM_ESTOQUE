unit U_pesq_geral_mes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, frxClass, frxExportBaseDialog, frxExportPDF, frxDBSet;

type
  TFrm_pesq_geral_mes = class(TForm)
    Panel1: TPanel;
    lb_inicio: TLabel;
    lb_fim: TLabel;
    mk_inicio: TMaskEdit;
    mk_fim: TMaskEdit;
    btn_pesquisar: TBitBtn;
    btn_imprimir: TBitBtn;
    rg_opcao: TRadioGroup;
    Q_compra: TFDQuery;
    Q_venda: TFDQuery;
    Q_conta_pagar: TFDQuery;
    Q_conta_receber: TFDQuery;
    Q_conta_pagar_a_pagar: TFDQuery;
    Q_conta_receber_a_receber: TFDQuery;
    ds_compra: TDataSource;
    ds_venda: TDataSource;
    ds_conta_pagar: TDataSource;
    ds_conta_receber: TDataSource;
    ds_conta_pagar_a_pagar: TDataSource;
    ds_conta_receber_a_receber: TDataSource;
    Relatorio_geral: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    btn_sair: TBitBtn;
    Q_compraMES: TSmallintField;
    Q_compraANO: TSmallintField;
    Q_compraVALOR_COMPRA: TFMTBCDField;
    Q_vendaMES: TSmallintField;
    Q_vendaANO: TSmallintField;
    Q_vendaVALOR_VENDA: TFMTBCDField;
    Q_conta_pagarMES: TSmallintField;
    Q_conta_pagarANO: TSmallintField;
    Q_conta_pagarVALOR_PAGO: TFMTBCDField;
    Q_conta_receberMES: TSmallintField;
    Q_conta_receberANO: TSmallintField;
    Q_conta_receberVALOR_RECEBIDO: TFMTBCDField;
    Q_conta_pagar_a_pagarMES: TSmallintField;
    Q_conta_pagar_a_pagarANO: TSmallintField;
    Q_conta_pagar_a_pagarVALOR_PAGAR: TFMTBCDField;
    Q_conta_receber_a_receberMES: TSmallintField;
    Q_conta_receber_a_receberANO: TSmallintField;
    Q_conta_receber_a_receberVALOR_RECEBER: TFMTBCDField;
    frx_compra: TfrxDBDataset;
    frx_venda: TfrxDBDataset;
    frx_conta_pagar: TfrxDBDataset;
    frx_conta_receber: TfrxDBDataset;
    frx_conta_pagar_a_pagar: TfrxDBDataset;
    frx_conta_receber_a_receber: TfrxDBDataset;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btn_sairClick(Sender: TObject);
    procedure btn_pesquisarClick(Sender: TObject);
    procedure btn_imprimirClick(Sender: TObject);
    procedure rg_opcaoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_pesq_geral_mes: TFrm_pesq_geral_mes;

implementation

{$R *.dfm}

uses U_DM;

procedure TFrm_pesq_geral_mes.btn_imprimirClick(Sender: TObject);
var caminho : String;
begin
        //Abre relat�rio
  case rg_opcao.ItemIndex of
    0:begin
    caminho := ExtractFilepath(Application.ExeName);
      if Frm_pesq_geral_mes.Relatorio_geral.LoadFromFile(caminho + 'Rel_compra_venda_mes.fr3') then
      begin
        Relatorio_geral.Clear;
        Relatorio_geral.LoadFromFile(extractfilepath(application.ExeName) + 'Rel_compra_venda_mes.fr3');
        Relatorio_geral.Variables['data_inicial'] := QuotedStr(mk_inicio.Text);
        Relatorio_geral.Variables['data_final'] := QuotedStr(mk_fim.Text);
        Relatorio_geral.Variables['usuario'] := QuotedStr(dm.usuario);
        Relatorio_geral.PrepareReport(true);
        Relatorio_geral.ShowPreparedReport;
      end
      else
    Messagedlg('Relat�rio n�o encontrado',mtError,[mbOk],0);
    end;

    1:begin
    caminho := ExtractFilepath(Application.ExeName);
      if Frm_pesq_geral_mes.Relatorio_geral.LoadFromFile(caminho + 'Rel_conta_paga_recebida.fr3') then
      begin
        Relatorio_geral.Clear;
        Relatorio_geral.LoadFromFile(extractfilepath(application.ExeName) + 'Rel_conta_paga_recebida.fr3');
        Relatorio_geral.Variables['data_inicial'] := QuotedStr(mk_inicio.Text);
        Relatorio_geral.Variables['data_final'] := QuotedStr(mk_fim.Text);
        Relatorio_geral.Variables['usuario'] := QuotedStr(dm.usuario);
        Relatorio_geral.PrepareReport(true);
        Relatorio_geral.ShowPreparedReport;
      end
      else
    Messagedlg('Relat�rio n�o encontrado',mtError,[mbOk],0);
    end;

    2:begin
    caminho := ExtractFilepath(Application.ExeName);
      if Frm_pesq_geral_mes.Relatorio_geral.LoadFromFile(caminho + 'Rel_falta_pagar_receber.fr3') then
      begin
        Relatorio_geral.Clear;
        Relatorio_geral.LoadFromFile(extractfilepath(application.ExeName) + 'Rel_falta_pagar_receber.fr3');
        Relatorio_geral.Variables['data_inicial'] := QuotedStr(mk_inicio.Text);
        Relatorio_geral.Variables['data_final'] := QuotedStr(mk_fim.Text);
        Relatorio_geral.Variables['usuario'] := QuotedStr(dm.usuario);
        Relatorio_geral.PrepareReport(true);
        Relatorio_geral.ShowPreparedReport;
      end
      else
    Messagedlg('Relat�rio n�o encontrado',mtError,[mbOk],0);
    end;
  end;
end;

procedure TFrm_pesq_geral_mes.btn_pesquisarClick(Sender: TObject);
begin  //COMPRAS E VENDAS POR MES
  case rg_opcao.ItemIndex of
  0:begin
    Q_compra.Close;
    Q_compra.SQL.Add('');
    Q_compra.Params.Clear;
    Q_compra.SQL.Clear;
    Q_compra.SQL.Add('SELECT EXTRACT(MONTH FROM A.CADASTRO) AS MES, EXTRACT(YEAR FROM A.CADASTRO) AS ANO,'
    +' SUM(A.VALOR) AS VALOR_COMPRA'
    +' FROM COMPRA A');
    Q_compra.SQL.Add('WHERE A.CADASTRO BETWEEN :PDATA_INI AND :PDATA_FIM');
    Q_compra.ParamByName('PDATA_INI').AsDate := StrToDate(mk_inicio.Text);
    Q_compra.ParamByName('PDATA_FIM').AsDate := StrToDate(mk_fim.Text);
    Q_compra.SQL.Add('GROUP BY EXTRACT(MONTH FROM A.CADASTRO), EXTRACT(YEAR FROM A.CADASTRO)');
    Q_compra.SQL.Add('ORDER BY EXTRACT(MONTH FROM A.CADASTRO), EXTRACT(YEAR FROM A.CADASTRO)');
    Q_compra.Open;

    Q_venda.Close;
    Q_venda.SQL.Add('');
    Q_venda.Params.Clear;
    Q_venda.SQL.Clear;
    Q_venda.SQL.Add('SELECT EXTRACT(MONTH FROM A.CADASTRO) AS MES, EXTRACT(YEAR FROM A.CADASTRO) AS ANO,'
    +' SUM(A.VALOR) AS VALOR_VENDA'
    +' FROM VENDA A');
    Q_venda.SQL.Add('WHERE A.CADASTRO BETWEEN :PDATA_INI AND :PDATA_FIM');
    Q_venda.ParamByName('PDATA_INI').AsDate := StrToDate(mk_inicio.Text);
    Q_venda.ParamByName('PDATA_FIM').AsDate := StrToDate(mk_fim.Text);
    Q_venda.SQL.Add('GROUP BY EXTRACT(MONTH FROM A.CADASTRO), EXTRACT(YEAR FROM A.CADASTRO)');
    Q_venda.SQL.Add('ORDER BY EXTRACT(MONTH FROM A.CADASTRO), EXTRACT(YEAR FROM A.CADASTRO)');
    Q_venda.Open;
    btn_imprimir.Click;
  end;

  1:begin   //TOTAL PAGO E RECEBIDO POR MES
    Q_conta_pagar.Close;
    Q_conta_pagar.SQL.Add('');
    Q_conta_pagar.Params.Clear;
    Q_conta_pagar.SQL.Clear;
    Q_conta_pagar.SQL.Add('SELECT EXTRACT(MONTH FROM A.DT_PAGAMENTO) AS MES, EXTRACT(YEAR FROM A.DT_PAGAMENTO) AS ANO,'
    +' SUM(A.TOTAL_PAGAR) AS VALOR_PAGO'
    +' FROM CONTAS_PAGAR A');
    Q_conta_pagar.SQL.Add('WHERE A.DT_PAGAMENTO BETWEEN :PDATA_INI AND :PDATA_FIM');
    Q_conta_pagar.ParamByName('PDATA_INI').AsDate := StrToDate(mk_inicio.Text);
    Q_conta_pagar.ParamByName('PDATA_FIM').AsDate := StrToDate(mk_fim.Text);
    Q_conta_pagar.SQL.Add('GROUP BY EXTRACT(MONTH FROM A.DT_PAGAMENTO), EXTRACT(YEAR FROM A.DT_PAGAMENTO)');
    Q_conta_pagar.SQL.Add('ORDER BY EXTRACT(MONTH FROM A.DT_PAGAMENTO), EXTRACT(YEAR FROM A.DT_PAGAMENTO)');
    Q_conta_pagar.Open;

    Q_conta_receber.Close;
    Q_conta_receber.SQL.Add('');
    Q_conta_receber.Params.Clear;
    Q_conta_receber.SQL.Clear;
    Q_conta_receber.SQL.Add('SELECT EXTRACT(MONTH FROM A.DT_PAGAMENTO) AS MES, EXTRACT(YEAR FROM A.DT_PAGAMENTO) AS ANO,'
    +' SUM(A.TOTAL_PAGAR) AS VALOR_RECEBIDO'
    +' FROM CONTAS_RECEBER A');
    Q_conta_receber.SQL.Add('WHERE A.DT_PAGAMENTO BETWEEN :PDATA_INI AND :PDATA_FIM');
    Q_conta_receber.ParamByName('PDATA_INI').AsDate := StrToDate(mk_inicio.Text);
    Q_conta_receber.ParamByName('PDATA_FIM').AsDate := StrToDate(mk_fim.Text);
    Q_conta_receber.SQL.Add('GROUP BY EXTRACT(MONTH FROM A.DT_PAGAMENTO), EXTRACT(YEAR FROM A.DT_PAGAMENTO)');
    Q_conta_receber.SQL.Add('ORDER BY EXTRACT(MONTH FROM A.DT_PAGAMENTO), EXTRACT(YEAR FROM A.DT_PAGAMENTO)');
    Q_conta_receber.Open;
    btn_imprimir.Click;
  end;

  2:begin   //TOTAL PAGAR E RECEBER POR MES
    Q_conta_pagar_a_pagar.Close;
    Q_conta_pagar_a_pagar.SQL.Add('');
    Q_conta_pagar_a_pagar.Params.Clear;
    Q_conta_pagar_a_pagar.SQL.Clear;
    Q_conta_pagar_a_pagar.SQL.Add('SELECT EXTRACT(MONTH FROM A.DT_VENCIMENTO) AS MES, EXTRACT(YEAR FROM A.DT_VENCIMENTO) AS ANO,'
    +' SUM(A.VALOR_PARCELA) AS VALOR_PAGAR'
    +' FROM CONTAS_PAGAR A');
    Q_conta_pagar_a_pagar.SQL.Add('WHERE A.DT_VENCIMENTO BETWEEN :PDATA_INI AND :PDATA_FIM');
    Q_conta_pagar_a_pagar.SQL.Add('AND A.STATUS = ''EM ABERTO''');
    Q_conta_pagar_a_pagar.ParamByName('PDATA_INI').AsDate := StrToDate(mk_inicio.Text);
    Q_conta_pagar_a_pagar.ParamByName('PDATA_FIM').AsDate := StrToDate(mk_fim.Text);
    Q_conta_pagar_a_pagar.SQL.Add('GROUP BY EXTRACT(MONTH FROM A.DT_VENCIMENTO), EXTRACT(YEAR FROM A.DT_VENCIMENTO)');
    Q_conta_pagar_a_pagar.SQL.Add('ORDER BY EXTRACT(MONTH FROM A.DT_VENCIMENTO), EXTRACT(YEAR FROM A.DT_VENCIMENTO)');
    Q_conta_pagar_a_pagar.Open;

    Q_conta_receber_a_receber.Close;
    Q_conta_receber_a_receber.SQL.Add('');
    Q_conta_receber_a_receber.Params.Clear;
    Q_conta_receber_a_receber.SQL.Clear;
    Q_conta_receber_a_receber.SQL.Add('SELECT EXTRACT(MONTH FROM A.DT_VENCIMENTO) AS MES, EXTRACT(YEAR FROM A.DT_VENCIMENTO) AS ANO,'
    +' SUM(A.VALOR_PARCELA) AS VALOR_RECEBER'
    +' FROM CONTAS_RECEBER A');
    Q_conta_receber_a_receber.SQL.Add('WHERE A.DT_VENCIMENTO BETWEEN :PDATA_INI AND :PDATA_FIM');
    Q_conta_receber_a_receber.SQL.Add('AND A.STATUS = ''EM ABERTO''');
    Q_conta_receber_a_receber.ParamByName('PDATA_INI').AsDate := StrToDate(mk_inicio.Text);
    Q_conta_receber_a_receber.ParamByName('PDATA_FIM').AsDate := StrToDate(mk_fim.Text);
    Q_conta_receber_a_receber.SQL.Add('GROUP BY EXTRACT(MONTH FROM A.DT_VENCIMENTO), EXTRACT(YEAR FROM A.DT_VENCIMENTO)');
    Q_conta_receber_a_receber.SQL.Add('ORDER BY EXTRACT(MONTH FROM A.DT_VENCIMENTO), EXTRACT(YEAR FROM A.DT_VENCIMENTO)');
    Q_conta_receber_a_receber.Open;
    btn_imprimir.Click;
  end;

  end;

end;

procedure TFrm_pesq_geral_mes.btn_sairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_pesq_geral_mes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_compra.Close;
  Q_venda.Close;
  Q_conta_pagar.Close;
  Q_conta_receber.Close;
  Q_conta_pagar_a_pagar.Close;
  Q_conta_receber_a_receber.Close;
end;

procedure TFrm_pesq_geral_mes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(wm_nextDlgCtl,0,0);
  end;

end;

procedure TFrm_pesq_geral_mes.rg_opcaoClick(Sender: TObject);
begin
  mk_inicio.SetFocus;
end;

end.
