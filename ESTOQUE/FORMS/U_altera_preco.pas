unit U_altera_preco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrm_altera_preco = class(TForm)
    rg_altera: TRadioGroup;
    ed_produto: TEdit;
    ed_percentual: TEdit;
    lb_id_produto: TLabel;
    lb_percentual: TLabel;
    bt_acao: TBitBtn;
    Q_produto: TFDQuery;
    ds_produto: TDataSource;
    DBGrid1: TDBGrid;
    Q_produtoID_PRODUTO: TIntegerField;
    Q_produtoPRODUTO_DESCRICAO: TStringField;
    Q_produtoVL_CUSTO: TFMTBCDField;
    Q_produtoVL_VENDA: TFMTBCDField;
    sp_aumento: TFDStoredProc;
    sp_aumento_valor: TFDStoredProc;
    sp_aumento_geral: TFDStoredProc;
    sp_diminuir: TFDStoredProc;
    sp_diminuir_valor: TFDStoredProc;
    sp_diminuir_geral: TFDStoredProc;
    Bevel1: TBevel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure bt_acaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_altera_preco: TFrm_altera_preco;

implementation

{$R *.dfm}

uses U_DM;

procedure TFrm_altera_preco.bt_acaoClick(Sender: TObject);
begin
  case rg_altera.ItemIndex of
    0:begin
      sp_aumento.Close;
      sp_aumento.Prepare;
      sp_aumento.ParamByName('P_ID_PRODUTO').AsInteger := StrToInt(ed_produto.Text);
      sp_aumento.ParamByName('P_PORCENTAGEM').AsSingle := StrToFloat(ed_percentual.Text);
      sp_aumento.ExecProc;
    end;

    1:begin
      sp_aumento_valor.Close;
      sp_aumento_valor.Prepare;
      sp_aumento_valor.ParamByName('P_ID_PRODUTO').AsInteger := StrToInt(ed_produto.Text);
      sp_aumento_valor.ParamByName('P_VALMAIS').AsSingle := StrToFloat(ed_percentual.Text);
      sp_aumento_valor.ExecProc;
    end;

    2:begin
      sp_aumento_geral.Close;
      sp_aumento_geral.Prepare;
      //sp_aumento_geral.ParamByName('P_ID_PRODUTO').AsInteger := StrToInt(ed_produto.Text);
      sp_aumento_geral.ParamByName('P_PORCENTAGEM').AsSingle := StrToFloat(ed_percentual.Text);
      sp_aumento_geral.ExecProc;
    end;

    3:begin
      sp_diminuir.Close;
      sp_diminuir.Prepare;
      sp_diminuir.ParamByName('P_ID_PRODUTO').AsInteger := StrToInt(ed_produto.Text);
      sp_diminuir.ParamByName('P_PORCENTAGEM').AsSingle := StrToFloat(ed_percentual.Text);
      sp_diminuir.ExecProc;
    end;

    4:begin
      sp_diminuir_valor.Close;
      sp_diminuir_valor.Prepare;
      sp_diminuir_valor.ParamByName('P_ID_PRODUTO').AsInteger := StrToInt(ed_produto.Text);
      sp_diminuir_valor.ParamByName('P_VALMENOS').AsSingle := StrToFloat(ed_percentual.Text);
      sp_diminuir_valor.ExecProc;
    end;

    5:begin
      sp_diminuir_geral.Close;
      sp_diminuir_geral.Prepare;
      //sp_diminuir_geral.ParamByName('P_ID_PRODUTO').AsInteger := StrToInt(ed_produto.Text);
      sp_diminuir_geral.ParamByName('P_PORCENTAGEM').AsSingle := StrToFloat(ed_percentual.Text);
      sp_diminuir_geral.ExecProc;
    end;

  end;
  Q_produto.Close;
  Q_produto.Open;
  Messagedlg('A��o executada com sucesso!', mtInformation, [mbOk], 0);
end;

procedure TFrm_altera_preco.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    begin
      key := #0;
      perform(wm_nextDlgCtl,0,0);
    end;
end;

procedure TFrm_altera_preco.FormShow(Sender: TObject);
begin
  Q_produto.Open;
end;

end.
