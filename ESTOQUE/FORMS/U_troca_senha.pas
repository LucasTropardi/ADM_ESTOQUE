unit U_troca_senha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFrm_troca_senha = class(TForm)
    Label1: TLabel;
    ed_nome: TEdit;
    Label2: TLabel;
    ed_senha: TEdit;
    Panel1: TPanel;
    btn_cancelar: TBitBtn;
    btn_troca_senha: TBitBtn;
    Label3: TLabel;
    ed_nova_senha: TEdit;
    Label4: TLabel;
    ed_confirmar_senha: TEdit;
    Image1: TImage;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_troca_senhaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_troca_senha: TFrm_troca_senha;

implementation

{$R *.dfm}

uses U_DM, U_login;

procedure TFrm_troca_senha.btn_cancelarClick(Sender: TObject);
begin
  close;
end;

procedure TFrm_troca_senha.btn_troca_senhaClick(Sender: TObject);
begin
  if ed_nome.Text = '' then
  begin
    Messagedlg('O campo nome deve ser preenchido.',mtInformation,[mbOk],0);
    ed_nome.SetFocus;
    Abort;
  end;
  if ed_senha.Text = '' then
  begin
    Messagedlg('O campo senha deve ser preenchido.',mtInformation,[mbOk],0);
    ed_senha.SetFocus;
    Abort;
  end;
  if ed_nova_senha.Text = '' then
  begin
    Messagedlg('O campo nova senha deve ser preenchido.',mtInformation,[mbOk],0);
    ed_nova_senha.SetFocus;
    Abort;
  end;
  if ed_confirmar_senha.Text = '' then
  begin
    Messagedlg('O campo confirmar senha deve ser preenchido.',mtInformation,[mbOk],0);
    ed_confirmar_senha.SetFocus;
    Abort;
  end;
  if ed_nova_senha.Text <> ed_confirmar_senha.Text then
  begin
    Messagedlg('A nova senha est� diferente da confirma��o.',mtInformation,[mbOk],0);
    ed_confirmar_senha.SetFocus;
    Abort;
  end
  else
  dm.Q_login.Close;
  dm.Q_login.SQL.Add('');
  dm.Q_login.SQL.CLear;
  dm.Q_login.Params.Clear;
  dm.Q_login.SQL.Add('SELECT * FROM USUARIO');
  dm.Q_login.SQL.Add('WHERE NOME = :PNOME AND SENHA = :PSENHA');
  dm.Q_login.ParamByName('PNOME').AsString := ed_nome.Text;
  dm.Q_login.ParamByName('PSENHA').AsString := ed_senha.Text;
  dm.Q_login.Open;

  if dm.Q_login.RecordCount > 0 then
  begin
    dm.Q_login.Edit;
    dm.Q_login.FieldByName('SENHA').AsString := ed_nova_senha.Text;
    dm.Q_login.Refresh;
    Messagedlg('Senha atualizada com sucesso!', mtInformation, [mbOk],0);
    Frm_troca_senha.Close;
    Frm_login.ed_nome.SetFocus;
  end
  else
  Messagedlg('Nome ou senha incorretos, verifique.', mtInformation,[mbOk],0);
  ed_nome.SetFocus;


end;

procedure TFrm_troca_senha.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    Perform(wm_nextdlgCtl,0,0);
  end;
end;

end.
