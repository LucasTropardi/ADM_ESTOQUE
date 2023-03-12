unit U_forma_pgto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TFrm_forma_pgto = class(TFrm_padrao)
    Q_padraoID_FORMA_PGTO: TIntegerField;
    Q_padraoDESCRICAO: TStringField;
    Q_padraoCADASTRO: TDateField;
    Label1: TLabel;
    db_id_forma_pgto: TDBEdit;
    Label2: TLabel;
    db_descricao: TDBEdit;
    Label3: TLabel;
    db_cadastro: TDBEdit;
    procedure btn_novoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btn_editarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_forma_pgto: TFrm_forma_pgto;

implementation

{$R *.dfm}

uses U_pesq_forma_pgto;

procedure TFrm_forma_pgto.BitBtn1Click(Sender: TObject);
begin
  inherited;
  Frm_pesq_forma_pgto:=TFrm_pesq_forma_pgto.Create(Self);
  Frm_pesq_forma_pgto.ShowModal;
  try
    if Frm_pesq_forma_pgto.codigo > 0 then
    begin
      Q_padrao.Open;
      Q_padrao.Locate('ID_FORMA_PGTO',Frm_pesq_forma_pgto.codigo,[]);
    end;
  finally
    Frm_pesq_forma_pgto.Free;
    Frm_pesq_forma_pgto:=nil;
  end;
end;

procedure TFrm_forma_pgto.btn_editarClick(Sender: TObject);
begin
  Messagedlg('A edição terá efeito apenas no nome da forma de pagamento, '
  +'para fins de relatórios. Caso necessite alterar funcionalidades da forma de pagamento '
  +'entre em contato com o suporte técnico.', mtInformation, [mbOK],0);
  inherited;
end;

procedure TFrm_forma_pgto.btn_novoClick(Sender: TObject);
begin
  Messagedlg('Para cadastrar uma nova forma de pagamento alguns passos devem ser seguidos. '
  +'Entre em contato com o suporte técnico.',mtInformation,[mbOk],0);
  Abort;
  {inherited;
  db_cadastro.Text := DateToStr(now);
  db_descricao.SetFocus;}
end;

end.
