unit U_venda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_movimento_padrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, frxClass, frxDBSet;

type
  TFrm_venda = class(TFrm_padrao_movimento)
    Q_padraoID_VENDA: TIntegerField;
    Q_padraoID_CLIENTE: TIntegerField;
    Q_padraoUSUARIO: TStringField;
    Q_padraoVALOR: TFMTBCDField;
    Q_padraoCADASTRO: TDateField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    db_id_cliente: TDBEdit;
    Label3: TLabel;
    db_cadastro: TDBEdit;
    Label4: TLabel;
    db_usuario: TDBEdit;
    Label5: TLabel;
    db_valor: TDBEdit;
    Q_cliente: TFDQuery;
    Q_forma_pgto: TFDQuery;
    ds_cliente: TDataSource;
    ds_forma_pgto: TDataSource;
    Q_clienteID_CLIENTE: TIntegerField;
    Q_clienteNOME: TStringField;
    Q_padraoCLIENTE: TStringField;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Q_padraoDESCRICAO: TStringField;
    Q_padraoPARCELA: TIntegerField;
    Q_padraoDINHEIRO: TFMTBCDField;
    Q_padraoTROCO: TFMTBCDField;
    Label10: TLabel;
    db_id_produto: TDBEdit;
    Label11: TLabel;
    db_qtde: TDBEdit;
    Label12: TLabel;
    db_vl_venda: TDBEdit;
    Label13: TLabel;
    db_desconto: TDBEdit;
    Label14: TLabel;
    db_total_item: TDBEdit;
    Q_padrao_itemID_SEQUENCIA: TIntegerField;
    Q_padrao_itemID_VENDA: TIntegerField;
    Q_padrao_itemID_PRODUTO: TIntegerField;
    Q_padrao_itemQTDE: TFMTBCDField;
    Q_padrao_itemVL_VENDA: TFMTBCDField;
    Q_padrao_itemDESCONTO: TFMTBCDField;
    Q_padrao_itemTOTAL_ITEM: TFMTBCDField;
    Q_produto: TFDQuery;
    ds_produto: TDataSource;
    Q_produtoID_PRODUTO: TIntegerField;
    Q_produtoPRODUTO_DESCRICAO: TStringField;
    Q_produtoESTOQUE: TFMTBCDField;
    Q_produtoESTOQUE_MIN: TFMTBCDField;
    Q_produtoVL_VENDA: TFMTBCDField;
    Q_padrao_itemSUBTOTAL: TAggregateField;
    db_subtotal: TDBEdit;
    Label15: TLabel;
    Q_conta_receber: TFDQuery;
    ds_conta_receber: TDataSource;
    Q_conta_receberID_SEQUENCIA: TIntegerField;
    Q_conta_receberID_VENDA: TIntegerField;
    Q_conta_receberVALOR_PARCELA: TFMTBCDField;
    Q_conta_receberDT_VENCIMENTO: TDateField;
    Q_conta_receberDT_PAGAMENTO: TDateField;
    Q_conta_receberVL_JUROS: TFMTBCDField;
    Q_conta_receberTOTAL_PAGAR: TFMTBCDField;
    Q_conta_receberSTATUS: TStringField;
    Q_conta_receberATRASO: TIntegerField;
    btn_check_cliente: TSpeedButton;
    Q_padraoID_FORMA_PGTO: TIntegerField;
    Q_empresa: TFDQuery;
    ds_empresa: TDataSource;
    Q_empresaID_EMPRESA: TIntegerField;
    Q_empresaRAZAO_SOCIAL: TStringField;
    Q_empresaN_FANTASIA: TStringField;
    Q_empresaENDERECO: TStringField;
    Q_empresaNUMERO: TIntegerField;
    Q_empresaBAIRRO: TStringField;
    Q_empresaCIDADE: TStringField;
    Q_empresaUF: TStringField;
    Q_empresaCEP: TStringField;
    Q_empresaTELEFONE: TStringField;
    Q_empresaCNPJ: TStringField;
    Q_empresaEMAIL: TStringField;
    Q_empresaLOGO: TBlobField;
    Q_empresaCADASTRO: TDateField;
    frx_padrao: TfrxDBDataset;
    frx_empresa: TfrxDBDataset;
    frx_padrao_item: TfrxDBDataset;
    Q_padraoNOME: TStringField;
    Q_padrao_itemPRODUTO_DESCRICAO: TStringField;
    Rel_recibo_venda: TfrxReport;
    procedure btn_novoClick(Sender: TObject);
    procedure db_id_clienteExit(Sender: TObject);
    procedure db_id_forma_pgtoExit(Sender: TObject);
    procedure btn_itemClick(Sender: TObject);
    procedure btn_okClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure db_id_produtoExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_deletarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure db_descontoClick(Sender: TObject);
    procedure db_descontoExit(Sender: TObject);
    procedure db_qtdeClick(Sender: TObject);
    procedure db_qtdeExit(Sender: TObject);
    procedure Q_padrao_itemQTDEValidate(Sender: TField);
    procedure btn_check_clienteClick(Sender: TObject);
    procedure btn_busca_forma_pgtoClick(Sender: TObject);
    procedure btn_gravarClick(Sender: TObject);
    procedure btn_imprimirClick(Sender: TObject);
    procedure db_total_itemExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_venda: TFrm_venda;

