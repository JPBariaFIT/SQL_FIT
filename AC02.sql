-- João Pedro Baria RA: XXXXXXX
-- Lucas Buchalla Sesti RA: XXXXXXX

CREATE TABLE PEDIDO (
    codigo INT IDENTITY,
    data SMALLDATETIME NOT NULL,
    CONSTRAINT pkPedido PRIMARY KEY(codigo)
);

CREATE TABLE PRODUTO (
  codigo INT IDENTITY,
  nome VARCHAR(120) NOT NULL,
  preco SMALLMONEY NOT NULL,
  CONSTRAINT pkProduto PRIMARY KEY(codigo)
);

CREATE TABLE ITEM (
  cod_pedido INT, 
  cod_produto INT,
  numero INT NOT NULL,
  qtd SMALLINT NOT NULL,
  preco SMALLMONEY,
  CONSTRAINT fkCod_pedido FOREIGN KEY(cod_pedido) REFERENCES PEDIDO(codigo) 
  CONSTRAINT fkCod_produto FOREIGN KEY(cod_produto) REFERENCES PRODUTO(codigo)
  CONSTRAINT pkNumero PRIMARY KEY(numero, cod_pedido, cod_produto) 
);
