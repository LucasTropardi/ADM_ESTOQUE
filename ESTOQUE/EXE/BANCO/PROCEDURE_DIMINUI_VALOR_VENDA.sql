/*CRIA PROCEDURE PARA DIMINUIR VALOR DE VENDA*/
SET TERM ^ ;
CREATE PROCEDURE P_DIMINUI_VALOR_VENDA (
    P_ID_PRODUTO integer,
    P_PORCENTAGEM float )
AS
BEGIN
  /* ATUALIZA O VALOR DE VENDA*/ 
  UPDATE PRODUTO
  SET PRODUTO.VL_VENDA=PRODUTO.VL_VENDA - ((PRODUTO.VL_VENDA * :P_PORCENTAGEM)/100)
  WHERE PRODUTO.ID_PRODUTO= :P_ID_PRODUTO;
END^
SET TERM ; ^



/*CRIA PROCEDURE PARA DIMINUIR VALOR DE VENDA GERAL*/
SET TERM ^ ;
CREATE PROCEDURE P_DIMINUI_VALOR_VENDA_GERAL (
    P_PORCENTAGEM float )
AS
BEGIN
  /* ATUALIZA O VALOR DE VENDA*/ 
  UPDATE PRODUTO
  SET PRODUTO.VL_VENDA=PRODUTO.VL_VENDA - ((PRODUTO.VL_VENDA * :P_PORCENTAGEM)/100);
END^
SET TERM ; ^