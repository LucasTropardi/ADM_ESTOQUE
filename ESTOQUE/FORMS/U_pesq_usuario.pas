unit U_pesq_usuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_form_pesquisa_padrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls,
  frxClass, frxDBSet, frxExportBaseDialog, frxExportPDF, Vcl.DBCtrls;

type
  TFrm_pesq_usuario = class(TFrm_pesquisa_padrao)
    Q_pesq_padraoID_USUARIO: TIntegerField;
    Q_pesq_padraoNOME: TStringField;
    Q_pesq_padraoTIPO: TStringField;
    Q_pesq_padraoCADASTRO: TDateField;
    Label5: TLabel;
    procedure btn_pesquisarClick(Sender: TObject);
    procedure cb_chave_pesquisaChange(Sender: TObject);
    procedure btn_transferirClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btn_imprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_pesq_usuario: TFrm_pesq_usuario;

implementation

{$R *.dfm}

procedure TFrm_pesq_usuario.btn_imprimirClick(Sender: TObject);
var caminho : String;
begin
  //Abre relat�rio
  caminho := ExtractFilepath(Application.ExeName);
  if Frm_pesq_usuario.Rel_pesq_padrao.LoadFromFile(caminho + 'Rel_usuario.fr3') then
  begin
    Rel_pesq_padrao.Clear;
    Rel_pesq_padrao.LoadFromFile(extractfilepath(application.ExeName) + 'Rel_usuario.fr3');
    Rel_pesq_padrao.PrepareReport(true);
    Rel_pesq_padrao.ShowPreparedReport;
  end
  else
  Messagedlg('Relat�rio n�o encontrado',mtError,[mbOk],0);


end;

procedure TFrm_pesq_usuario.btn_pesquisarClick(Sender: TObject);
begin

  Q_pesq_padrao.Close;
  Q_pesq_padrao.SQL.Add('');
  Q_pesq_padrao.Params.Clear;
  Q_pesq_padrao.SQL.Clear;
  Q_pesq_padrao.SQL.Add('SELECT ID_USUARIO, NOME, TIPO, CADASTRO FROM USUARIO');

  case cb_chave_pesquisa.ItemIndex of
    0:begin  //pesquisa por c�digo
      Q_pesq_padrao.SQL.Add('WHERE ID_USUARIO = :PID_USUARIO');
      Q_pesq_padrao.ParamByName('PID_USUARIO').asString := ed_nome.Text;
    end;

    1:begin  //pesquisa por nome
      Q_pesq_padrao.SQL.Add('WHERE NOME LIKE :PNOME');
      Q_pesq_padrao.ParamByName('PNOME').asString := '%' +ed_nome.Text + '%';
    end;

    2:begin  //pesquisa por data
      Q_pesq_padrao.SQL.Add('WHERE CADASTRO = :PCADASTRO');
      Q_pesq_padrao.ParamByName('PCADASTRO') .AsDate := StrToDate(mk_inicio.Text);
    end;

    3:begin //pesquisa por per�odo
      Q_pesq_padrao.SQL.Add('WHERE CADASTRO BETWEEN :PINICIO AND :PFIM');
      Q_pesq_padrao.ParamByName('PINICIO') .AsDate := StrToDate(mk_inicio.Text);
      Q_pesq_padrao.ParamByName('PFIM') .AsDate := StrToDate(mk_fim.Text);
    end;

    4:begin
      Q_pesq_padrao.SQL.Add('ORDER BY ID_USUARIO');
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

procedure TFrm_pesq_usuario.btn_transferirClick(Sender: TObject);
begin
  inherited;
  if Q_pesq_padrao.RecordCount > 0 then
  begin
    codigo := Q_pesq_padraoID_USUARIO.AsInteger;
  end
  else
  abort;
end;

procedure TFrm_pesq_usuario.cb_chave_pesquisaChange(Sender: TObject);
begin
 case cb_chave_pesquisa.ItemIndex of
    0:begin //pesquisa pelo codigo
    ed_nome.Visible := true;
    ed_nome.SetFocus;
    mk_inicio.visible := false;
    mk_fim.VIsible := false;
    lb_nome.Visible := true;
    lb_inicio.Visible := false;
    lb_fim.Visible := false;
    lb_nome.Caption := 'Digite o c�digo';
    ed_nome.Clear;
    end;

    1:begin  //pesquisa pelo nome
    ed_nome.Visible := true;
    ed_nome.SetFocus;
    mk_inicio.visible := false;
    mk_fim.VIsible := false;
    lb_nome.Visible := true;
    lb_inicio.Visible := false;
    lb_fim.Visible := false;
    lb_nome.Caption := 'Digite o nome';
    ed_nome.Clear;
    end;

     2:begin //seleciona pela data
    ed_nome.Visible := false;
    mk_inicio.visible := true;
    mk_inicio.SetFocus;
    mk_fim.VIsible := false;
    lb_nome.Visible := false;
    lb_inicio.Visible := true;
    lb_inicio.Caption := 'Digite a data' ;
    lb_fim.Visible := false;
    mk_inicio.Clear;
    end;

    3:begin //seleciona  por periodo
    ed_nome.Visible := false;
    mk_inicio.visible := true;
    mk_fim.VIsible := true;
    mk_inicio.SetFocus;
    lb_nome.Visible := false;
    lb_inicio.Visible := true;
    lb_fim.Visible := false;
    lb_inicio.Caption := 'Digite o per�odo';
    mk_inicio.Clear;
    mk_fim.Clear;

    end;
    4:begin //seleciona  por periodo
    ed_nome.Visible := false;
    mk_inicio.visible := false;
    mk_fim.VIsible := false;
    lb_nome.Visible := false;
    lb_inicio.Visible := false;
    lb_fim.Visible := false;
    lb_nome.Visible := true;
    lb_nome.Caption := 'Apresentando todos os registros';


    end;

end;

end;
procedure TFrm_pesq_usuario.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  btn_transferir.Click;
end;

end.
