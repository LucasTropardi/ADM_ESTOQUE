/* CRIA GENERATOR PARA O CAMPO ID_USUARIO */
CREATE GENERATOR GEN_ID_USUARIO;

/*CRIA A TRIGGER PARA USUARIO*/
SET TERM ^ ;

CREATE TRIGGER TBI_INSERE_ID_USUARIO FOR USUARIO ACTIVE
    BEFORE INSERT POSITION 0
AS 
BEGIN 
    NEW.ID_USUARIO = gen_id(GEN_ID_USUARIO,1);
END^

SET TERM ; ^

/* CRIA GENERATOR PARA O CAMPO ID_CLIENTE */
CREATE GENERATOR GEN_ID_CLIENTE;

/*CRIA A TRIGGER PARA USUARIO*/
SET TERM ^ ;

CREATE TRIGGER TBI_INSERE_ID_CLIENTE FOR CLIENTE ACTIVE
    BEFORE INSERT POSITION 0
AS 
BEGIN 
    NEW.ID_CLIENTE = gen_id(GEN_ID_CLIENTE,1);
END^

SET TERM ; ^

/* CRIA GENERATOR PARA O CAMPO ID_EMPRESA */
CREATE GENERATOR GEN_ID_EMPRESA;

/*CRIA A TRIGGER PARA EMPRESA*/
SET TERM ^ ;

CREATE TRIGGER TBI_INSERE_ID_EMPRESA FOR EMPRESA ACTIVE
    BEFORE INSERT POSITION 0
AS 
BEGIN 
    NEW.ID_EMPRESA = gen_id(GEN_ID_EMPRESA,1);
END^

SET TERM ; ^

/* CRIA GENERATOR PARA O CAMPO ID_FORNECEDOR */
CREATE GENERATOR GEN_ID_FORNECEDOR;

/*CRIA A TRIGGER PARA FORNECEDOR*/
SET TERM ^ ;

CREATE TRIGGER TBI_INSERE_ID_FORNECEDOR FOR FORNECEDOR ACTIVE
    BEFORE INSERT POSITION 0
AS 
BEGIN 
    NEW.ID_FORNECEDOR = gen_id(GEN_ID_FORNECEDOR,1);
END^

SET TERM ; ^

/* CRIA GENERATOR PARA O CAMPO ID_PRODUTO */
CREATE GENERATOR GEN_ID_PRODUTO;

/*CRIA A TRIGGER PARA PRODUTO*/
SET TERM ^ ;

CREATE TRIGGER TBI_INSERE_ID_PRODUTO FOR PRODUTO ACTIVE
    BEFORE INSERT POSITION 0
AS 
BEGIN 
    NEW.ID_PRODUTO = gen_id(GEN_ID_PRODUTO,1);
END^

SET TERM ; ^

/* ==========================================================================
 FORMAS PAGAMENTOS */

/* CRIA GENERATOR PARA O CAMPO ID_FORMA_PGTO */
CREATE GENERATOR GEN_ID_FORMA_PGTO;

/*CRIA A TRIGGER PARA FORMA_PGTO*/
SET TERM ^ ;

CREATE TRIGGER TBI_INSERE_ID_FORMA_PGTO FOR FORMA_PGTO ACTIVE
    BEFORE INSERT POSITION 0
AS 
BEGIN 
    NEW.ID_FORMA_PGTO = gen_id(GEN_ID_FORMA_PGTO,1);
END^

SET TERM ; ^

/* CRIA GENERATOR PARA O CAMPO ID_COMPRAS */
CREATE GENERATOR GEN_ID_COMPRA;

/*CRIA A TRIGGER PARA COMPRA*/
SET TERM ^ ;

CREATE TRIGGER TBI_INSERE_ID_COMPRA FOR COMPRA ACTIVE
    BEFORE INSERT POSITION 0
AS 
BEGIN 
    NEW.ID_COMPRA = gen_id(GEN_ID_COMPRA,1);
END^

SET TERM ; ^

/* CRIA GENERATOR PARA O CAMPO ID_VENDA */
CREATE GENERATOR GEN_ID_VENDA;

/*CRIA A TRIGGER PARA VENDA*/
SET TERM ^ ;

CREATE TRIGGER TBI_INSERE_ID_VENDA FOR VENDA ACTIVE
    BEFORE INSERT POSITION 0
AS 
BEGIN 
    NEW.ID_VENDA = gen_id(GEN_ID_VENDA,1);
END^

SET TERM ; ^











