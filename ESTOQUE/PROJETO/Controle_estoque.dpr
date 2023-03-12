program Controle_estoque;

uses
  Vcl.Forms,
  U_principal in '..\FORMS\U_principal.pas' {Frm_Principal},
  U_DM in '..\FORMS\U_DM.pas' {DM: TDataModule},
  U_padrao in '..\FORMS\U_padrao.pas' {Frm_padrao},
  U_usuario in '..\FORMS\U_usuario.pas' {frm_usuario},
  U_empresa in '..\FORMS\U_empresa.pas' {Frm_empresa},
  U_cliente in '..\FORMS\U_cliente.pas' {Frm_cliente},
  U_fornecedor in '..\FORMS\U_fornecedor.pas' {Frm_fornecedor},
  U_produto in '..\FORMS\U_produto.pas' {Frm_produto},
  U_forma_pgto in '..\FORMS\U_forma_pgto.pas' {Frm_forma_pgto},
  U_form_pesquisa_padrao in '..\FORMS\U_form_pesquisa_padrao.pas' {Frm_pesquisa_padrao},
  U_pesq_usuario in '..\FORMS\U_pesq_usuario.pas' {Frm_pesq_usuario},
  U_pesq_cliente in '..\FORMS\U_pesq_cliente.pas' {Frm_pesq_cliente},
  U_pesq_fornecedor in '..\FORMS\U_pesq_fornecedor.pas' {Frm_pesq_fornecedor},
  U_pesq_produto in '..\FORMS\U_pesq_produto.pas' {Frm_pesq_produto},
  U_movimento_padrao in '..\FORMS\U_movimento_padrao.pas' {Frm_padrao_movimento},
  U_compra01 in '..\FORMS\U_compra01.pas' {Frm_compra01},
  U_pesq_compra in '..\FORMS\U_pesq_compra.pas' {Frm_pesq_compra},
  U_about in '..\FORMS\U_about.pas' {Frm_aboutbox},
  U_login in '..\FORMS\U_login.pas' {Frm_login},
  U_troca_senha in '..\FORMS\U_troca_senha.pas' {Frm_troca_senha},
  U_venda in '..\FORMS\U_venda.pas' {Frm_venda},
  U_pesq_venda in '..\FORMS\U_pesq_venda.pas' {Frm_pesq_venda},
  U_pesq_forma_pgto in '..\FORMS\U_pesq_forma_pgto.pas' {Frm_pesq_forma_pgto},
  U_recebimento_venda in '..\FORMS\U_recebimento_venda.pas' {Frm_recebimento_venda},
  U_pesq_compra_forma_pgto in '..\FORMS\U_pesq_compra_forma_pgto.pas' {Frm_pesq_compra_forma_pgto},
  U_pesq_venda_forma_pgto in '..\FORMS\U_pesq_venda_forma_pgto.pas' {Frm_pesq_venda_forma_pgto},
  U_pesq_geral_mes in '..\FORMS\U_pesq_geral_mes.pas' {Frm_pesq_geral_mes},
  U_conta_pagar in '..\FORMS\U_conta_pagar.pas' {Frm_conta_pagar},
  U_pesq_parcela_pagar in '..\FORMS\U_pesq_parcela_pagar.pas' {Frm_pesq_parcela_pagar},
  U_conta_receber in '..\FORMS\U_conta_receber.pas' {Frm_conta_receber},
  U_pesq_contas_receber in '..\FORMS\U_pesq_contas_receber.pas' {Frm_pesq_parcelas_receber},
  U_altera_preco in '..\FORMS\U_altera_preco.pas' {Frm_altera_preco},
  U_padrao_backup_restore in '..\FORMS\U_padrao_backup_restore.pas' {Frm_padrao_backup_restore},
  U_backup in '..\FORMS\U_backup.pas' {Frm_backup},
  U_restore in '..\FORMS\U_restore.pas' {Frm_restore};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrm_login, Frm_login);
  Application.Run;
end.
