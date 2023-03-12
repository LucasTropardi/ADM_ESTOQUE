unit U_empresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TFrm_empresa = class(TFrm_padrao)
    btn_foto: TBitBtn;
    btn_clear: TBitBtn;
    OpenDialog1: TOpenDialog;
    Q_padraoID_EMPRESA: TFDAutoIncField;
    Q_padraoRAZAO_SOCIAL: TStringField;
    Q_padraoN_FANTASIA: TStringField;
    Q_padraoENDERECO: TStringField;
    Q_padraoNUMERO: TIntegerField;
    Q_padraoBAIRRO: TStringField;
    Q_padraoCIDADE: TStringField;
    Q_padraoUF: TStringField;
    Q_padraoCEP: TStringField;
    Q_padraoTELEFONE: TStringField;
    Q_padraoCNPJ: TStringField;
    Q_padraoEMAIL: TStringField;
    Q_padraoLOGO: TBlobField;
    Q_padraoCADASTRO: TDateField;
    Label1: TLabel;
    db_id_empresa: TDBEdit;
    Label2: TLabel;
    db_razao_social: TDBEdit;
    Label3: TLabel;
    db_n_fantasia: TDBEdit;
    Label4: TLabel;
    db_endereco: TDBEdit;
    Label5: TLabel;
    db_numero: TDBEdit;
    Label6: TLabel;
    db_bairro: TDBEdit;
    Label7: TLabel;
    db_cidade: TDBEdit;
    Label8: TLabel;
    db_uf: TDBEdit;
    Label9: TLabel;
    db_cep: TDBEdit;
    Label10: TLabel;
    db_telefone: TDBEdit;
    Label11: TLabel;
    db_cnpj: TDBEdit;
    Label13: TLabel;
    db_email: TDBEdit;
    Label14: TLabel;
    DBImage1: TDBImage;
    Label15: TLabel;
    db_cadastro: TDBEdit;
    procedure btn_novoClick(Sender: TObject);
    procedure btn_fotoClick(Sender: TObject);
    procedure btn_clearClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_empresa: TFrm_empresa;

implementation

{$R *.dfm}

procedure TFrm_empresa.btn_clearClick(Sender: TObject);
begin
  Q_padrao.Edit;
  Q_padraoLOGO.AsVariant := null;
  Q_padrao.Refresh;
  Messagedlg('Imagem deletada com sucesso.',mtInformation,[mbOk],0);
end;

procedure TFrm_empresa.btn_fotoClick(Sender: TObject);
begin
  Q_padrao.Edit;
  opendialog1.Execute;
  dbimage1.Picture.LoadFromFile(opendialog1.FileName);
  Q_padrao.Refresh;
  Messagedlg('Imagem inserida com sucesso.',mtInformation, [mbOk],0);
end;

procedure TFrm_empresa.btn_novoClick(Sender: TObject);
begin
  inherited;
  if Q_padrao.RecordCount > 0 then
  begin
    Messagedlg('Cadastro j� realizado', mtError, [mbOk],0);
    Q_padrao.Cancel;
    tratabotoes;
  end
  else
  db_cadastro.Text := DateToStr(Now);
  db_razao_social.setFocus;
end;

end.
