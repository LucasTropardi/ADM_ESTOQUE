unit U_pesq_parcela_pagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_form_pesquisa_padrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, frxClass, frxExportBaseDialog, frxExportPDF,
  frxDBSet, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls, Vcl.Mask, Vcl.ExtCtrls;

type
  TFrm_pesq_parcela_pagar = class(TFrm_pesquisa_padrao)
    Q_pesq_padraoID_COMPRA: TIntegerField;
    Q_pesq_padraoID_FORNECEDOR: TIntegerField;
    Q_pesq_padraoNOME: TStringField;
    Q_pesq_padraoCNPJ: TStringField;
    Q_pesq_padraoID_SEQUENCIA: TIntegerField;
    Q_pesq_padraoVALOR_PARCELA: TFMTBCDField;
    Q_pesq_padraoDT_VENCIMENTO: TDateField;
    Q_pesq_padraoDT_PAGAMENTO: TDateField;
    Q_pesq_padraoATRASO: TIntegerField;
    Q_pesq_padraoJUROS: TFMTBCDField;
    Q_pesq_padraoVL_JUROS: TFMTBCDField;
    Q_pesq_padraoTOTAL_PAGAR: TFMTBCDField;
    Q_pesq_padraoSTATUS: TStringField;
    procedure cb_chave_pesquisaChange(Sender: TObject);
    procedure btn_pesquisarClick(Sender: TObject);
    procedure btn_transferirClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btn_imprimirClick(Sender: TObject);
    procedure cb_chave_pesquisaClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  var data : Tdate;
      sequencia : Integer;
  end;

var
  Frm_pesq_parcela_pagar: TFrm_pesq_parcela_pagar;

implementation

{$R *.dfm}

uses U_DM;

procedure TFrm_pesq_parcela_pagar.btn_imprimirClick(Sender: TObject);
var caminho : String;
begin
  caminho := ExtractFilepath(Application.ExeName);
  if Frm_pesq_parcela_pagar.Rel_pesq_padrao.LoadFromFile(caminho + 'Rel_lista_pagar.fr3') then
  begin
    Rel_pesq_padrao.Clear;
    Rel_pesq_padrao.LoadFromFile(extractfilepath(application.ExeName) + 'Rel_lista_pagar.fr3');
    Rel_pesq_padrao.Variables['nome'] := QuotedStr(dm.usuario);
    Rel_pesq_padrao.PrepareReport(true);
    Rel_pesq_padrao.ShowPreparedReport;
    Frm_pesq_parcela_pagar.Close;
  end
  else
  Messagedlg('Relat�rio n�o encontrado',mtError,[mbOk],0);
end;

procedure TFrm_pesq_parcela_pagar.btn_pesquisarClick(Sender: TObject);
begin
  Q_pesq_padrao.Close;
  Q_pesq_padrao.SQL.Add('');
  Q_pesq_padrao.Params.Clear;
  Q_pesq_padrao.SQL.Clear;
  Q_pesq_padrao.SQL.Add('SELECT A.ID_COMPRA, A.ID_FORNECEDOR, B.NOME, B.CNPJ, C.ID_SEQUENCIA, C.VALOR_PARCELA, '
                        +'C.DT_VENCIMENTO, C.DT_PAGAMENTO, C.ATRASO, C.JUROS, C.VL_JUROS, C.TOTAL_PAGAR, C.STATUS '
                        +'FROM COMPRA A ');
  Q_pesq_padrao.SQL.Add('INNER JOIN FORNECEDOR B ON B.ID_FORNECEDOR = A.ID_FORNECEDOR ');
  Q_pesq_padrao.SQL.Add('INNER JOIN CONTAS_PAGAR C ON C.ID_COMPRA = A.ID_COMPRA ');
 // Q_pesq_padrao.SQL.Add('ORDER BY A.ID_COMPRA; '

  case cb_chave_pesquisa.ItemIndex of

  0:begin
     Q_pesq_padrao.SQL.Add('WHERE A.ID_FORNECEDOR = :PID_FORNECEDOR ');
     Q_pesq_padrao.ParamByName('PID_FORNECEDOR').AsString := ed_nome.Text;
     Q_pesq_padrao.SQL.Add('AND C.STATUS = ''EM ABERTO'' ');
     Q_pesq_padrao.SQL.Add('ORDER BY A.ID_COMPRA');
  end;

  1:begin
     Q_pesq_padrao.SQL.Add('WHERE B.NOME LIKE :PNOME ');
     Q_pesq_padrao.ParamByName('PNOME').AsString := '%' + ed_nome.Text +'%';
     Q_pesq_padrao.SQL.Add('AND C.STATUS = ''EM ABERTO'' ');
     Q_pesq_padrao.SQL.Add('ORDER BY A.ID_COMPRA');
  end;

  2:begin
     Q_pesq_padrao.SQL.Add('ORDER BY A.ID_COMPRA');
  end;

  end;

  Q_pesq_padrao.Open;
  lb_resultado.Caption := IntToStr(Q_pesq_padrao.RecordCount);
  if Q_pesq_padrao.IsEmpty then
  begin
    Messagedlg('Nenhum registro encontrado!',mtInformation,[mbOk],0);
  end;


