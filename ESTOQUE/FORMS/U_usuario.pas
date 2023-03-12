unit U_usuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  Tfrm_usuario = class(TFrm_padrao)
    Q_padraoID_USUARIO: TIntegerField;
    Q_padraoNOME: TStringField;
    Q_padraoTIPO: TStringField;
    Q_padraoCADASTRO: TDateField;
    Q_padraoSENHA: TStringField;
    Label1: TLabel;
    db_id: TDBEdit;
    Label2: TLabel;
    db_nome: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    db_senha: TDBEdit;
    Label5: TLabel;
    db_cadastro: TDBEdit;
    db_tipo: TDBComboBox;
    procedure btn_novoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Abre_Tela_Pesquisa_Usuario();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_usuario: Tfrm_usuario;

implementation

{$R *.dfm}

uses U_pesq_usuario;

procedure Tfrm_usuario.Abre_Tela_Pesquisa_Usuario;
begin
  Frm_pesq_usuario:=TFrm_pesq_usuario.Create(Self);
  Frm_pesq_usuario.ShowModal;
  try
    if Frm_pesq_usuario.codigo > 0 then
    begin
      Q_padrao.Open;
      Q_padrao.Locate('ID_USUARIO',Frm_pesq_usuario.codigo,[]);
    end;
  finally
    Frm_pesq_usuario.Free;
    Frm_pesq_usuario:=nil;
  end;
end;

procedure Tfrm_usuario.BitBtn1Click(Sender: TObject);
begin
  Abre_Tela_Pesquisa_Usuario;
end;

procedure Tfrm_usuario.btn_novoClick(Sender: TObject);
begin
  inherited;
  db_cadastro.Text := DateToStr(now);
  db_nome.SetFocus;
end;

end.
