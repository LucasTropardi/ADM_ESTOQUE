unit U_pesq_venda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_form_pesquisa_padrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, frxClass, frxExportBaseDialog, frxExportPDF,
  frxDBSet, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TFrm_pesq_venda = class(TFrm_pesquisa_padrao)
    Q_pesq_padraoID_VENDA: TIntegerField;
    Q_pesq_padraoID_CLIENTE: TIntegerField;
    Q_pesq_padraoNOME: TStringField;
    Q_pesq_padraoID_FORMA_PGTO: TIntegerField;
    Q_pesq_padraoDESCRICAO: TStringField;
    Q_pesq_padraoUSUARIO: TStringField;
    Q_pesq_padraoCADASTRO: TDateField;
    Q_pesq_padraoVALOR: TFMTBCDField;
    lb_valor_venda: TLabel;
    procedure cb_chave_pesquisaChange(Sender: TObject);
    procedure btn_pesquisarClick(Sender: TObject);
    procedure btn_transferirClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btn_imprimirClick(Sender: TObject);
    procedure Soma_venda();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_pesq_venda: TFrm_pesq_venda;

implementation

{$R *.dfm}

procedure TFrm_pesq_venda.btn_imprimirClick(Sender: TObject);
var caminho : String;
begin
  //inherited;
    //Abre relat�rio
  caminho := ExtractFilepath(Application.ExeName);
  if Frm_pesq_venda.Rel_pesq_padrao.LoadFromFile(caminho + 'Rel_pesq_venda.fr3') then
  begin
    Rel_pesq_padrao.Clear;
    Rel_pesq_padrao.LoadFromFile(extractfilepath(application.ExeName) + 'Rel_pesq_venda.fr3');
    Rel_pesq_padrao.PrepareReport(true);
    Rel_pesq_padrao.ShowPreparedReport;
  end
  else
  Messagedlg('Relat�rio n�o encontrado',mtError,[mbOk],0);

end;

procedure TFrm_pesq_venda.btn_pesquisarClick(Sender: TObject);
begin
  Q_pesq_padrao.Close;
  Q_pesq_padrao.SQL.Add('');
  Q_pesq_padrao.Params.Clear;
  Q_pesq_padrao.SQL.Clear;
  Q_pesq_padrao.SQL.Add('SELECT A.ID_VENDA,A.ID_CLIENTE,B.NOME,A.ID_FORMA_PGTO,C.DESCRICAO,A.USUARIO,A.VALOR,'
  +'A.CADASTRO FROM VENDA A INNER JOIN CLIENTE B ON B.ID_CLIENTE = A.ID_CLIENTE '
  +'INNER JOIN FORMA_PGTO C ON C.ID_FORMA_PGTO = A.ID_FORMA_PGTO');

  case cb_chave_pesquisa.ItemIndex of
    0:begin  //pesquisa por c�digo
      Q_pesq_padrao.SQL.Add('WHERE A.ID_VENDA = :PID_VENDA');
      Q_pesq_padrao.ParamByName('PID_VENDA').asString := ed_nome.Text;
    end;

    1:begin  //pesquisa por nome
      Q_pesq_padrao.SQL.Add('WHERE A.USUARIO LIKE :PUSUARIO');
      Q_pesq_padrao.ParamByName('PUSUARIO').asString := '%' +ed_nome.Text + '%';
    end;

    2:begin  //PESQUISA FORNECEDOR
      Q_pesq_padrao.SQL.Add('WHERE B.ID_CLIENTE = :PID_CLIENTE');
      Q_pesq_padrao.ParamByName('PID_CLIENTE').asString := ed_nome.Text;
    end;

    3:begin  //pesquisa por FORMA_PGTO
      Q_pesq_padrao.SQL.Add('WHERE A.ID_FORMA_PGTO = :PID_FORMA_PGTO');
      Q_pesq_padrao.ParamByName('PID_FORMA_PGTO').AsInteger := StrToInt(ed_nome.Text);
    end;


    4:begin  //pesquisa por data
      Q_pesq_padrao.SQL.Add('WHERE A.CADASTRO = :PCADASTRO');
      Q_pesq_padrao.ParamByName('PCADASTRO') .AsDate := StrToDate(mk_inicio.Text);
    end;

    5:begin //pesquisa por per�odo
      Q_pesq_padrao.SQL.Add('WHERE A.CADASTRO BETWEEN :PINICIO AND :PFIM');
      Q_pesq_padrao.ParamByName('PINICIO') .AsDate := StrToDate(mk_inicio.Text);
      Q_pesq_padrao.ParamByName('PFIM') .AsDate := StrToDate(mk_fim.Text);
    end;

    6:begin
      Q_pesq_padrao.SQL.Add('ORDER BY A.ID_VENDA');
    end;


  end;
  Q_pesq_padrao.Open;
  //mostra a quantidade de registros encontrados
  lb_resultado.Caption := 'Total de registros localizados: '+ IntToStr(Q_pesq_padrao.RecordCount);
  //apresenta valor em vendas
  Soma_venda;

  if Q_pesq_padrao.IsEmpty then
  begin
    Messagedlg('Registro n�o encontrado.',mtInformation, [mbOk],0);
  end
  else
  abort;
