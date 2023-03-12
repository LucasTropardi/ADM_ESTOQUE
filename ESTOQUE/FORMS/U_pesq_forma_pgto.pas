unit U_pesq_forma_pgto;

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
  TFrm_pesq_forma_pgto = class(TFrm_pesquisa_padrao)
    Q_pesq_padraoID_FORMA_PGTO: TIntegerField;
    Q_pesq_padraoDESCRICAO: TStringField;
    Q_pesq_padraoCADASTRO: TDateField;
    procedure btn_pesquisarClick(Sender: TObject);
    procedure cb_chave_pesquisaChange(Sender: TObject);
    procedure btn_transferirClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_pesq_forma_pgto: TFrm_pesq_forma_pgto;

implementation

{$R *.dfm}

procedure TFrm_pesq_forma_pgto.btn_pesquisarClick(Sender: TObject);
begin
  inherited;
  Q_pesq_padrao.Close;
  Q_pesq_padrao.SQL.Add('');
  Q_pesq_padrao.Params.Clear;
  Q_pesq_padrao.SQL.Clear;
  Q_pesq_padrao.SQL.Add('SELECT * FROM FORMA_PGTO');

  case cb_chave_pesquisa.ItemIndex of
  0:begin  //pesquisa por c�digo
    Q_pesq_padrao.SQL.Add('WHERE ID_FORMA_PGTO = :PID_FORMA_PGTO');
    Q_pesq_padrao.ParamByName('PID_FORMA_PGTO').asString := ed_nome.Text;
  end;

  1:begin  //pesquisa por descri��o
    Q_pesq_padrao.SQL.Add('WHERE DESCRICAO LIKE :PDESCRICAO');
    Q_pesq_padrao.ParamByName('PDESCRICAO').asString := '%' +ed_nome.Text + '%';
  end;

  2:begin  //PESQUISA TODOS
    Q_pesq_padrao.SQL.Add('ORDER BY ID_FORMA_PGTO');
  end;

  end;
  Q_pesq_padrao.Open;
  //mostra a quantidade de registros encontrados
  lb_resultado.Caption := 'Total de registros localizados: '+ IntToStr(Q_pesq_padrao.RecordCount);

  if Q_pesq_padrao.IsEmpty then
  begin
    Messagedlg('Registro n�o encontrado.',mtInformation, [mbOk],0);
  end
  else
  abort;
end;

procedure TFrm_pesq_forma_pgto.btn_transferirClick(Sender: TObject);
begin
  inherited;
  if Q_pesq_padrao.RecordCount > 0 then
  begin
    codigo := Q_pesq_padraoID_FORMA_PGTO.AsInteger;
  end
  else
  abort;
end;

procedure TFrm_pesq_forma_pgto.cb_chave_pesquisaChange(Sender: TObject);
begin
  //inherited;
  case cb_chave_pesquisa.ItemIndex of

    0:begin //seleciona pelo codigo
    ed_nome.Visible := true;
    ed_nome.SetFocus;
    lb_nome.Visible := true;
    lb_nome.Caption := 'C�digo' ;
    ed_nome.Clear;
    end;

    1:begin //seleciona descricao
    ed_nome.Visible := true;
    lb_nome.Visible := true;
    lb_nome.Caption := 'Descri��o' ;
    ed_nome.Clear;
    end;

    2:begin //seleciona todas
    ed_nome.Visible := false;
    lb_nome.Visible := true;
    lb_nome.Caption := 'Todas' ;
    ed_nome.Clear;
    end;

  end;

end;

procedure TFrm_pesq_forma_pgto.DBGrid1DblClick(Sender: TObject);
begin
  //inherited;
  btn_transferir.Click;
end;

end.
