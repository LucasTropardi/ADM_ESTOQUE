unit U_restore;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_padrao_backup_restore,
  FireDAC.Stan.Def, FireDAC.VCLUI.Wait, FireDAC.Phys.IBWrapper,
  FireDAC.Phys.IBBase, FireDAC.Stan.Intf, FireDAC.Phys, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls;

type
  TFrm_restore = class(TFrm_padrao_backup_restore)
    procedure btn_backupClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_restore: TFrm_restore;

implementation

{$R *.dfm}

uses U_DM;

procedure TFrm_restore.btn_backupClick(Sender: TObject);
begin
  try
  //inherited;
  //Procedimento de backup
  restore.DriverLink := dm.FDPhysFBDriverLink1;
  restore.Username := 'SYSDBA';
  restore.Password := 'masterkey';
  restore.Host := 'servidor';
  restore.Protocol := iplocal;
  restore.Database := ed_origem.Text;
  restore.BackupFiles.Clear;
  restore.BackupFiles.Add(ed_destino.Text);
  restore.Restore;
  Messagedlg('Restauração realizada com sucesso.', mtInformation, [mbOk],0);
  except
    Messagedlg('Falha ao restaurar o backup!', mtError, [mbOk],0);
  end;
end;

end.