implementation

{$R *.dfm}

uses U_DM, U_pesq_venda, U_pesq_cliente, U_pesq_forma_pgto, U_recebimento_venda;

procedure TFrm_venda.BitBtn1Click(Sender: TObject);
begin
  Frm_pesq_venda := Tfrm_pesq_venda.Create(Self);
  Frm_pesq_venda.ShowModal;
  try
    if Frm_pesq_venda.codigo > 0 then
    begin
    Q_padrao.Open;
    Q_padrao.Locate('ID_VENDA',Frm_pesq_venda.codigo,[]);
    end;
  finally
    Frm_pesq_venda.Free;
    Frm_pesq_venda := Nil;
  end;

end;

procedure TFrm_venda.btn_busca_forma_pgtoClick(Sender: TObject);
begin
  inherited;
  if Q_padrao.State in [dsedit,dsinsert] then
  begin
    Frm_pesq_forma_pgto := Tfrm_pesq_forma_pgto.Create(Self);
    Frm_pesq_forma_pgto.ShowModal;
    try
      if Frm_pesq_forma_pgto.codigo > 0 then
      begin

        Q_padraoID_FORMA_PGTO.AsInteger := Frm_pesq_forma_pgto.codigo;
      end;
    finally
      Frm_pesq_forma_pgto.Free;
      Frm_pesq_forma_pgto := Nil;
    end;
  end;
end;

procedure TFrm_venda.btn_check_clienteClick(Sender: TObject);
begin
  //inherited;
  if Q_padrao.State in [dsedit,dsinsert] then
  begin
    Frm_pesq_cliente := Tfrm_pesq_cliente.Create(Self);
    Frm_pesq_cliente.ShowModal;
    try
      if Frm_pesq_cliente.codigo > 0 then
      begin

        Q_padraoCLIENTE.AsInteger := Frm_pesq_cliente.codigo;
      end;
    finally
      Frm_pesq_cliente.Free;
      Frm_pesq_cliente := Nil;
    end;
  end;

end;

procedure TFrm_venda.btn_deletarClick(Sender: TObject);
begin
  if messagedlg('Deseja excluir este registro de venda?',mtConfirmation,[mbOk,mbNo],0) = mrOk then
  begin
    //exclui parcelas
    Q_conta_receber.Open;
    Q_conta_receber.First;
    while not Q_conta_receber.eof do
    begin
      Q_conta_receber.Delete;
      Q_conta_receber.Next;
    end;
  // Exclui itens de venda
    Q_padrao_item.First;
    while Q_padrao_item.RecordCount > 0 do
    begin
      if Q_produto.Locate('ID_PRODUTO', Q_padrao_itemID_PRODUTO.AsInteger,[]) then
      begin
        Q_produto.Edit;
        Q_produto.FieldByName('ESTOQUE').AsFloat :=
        Q_produto.FieldByName('ESTOQUE').AsFloat +
        Q_padrao_itemQTDE.AsFloat;
        Q_produto.Refresh;
        Q_padrao_item.Delete;
        Q_padrao_item.Next;
      end;
    end;
    inherited;
    Q_conta_receber.Close;
  end
  else
  Abort;
end;