end;

procedure TFrm_pesq_venda.btn_transferirClick(Sender: TObject);
begin
  inherited;
  if Q_pesq_padrao.RecordCount > 0 then
  begin
    codigo := Q_pesq_padraoID_VENDA.AsInteger;
  end
  else
  abort;
end;

procedure TFrm_pesq_venda.cb_chave_pesquisaChange(Sender: TObject);
begin
 //inherited;
  case cb_chave_pesquisa.ItemIndex of

    0:begin //seleciona pelo codigo compra
    ed_nome.Visible := true;
    ed_nome.SetFocus;
    mk_inicio.visible := false;
    mk_fim.VIsible := false;
    lb_nome.Visible := true;
    lb_inicio.Visible := false;
    lb_nome.Caption := 'Digite o c�digo da venda' ;
    lb_fim.Visible := false;
    ed_nome.Clear;
    end;

    1:begin //seleciona pelo usuario
    ed_nome.Visible := true;
    mk_inicio.visible := false;
    mk_fim.VIsible := false;
    lb_nome.Visible := true;
    lb_inicio.Visible := false;
    lb_nome.Caption := 'Digite o nome do usuario' ;
    lb_fim.Visible := false;
    ed_nome.Clear;
    end;

    2:begin //seleciona pelo fornecedor
    ed_nome.Visible := true;
    mk_inicio.visible := false;
    mk_fim.VIsible := false;
    lb_nome.Visible := true;
    lb_inicio.Visible := false;
    lb_nome.Caption := 'Digite o c�digo do cliente' ;
    lb_fim.Visible := false;
    ed_nome.Clear;
    end;

    3:begin //pesquisa pelo codigo pgto
    ed_nome.Visible := true;
    ed_nome.SetFocus;
    mk_inicio.visible := false;
    mk_fim.VIsible := false;
    lb_nome.Visible := true;
    lb_inicio.Visible := false;
    lb_fim.Visible := false;
    lb_nome.Caption := 'Digite o c�digo da forma de pgto';
    ed_nome.Clear;
    end;

    4:begin //seleciona pela data
    ed_nome.Visible := false;
    mk_inicio.visible := true;
    mk_inicio.SetFocus;
    mk_fim.Visible := false;
    lb_nome.Visible := false;
    lb_inicio.Visible := true;
    lb_inicio.Caption := 'Digite a data' ;
    lb_fim.Visible := false;
    ed_nome.Clear;
    end;

    5:begin //seleciona por per�odo
    ed_nome.Visible := false;
    mk_inicio.visible := true;
    mk_fim.VIsible := true;
    lb_nome.Visible := false;
    lb_inicio.Visible := true;
    lb_inicio.Caption := 'Digite o per�odo' ;
    lb_fim.Visible := false;
    ed_nome.Clear;
    end;

    6:begin //seleciona por per�odo
    ed_nome.Visible := false;
    mk_inicio.visible := false;
    mk_fim.VIsible := false;
    lb_nome.Visible := true;
    lb_inicio.Visible := false;
    lb_nome.Caption := 'Mostrando todos os registros' ;
    lb_fim.Visible := false;
    ed_nome.Clear;
    end;
end;

end;
procedure TFrm_pesq_venda.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  btn_transferir.Click;
end;

procedure TFrm_pesq_venda.Soma_venda;
var soma : Currency;
begin
    soma := 0;
  //soma quantidade de vendas
  Q_pesq_padrao.First;
  while not Q_pesq_padrao.Eof do
  begin
    Soma := Soma + Q_pesq_padraoVALOR.AsCurrency;
    Q_pesq_padrao.Next;
  end;
  lb_valor_venda.Caption := 'Valor em vendas: ' + FormatFloat(' R$ ##,##0.00',(soma));

end;


End.