end;

procedure TFrm_pesq_parcela_pagar.btn_transferirClick(Sender: TObject);
begin
  inherited;
  if Q_pesq_padrao.RecordCount > 0 then
  begin
    codigo := Q_pesq_padraoID_COMPRA.AsInteger;
    data := Q_pesq_padraoDT_VENCIMENTO.AsDateTime;
    sequencia := Q_pesq_padraoID_SEQUENCIA.AsInteger;
  end
  else
  abort;
end;

procedure TFrm_pesq_parcela_pagar.cb_chave_pesquisaChange(Sender: TObject);
begin
  case cb_chave_pesquisa.ItemIndex of
    0:begin
      lb_nome.Caption := 'Digite o c�digo do fornecedor';
      ed_nome.Visible := True;
      ed_nome.SetFocus;
    end;

    1:begin
      lb_nome.Caption := 'Digite o nome do fornecedor';
      ed_nome.Visible := True;
      ed_nome.SetFocus;
    end;

    2:begin
      lb_nome.Caption := 'Mostrando todas as parcelas';
      //ed_nome.Enabled := False;
      ed_nome.Visible := False;
    end;

  end;

end;

procedure TFrm_pesq_parcela_pagar.cb_chave_pesquisaClick(Sender: TObject);
begin
  //inherited;
  ed_nome.Visible := True;
  ed_nome.Clear;
  ed_nome.SetFocus;
end;

procedure TFrm_pesq_parcela_pagar.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  btn_transferir.Click;
end;

procedure TFrm_pesq_parcela_pagar.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  //parcela recebida
  if (Q_pesq_padraoDT_PAGAMENTO.Value <> 0) and
  (Q_pesq_padraoSTATUS.AsString = 'PAGO') then
  begin
    dbgrid1.Canvas.Brush.Color := clGreen;
    dbgrid1.Canvas.Font.Color := clWhite;
  end
  else
  //parcela a vencer
  if (Q_pesq_padraoDT_VENCIMENTO.AsDateTime > date) and
  (Q_pesq_padraoSTATUS.AsString = 'EM ABERTO') then
  begin
    dbgrid1.Canvas.Brush.Color := clYellow;
    dbgrid1.Canvas.Font.Color := clblue;
  end
  //parcela vencida
  else
  if (Q_pesq_padraoDT_VENCIMENTO.AsDateTime <= date) and
  (Q_pesq_padraoDT_PAGAMENTO.IsNull) then
  begin
    dbgrid1.Canvas.Brush.Color := clred;
    dbgrid1.Canvas.Font.Color := clwhite;
  end;

  dbgrid1.DefaultDrawColumnCell(rect,datacol,column,state);
end;

end.
