unit U_padrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrm_padrao = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btn_novo: TBitBtn;
    btn_deletar: TBitBtn;
    btn_editar: TBitBtn;
    btn_gravar: TBitBtn;
    btn_cancelar: TBitBtn;
    btn_atualizar: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    Q_padrao: TFDQuery;
    ds_padrao: TDataSource;
    btn_sair: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_deletarClick(Sender: TObject);
    procedure btn_editarClick(Sender: TObject);
    procedure btn_gravarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_atualizarClick(Sender: TObject);
    procedure Tratabotoes();
    procedure btn_sairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_padrao: TFrm_padrao;

implementation

{$R *.dfm}

uses U_DM;

procedure TFrm_padrao.btn_atualizarClick(Sender: TObject);
begin
//Atualiza o registro
  try
    Tratabotoes;
    Q_padrao.Refresh;
    Messagedlg('Registro atualizado com sucesso', mtInformation,[mbOk],0);
  except
    ShowMessage('Erro ao gravar os dados, verifique.');
  end;
end;

procedure TFrm_padrao.btn_cancelarClick(Sender: TObject);
begin
//Cancela o registro
  Tratabotoes;
  Q_padrao.Cancel;
  Messagedlg('A��o cancelada pelo usu�rio', mtInformation,[mbOk],0);
end;

procedure TFrm_padrao.btn_deletarClick(Sender: TObject);
begin
//Deleta o registro
Tratabotoes;
  if messagedlg('Deseja deletar este registro?',mtConfirmation, [mbOk,mbNo],0) = mrOk then
  begin
    Q_padrao.Delete;
    Messagedlg('Registro deletado com sucesso.',mtInformation,[mbOk],0);
    Tratabotoes;
  end
  else
  Tratabotoes;
  abort;
end;

procedure TFrm_padrao.btn_editarClick(Sender: TObject);
begin
//Abre para edi��o
  Tratabotoes;
  if messagedlg('Deseja editar este registro?',mtConfirmation, [mbOk,mbNo],0) = mrOk then
  begin
    Q_padrao.Edit;
  end
  else
  Tratabotoes;
  abort;
end;

procedure TFrm_padrao.btn_gravarClick(Sender: TObject);
begin
//Salva o registro
  try

    Q_padrao.Post;
    Messagedlg('Registro salvo com sucesso',mtInformation,[mbOk],0);
    Tratabotoes;
  except
    ShowMessage('Erro ao gravar os dados, verifique.');
  end;
end;

procedure TFrm_padrao.btn_novoClick(Sender: TObject);
begin
//Cria um novo registro
  Q_padrao.Open;
  Tratabotoes;
  Q_padrao.Append;
end;

procedure TFrm_padrao.btn_sairClick(Sender: TObject);
begin
  close;
end;

procedure TFrm_padrao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_padrao.Close;
end;

procedure TFrm_padrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
//Faz a fun��o da tecla TAB
  if key = #13 then
  begin
    key := #0;
    Perform(wm_nextDlgCtl,0,0);
  end;

end;

procedure TFrm_padrao.Tratabotoes;
begin
//Ativar e desativar bot�es
  btn_novo.Enabled := not btn_novo.Enabled;
  btn_deletar.Enabled := not btn_deletar.Enabled;
  btn_editar.Enabled := not btn_editar.Enabled;
  btn_gravar.Enabled := not btn_gravar.Enabled;
  btn_atualizar.Enabled := not btn_atualizar.Enabled;
end;

end.
