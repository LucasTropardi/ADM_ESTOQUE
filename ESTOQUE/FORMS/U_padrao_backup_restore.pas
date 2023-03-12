unit U_padrao_backup_restore;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  FireDAC.Stan.Def, FireDAC.VCLUI.Wait, FireDAC.Phys.IBWrapper,
  FireDAC.Phys.IBBase, FireDAC.Stan.Intf, FireDAC.Phys;

type
  TFrm_padrao_backup_restore = class(TForm)
    Panel1: TPanel;
    ed_origem: TEdit;
    ed_destino: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btn_origem: TBitBtn;
    btn_destino: TBitBtn;
    btn_backup: TBitBtn;
    btn_sair: TBitBtn;
    mm_status: TMemo;
    OpenDialog1: TOpenDialog;
    backup: TFDIBBackup;
    restore: TFDIBRestore;
    procedure btn_origemClick(Sender: TObject);
    procedure btn_destinoClick(Sender: TObject);
    procedure btn_sairClick(Sender: TObject);
    procedure backupProgress(ASender: TFDPhysDriverService;
      const AMessage: string);
    procedure backupError(ASender, AInitiator: TObject;
      var AException: Exception);
    procedure restoreProgress(ASender: TFDPhysDriverService;
      const AMessage: string);
    procedure restoreError(ASender, AInitiator: TObject;
      var AException: Exception);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_padrao_backup_restore: TFrm_padrao_backup_restore;

implementation

{$R *.dfm}

uses U_DM;

procedure TFrm_padrao_backup_restore.backupError(ASender, AInitiator: TObject;
  var AException: Exception);
begin
  //Se der erro
  mm_status.Lines.Add('Error');
  mm_status.Lines.Add(AException.Message);
end;

procedure TFrm_padrao_backup_restore.backupProgress(
  ASender: TFDPhysDriverService; const AMessage: string);
begin
  //Se estiver tudo ok
  mm_status.Lines.Add('Ok');
  mm_status.Lines.Add(Amessage);
end;

procedure TFrm_padrao_backup_restore.btn_destinoClick(Sender: TObject);
begin
  //Localizar destino do backup da base de dados
  if opendialog1.Execute then
  begin
    ed_destino.Text := OpenDialog1.FileName;
  end
  else
  abort;
end;

procedure TFrm_padrao_backup_restore.btn_origemClick(Sender: TObject);
begin
  //Localizar origem da base de dados
  if opendialog1.Execute then
  begin
    ed_origem.Text := OpenDialog1.FileName;
  end
  else
  abort;
end;

procedure TFrm_padrao_backup_restore.btn_sairClick(Sender: TObject);
begin
  //fechar a tela
  Close;
end;

procedure TFrm_padrao_backup_restore.restoreError(ASender, AInitiator: TObject;
  var AException: Exception);
begin
  //Se der erro
  mm_status.Lines.Add('Error');
  mm_status.Lines.Add(AException.Message);
end;

procedure TFrm_padrao_backup_restore.restoreProgress(
  ASender: TFDPhysDriverService; const AMessage: string);
begin
  //Se estiver tudo ok
  mm_status.Lines.Add('Ok');
  mm_Status.Lines.Add(Amessage);
end;

end.