procedure TFrm_venda.btn_excluirClick(Sender: TObject);
begin
  //exclui item do detalhamento de venda
  if messagedlg('Deseja excluir este item?',mtConfirmation,[mbOk,mbNo],0) = mrOk then
  begin
    if Q_produto.Locate('ID_PRODUTO', Q_padrao_itemID_PRODUTO.AsInteger,[]) then
    begin
      Q_padrao_item.Delete;
      Messagedlg('Item exclu�do com sucesso',mtInformation,[mbOk],0);
    end;
  end
  else
  Abort;
end;

procedure TFrm_venda.btn_gravarClick(Sender: TObject);
begin
  inherited;
  btn_item.Click;
end;

procedure TFrm_venda.btn_imprimirClick(Sender: TObject);
var caminho : String;
    compra : Integer;
begin
  inherited;
  caminho := ExtractFilepath(Application.ExeName);
  if Frm_venda.Rel_recibo_venda.LoadFromFile(caminho + 'Rel_recibo_venda.fr3') then
  begin
    Rel_recibo_venda.Clear;
    Rel_recibo_venda.LoadFromFile(extractfilepath(application.ExeName) + 'Rel_recibo_venda.fr3');
    Rel_recibo_venda.PrepareReport(true);
    Rel_recibo_venda.ShowPreparedReport;
  end
  else
  Messagedlg('Relat�rio n�o encontrado',mtError,[mbOk],0);
end;

procedure TFrm_venda.btn_itemClick(Sender: TObject);
begin
var proximo : integer;
begin
  //Insere os itens na tabela de item venda
  Q_padrao_item.Open;
  Q_produto.Open;
  Q_padrao_item.Last;
  proximo := Q_padrao_itemID_SEQUENCIA.AsInteger + 1;
  Q_padrao_item.Append;
  Q_padrao_itemID_SEQUENCIA.AsInteger := proximo;
  db_id_produto.SetFocus;
end;
end;

procedure TFrm_venda.btn_novoClick(Sender: TObject);
begin
  inherited;
  db_cadastro.Text := DateToStr(now);
  Q_cliente.Open;
  Q_forma_pgto.Open;
  Q_produto.Open;
  db_usuario.Text := dm.usuario;
  db_valor.Text := IntToStr(0);
  //db_parcela.Text := IntToStr(0);
  db_id_cliente.SetFocus;
end;

procedure TFrm_venda.btn_okClick(Sender: TObject);
var parcela : Integer;
    diferenca, soma : Real;
begin
  Q_padrao.Edit;
  Q_padraoVALOR.AsFloat :=
  Q_padrao_item.AggFields.FieldByName('SUBTOTAL').Value;
  Q_padrao.Refresh;
  //Alimenta o estoque

  Q_padrao_item.First;
  while not Q_padrao_item.eof do
  begin
    if Q_produto.Locate('ID_PRODUTO',Q_padrao_itemID_PRODUTO.AsInteger,[]) then
    begin
      Q_produto.Edit;
      Q_produto.FieldByName('ESTOQUE').AsFloat :=
      Q_produto.FieldByName('ESTOQUE').AsFloat -
      Q_padrao_itemQTDE.AsFloat;
      Q_padrao_item.Next;
    end;
  end;
  Q_produto.Refresh;
  Messagedlg('Baixa no estoque realizada com sucesso.',mtinformation,[mbOK],0);

    //abre a tela do recebimento
    Frm_recebimento_venda := Tfrm_recebimento_venda.Create(Self);
    Frm_recebimento_venda.ShowModal;
    try

    finally
      Frm_recebimento_venda.Free;
      Frm_recebimento_venda := Nil;
    end;
end;

procedure TFrm_venda.db_id_forma_pgtoExit(Sender: TObject);
begin
 //validar forma pgto
 {if not Q_forma_pgto.Locate('id_forma_pgto',Q_padrao.FieldByName('id_forma_pgto').AsInteger,[]) then
 begin
   Messagedlg('Forma de pagamento n�o encontrada.',mtInformation,[mbOk],0);
   db_id_cliente.SetFocus;
   abort;
 end;  }
 //valida qtde parcelas
{ if (db_id_forma_pgto.Text = IntToStr(1)) or (db_id_forma_pgto.Text = IntToStr(2)) then
 begin
   db_parcela.Text := IntToStr(1);
 end
 else
 db_parcela.SetFocus;     }


