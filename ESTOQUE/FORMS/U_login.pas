unit U_login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls;

type
  TFrm_login = class(TForm)
    ed_nome: TEdit;
    ed_senha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    btn_ok: TBitBtn;
    btn_cancelar: TBitBtn;
    btn_troca_senha: TBitBtn;
    cb_banco: TComboBox;
    Label3: TLabel;
    Bevel1: TBevel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btn_okClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_troca_senhaClick(Sender: TObject);
    procedure cb_bancoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_login: TFrm_login;
  contagem : integer;

implementation

{$R *.dfm}

uses U_DM, U_principal, U_troca_senha;

procedure TFrm_login.btn_cancelarClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrm_login.btn_okClick(Sender: TObject);
begin
  if cb_banco.ItemIndex = -1 then
  begin
    Messagedlg('Escolha qual banco conectar!', mtInformation,[mbOk],0);
    cb_banco.SetFocus;
    Abort;
  end
  else
  inc(contagem);
  dm.Q_login.Close;
  dm.Q_login.SQL.Add('');
  dm.Q_login.SQL.Clear;
  dm.Q_login.Params.Clear;
  dm.Q_login.SQL.Add('SELECT * FROM USUARIO');
  dm.Q_login.SQL.Add('WHERE NOME = :PNOME AND SENHA = :PSENHA');
  dm.Q_login.ParambyName('PNOME').AsString := ed_nome.Text;
  dm.Q_login.ParamByName('PSENHA').AsString := ed_senha.Text;
  //dm.Q_login.ParamByName('PTIPO').AsString := cb_tipo.Text;
  dm.Q_login.Open;

  if dm.Q_login.RecordCount > 0 then
  begin
    ShowMessage('Seja bem vindo, ' + ed_nome.Text + '!');
    dm.usuario := ed_nome.Text;
    dm.tipo_usuario := dm.Q_loginTIPO.AsString;
    dm.banco := cb_banco.Text;
    Frm_principal := Tfrm_principal.Create(Self);
    Frm_principal.Show;
    contagem := 0;
  end
  else
    Messagedlg('Nome ou senha incorretos, verifique!',mtInformation,[mbOk],0);
    ed_nome.SetFocus;
    //Encerra a aplica��o
    if contagem >= 3 then
    begin
      Messagedlg('Voc� ultrapassou o limite de tentativas e o sistema ser� encerrado.',mtInformation,[mbOk],0);
      Application.Terminate;
    end;
    statusbar1.Panels[0].Text := 'Tentativa: ' + IntToStr(contagem) + '/3';
end;

procedure TFrm_login.btn_troca_senhaClick(Sender: TObject);
begin
  //Chama a tela trocar senha
  Frm_troca_senha := Tfrm_troca_senha.Create(Self);
  Frm_troca_senha.ShowModal;
  try

  finally
    Frm_troca_senha.Free;
    Frm_troca_senha := Nil;
  end;
end;

procedure TFrm_login.cb_bancoChange(Sender: TObject);
begin
  //Escolhe o banco a se utilizar
  case cb_banco.ItemIndex of
    0:begin
      //conecta ao banco produ��o
      dm.conexao.Connected := False;
      dm.conexao.Params.Values['Database']:=
      'C:\ESTOQUE\EXE\BANCO\ESTOQUE.FDB';
      dm.conexao.Connected := True;
    end;

    1:begin
      //conecta ao banco produ��o
      dm.conexao.Connected := False;
      dm.conexao.Params.Values['Database']:=
      'C:\ESTOQUE\EXE\BANCO\TREINO.FDB';
      dm.conexao.Connected := True;
    end;

    2:begin
      //conecta ao banco produ��o
      dm.conexao.Connected := False;
      dm.conexao.Params.Values['Database']:=
      'C:\ESTOQUE\EXE\BANCO\TESTE.FDB';
      dm.conexao.Connected := True;
    end;
  end;
end;

procedure TFrm_login.FormKeyPress(Sender: TObject; var Key: Char);
begin
  //FAZ ENTER FUNCIONAR COMO TAB
  if Key = #13 then
  begin
    key := #0;
    Perform(wm_nextdlgCtl,0,0);
  end;
end;

procedure TFrm_login.FormShow(Sender: TObject);
begin
  //coloca o foco para o ed_nome
  ed_nome.SetFocus;
  statusbar1.Panels[0].Text := 'Tentativa: ' + IntToStr(contagem) + '/3';
  //ambiente produ��o por padr�o
  cb_banco.ItemIndex := 0;
end;

end.
