unit U_pesq_contas_receber;

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
  TFrm_pesq_parcelas_receber = class(TFrm_pesquisa_padrao)
    Q_pesq_padraoID_VENDA: TIntegerField;
    Q_pesq_padraoID_CLIENTE: TIntegerField;
    Q_pesq_padraoNOME: TStringField;
    Q_pesq_padraoCPF: TStringField;
    Q_pesq_padraoID_SEQUENCIA: TIntegerField;
    Q_pesq_padraoVALOR_PARCELA: TFMTBCDField;
    Q_pesq_padraoDT_VENCIMENTO: TDateField;
    Q_pesq_padraoDT_PAGAMENTO: TDateField;
    Q_pesq_padraoATRASO: TIntegerField;
    Q_pesq_padraoJUROS: TFMTBCDField;
    Q_pesq_padraoVL_JUROS: TFMTBCDField;
    Q_pesq_padraoTOTAL_PAGAR: TFMTBCDField;
    Q_pesq_padraoSTATUS: TStringField;
    procedure cb_chave_pesquisaClick(Sender: TObject);
    procedure btn_pesquisarClick(Sender: TObject);
    procedure btn_transferirClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure cb_chave_pesquisaChange(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btn_imprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var data : Tdate;
        sequencia : Integer;
  end;

var
  Frm_pesq_parcelas_receber: TFrm_pesq_parcelas_receber;

implementation

{$R *.dfm}

uses U_DM;

procedure TFrm_pesq_parcelas_receber.btn_imprimirClick(Sender: TObject);
var caminho : String;
begin
  caminho := ExtractFilepath(Application.ExeName);
  if Frm_pesq_parcelas_receber.Rel_pesq_padrao.LoadFromFile(caminho + 'Rel_lista_receber.fr3') then
  begin
    Rel_pesq_padrao.Clear;
    Rel_pesq_padrao.LoadFromFile(extractfilepath(application.ExeName) + 'Rel_lista_receber.fr3');
    Rel_pesq_padrao.Variables['nome'] := QuotedStr(dm.usuario);
    Rel_pesq_padrao.PrepareReport(true);
    Rel_pesq_padrao.ShowPreparedReport;
    Frm_pesq_parcelas_receber.Close;
  end
  else
  Messagedlg('Relat�rio n�o encontrado',mtError,[mbOk],0);
end;

procedure TFrm_pesq_parcelas_receber.btn_pesquisarClick(Sender: TObject);
begin
  //inherited;
  Q_pesq_padrao.Close;
  Q_pesq_padrao.SQL.Add('');
  Q_pesq_padrao.Params.Clear;
  Q_pesq_padrao.SQL.Clear;
  Q_pesq_padrao.SQL.Add('SELECT A.ID_VENDA, A.ID_CLIENTE, B.NOME, B.CPF, C.ID_SEQUENCIA, C.VALOR_PARCELA, '
                        +'C.DT_VENCIMENTO, C.DT_PAGAMENTO, C.ATRASO, C.JUROS, C.VL_JUROS, C.TOTAL_PAGAR, C.STATUS '
                        +'FROM VENDA A ');
  Q_pesq_padrao.SQL.Add('INNER JOIN CLIENTE B ON B.ID_CLIENTE = A.ID_CLIENTE ');
  Q_pesq_padrao.SQL.Add('INNER JOIN CONTAS_RECEBER C ON C.ID_VENDA = A.ID_VENDA ');
  //Q_pesq_padrao.SQL.Add('ORDER BY A.ID_VENDA; '

  case cb_chave_pesquisa.ItemIndex of

  0:begin
     Q_pesq_padrao.SQL.Add('WHERE A.ID_CLIENTE = :PID_CLIENTE ');
     Q_pesq_padrao.ParamByName('PID_CLIENTE').AsString := ed_nome.Text;
     Q_pesq_padrao.SQL.Add('AND C.STATUS = ''EM ABERTO'' ');
     Q_pesq_padrao.SQL.Add('ORDER BY A.ID_VENDA');
  end;

  1:begin
     Q_pesq_padrao.SQL.Add('WHERE B.NOME LIKE :PNOME ');
     Q_pesq_padrao.ParamByName('PNOME').AsString := '%' + ed_nome.Text +'%';
     Q_pesq_padrao.SQL.Add('AND C.STATUS = ''EM ABERTO'' ');
     Q_pesq_padrao.SQL.Add('ORDER BY A.ID_VENDA');
  end;

  2:begin
     Q_pesq_padrao.SQL.Add('ORDER BY A.ID_VENDA');
  end;

  end;

  Q_pesq_padrao.Open;
  lb_resultado.Caption := IntToStr(Q_pesq_padrao.RecordCount);
  if Q_pesq_padrao.IsEmpty then
  begin
    Messagedlg('Nenhum registro encontrado!',mtInformation,[mbOk],0);
  end;
end;

procedure TFrm_pesq_parcelas_receber.btn_transferirClick(Sender: TObject);
begin
  inherited;
  if Q_pesq_padrao.RecordCount > 0 then
  begin
    codigo := Q_pesq_padraoID_VENDA.AsInteger;
    data := Q_pesq_padraoDT_VENCIMENTO.AsDateTime;
    sequencia := Q_pesq_padraoID_SEQUENCIA.AsInteger;
  end
  else
  abort;
end;

procedure TFrm_pesq_parcelas_receber.cb_chave_pesquisaChange(Sender: TObject);
begin
  case cb_chave_pesquisa.ItemIndex of
    0:begin
      lb_nome.Caption := 'Digite o c�digo do cliente';
      ed_nome.Visible := True;
      ed_nome.SetFocus;
    end;

    1:begin
      lb_nome.Caption := 'Digite o nome do cliente';
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

procedure TFrm_pesq_parcelas_receber.cb_chave_pesquisaClick(Sender: TObject);
begin
  //inherited;
  ed_nome.Visible := True;
  ed_nome.Clear;
  ed_nome.SetFocus;
end;

procedure TFrm_pesq_parcelas_receber.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  btn_transferir.Click;
end;

procedure TFrm_pesq_parcelas_receber.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  //inherited;
  //parcela recebida
  if (Q_pesq_padraoDT_PAGAMENTO.Value <> 0) and
  (Q_pesq_padraoSTATUS.AsString = 'RECEBIDO') then
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