end;

procedure TFrm_venda.db_id_produtoExit(Sender: TObject);
begin
  if Q_padrao_item.State in [dsedit,dsinsert] then
  begin
  if Q_padrao_itemID_PRODUTO.AsInteger > 0 then
    if Q_produto.Locate('ID_PRODUTO',Q_padrao_item.FieldByName('ID_PRODUTO').AsInteger,[]) then
    begin
       Q_padrao_itemQTDE.AsFloat := 1;
       Q_padrao_itemDESCONTO.AsFloat := 0;
       //Pegar o valor do produto
       Q_padrao_itemVL_VENDA.AsFloat :=
       Q_produto.FieldByName('vl_venda').AsFloat;
       //Soma QTDE
       Q_padrao_itemTOTAL_ITEM.AsFloat :=
       (Q_padrao_itemQTDE.AsFloat * Q_padrao_itemVL_VENDA.AsFloat) -
       (Q_padrao_itemDESCONTO.AsFloat);
       Q_padrao_item.Post;
       btn_item.SetFocus;
    end
    else
      Messagedlg('Produto n�o enontrado',mtInformation,[mbOk],0);
      Q_padrao_item.Cancel;
      btn_item.SetFocus;
  end
  else
  Abort;
end;

procedure TFrm_venda.db_qtdeClick(Sender: TObject);
begin
  inherited;
  Q_padrao_item.Edit;
end;

procedure TFrm_venda.db_qtdeExit(Sender: TObject);
begin
  if Q_padrao_item.State in [dsedit,dsinsert] then
  begin
    if Q_padrao_itemQTDE.AsFloat > Q_produtoESTOQUE.AsFloat then
    begin
      ShowMessage('A quantidade informada � maior que o estoque! '+
      Q_produtoESTOQUE.AsString + '');
      db_qtde.SetFocus;
      Abort;
    end
    else
    Q_padrao_itemTOTAL_ITEM.AsFloat :=
    (Q_padrao_itemQTDE.AsFloat * Q_padrao_itemVL_VENDA.AsFloat)-
    Q_padrao_itemDESCONTO.AsFloat;
    Q_padrao_item.Refresh;
  end
  else
  Abort;
end;

procedure TFrm_venda.db_total_itemExit(Sender: TObject);
begin
  inherited;
  btn_item.SetFocus;
end;

procedure TFrm_venda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Q_cliente.Close;
  Q_forma_pgto.Close;
  Q_produto.Close;
end;

procedure TFrm_venda.Q_padrao_itemQTDEValidate(Sender: TField);
begin
  if Q_produtoESTOQUE.AsFloat = 0 then
  begin
    Messagedlg('Produto em falta.',mtInformation, [mbOk],0);
    btn_item.SetFocus;
    Q_padrao_item.Delete;
    Abort;
  end
  else
  if Q_produtoESTOQUE.AsFloat < Q_produtoESTOQUE_MIN.AsFloat then
  begin
    ShowMessage('Produto abaixo do estoque m�nimo! '+
    Q_produtoESTOQUE.AsString + '');
    btn_item.SetFocus;
  end;


end;

procedure TFrm_venda.db_descontoClick(Sender: TObject);
begin
  inherited;
  Q_padrao_item.Edit;
end;

procedure TFrm_venda.db_descontoExit(Sender: TObject);
begin
  inherited;
  if Q_padrao_item.State in [dsedit,dsinsert] then
  begin
    Q_padrao_itemTOTAL_ITEM.AsFloat :=
    (Q_padrao_itemQTDE.AsFloat * Q_padrao_itemVL_VENDA.AsFloat) -
    Q_padrao_itemDESCONTO.AsFloat;
    Q_padrao_item.Refresh;
  end
  else
  Abort;
end;

procedure TFrm_venda.db_id_clienteExit(Sender: TObject);
begin
 //validar o cliente
 if Q_padrao.State in [dsedit,dsinsert] then
 begin
  if not Q_cliente.Locate('id_cliente',Q_padrao.FieldByName('id_cliente').AsInteger,[]) then
  begin
   Messagedlg('Cliente n�o encontrado.',mtInformation,[mbOk],0);
   db_id_cliente.SetFocus;
   abort;
 end
 else
   btn_gravar.Click;
 end
 else
   abort;
end;

end.
