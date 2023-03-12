unit U_conta_pagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Dateutils;

type
  TFrm_conta_pagar = class(TFrm_padrao)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Q_pagar: TFDQuery;
    ds_pagar: TDataSource;
    Q_pagarID_SEQUENCIA: TIntegerField;
    Q_pagarID_COMPRA: TIntegerField;
    Q_pagarVALOR_PARCELA: TFMTBCDField;
    Q_pagarDT_VENCIMENTO: TDateField;
    Q_pagarDT_PAGAMENTO: TDateField;
    Q_pagarATRASO: TIntegerField;
    Q_pagarJUROS: TFMTBCDField;
    Q_pagarVL_JUROS: TFMTBCDField;
    Q_pagarTOTAL_PAGAR: TFMTBCDField;
    Q_pagarSTATUS: TStringField;
    Q_padraoID_COMPRA: TIntegerField;
    Q_padraoID_FORNECEDOR: TIntegerField;
    Q_padraoNOME: TStringField;
    Q_padraoCNPJ: TStringField;
    Label6: TLabel;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure btn_editarClick(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure btn_atualizarClick(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_conta_pagar: TFrm_conta_pagar;

implementation

{$R *.dfm}

uses U_pesq_parcela_pagar, U_DM;

procedure TFrm_conta_pagar.BitBtn1Click(Sender: TObject);
begin
  Q_padrao.Close;
  Frm_pesq_parcela_pagar := TFrm_pesq_parcela_pagar.Create(Self);
  Frm_pesq_parcela_pagar.ShowModal;
  try
    if Frm_pesq_parcela_pagar.codigo > 0 then
      begin
      Q_padrao.Open;
      Q_pagar.Open;
      Q_pagar.Locate('ID_COMPRA',Frm_pesq_parcela_pagar.codigo,[]);
      Q_pagar.Locate('DT_VENCIMENTO',Frm_pesq_parcela_pagar.data,[]);
      Q_pagar.Locate('ID_SEQUENCIA',Frm_pesq_parcela_pagar.sequencia,[]);
      end;
  finally
    Frm_pesq_parcela_pagar.Free;
    Frm_pesq_parcela_pagar:=Nil;
  end;

end;

procedure TFrm_conta_pagar.btn_atualizarClick(Sender: TObject);
begin
  Q_pagar.Refresh;
  inherited;

end;

procedure TFrm_conta_pagar.btn_editarClick(Sender: TObject);
begin
  inherited;
  Q_pagar.Edit;
  dbedit9.SetFocus;
  frm_pesq_parcela_pagar.Q_pesq_padrao.Close;
  //dbedit9.Text := DateToStr(now);
end;

procedure TFrm_conta_pagar.DBEdit11Exit(Sender: TObject);
begin
  //validar dias em atraso
  if Q_pagarATRASO.AsInteger > 0 then
  begin
    Q_pagarVL_JUROS.AsFloat :=
    (Q_pagarATRASO.AsInteger *
    Q_pagarJUROS.AsFloat *
    Q_pagarVALOR_PARCELA.AsFloat/100);
    //insere o total a pagar
    Q_pagarTOTAL_PAGAR.AsFloat := Q_pagarVL_JUROS.AsFloat + Q_pagarVALOR_PARCELA.AsFloat;
    Q_pagarSTATUS.AsString := 'PAGO';
  end;
  {else
  Q_pagarJUROS.AsFloat := 0;
  Q_pagarVL_JUROS.AsFloat := 0;
  Q_pagarSTATUS.AsString := 'PAGO';
  Q_pagarTOTAL_PAGAR.AsFloat := Q_pagarVALOR_PARCELA.AsFloat;  }

end;

procedure TFrm_conta_pagar.DBEdit9Exit(Sender: TObject);
begin
  if Q_pagarDT_PAGAMENTO.AsDateTime > Q_pagarDT_VENCIMENTO.AsDateTime then
  begin
    Q_pagarATRASO.Value := Daysbetween(Q_pagarDT_PAGAMENTO.AsDateTime,Q_pagarDT_VENCIMENTO.AsDateTime);
    dbedit11.SetFocus;
  end
  else
  Q_pagarATRASO.AsInteger := 0;
  Q_pagarSTATUS.AsString := 'PAGO';
  Q_pagarTOTAL_PAGAR.AsFloat := Q_pagarVALOR_PARCELA.AsFloat;

end;

end.
