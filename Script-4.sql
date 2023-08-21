CREATE table produto (
cod_produto integer primary key autoincrement not null,
nome_produto text
descricao_produto text
quantidade_produto integer
data_de_fabricacao date
valor_unitario integer
foreign key(cod_produto) references produto_cliente(cod_produto)
)

CREATE table pedido (
    cod_pedido integer primary key autoincrement not null, 
    data_do_pedido date,
    foreign key(cod_pedido) references cliente_pedido(cod_pedido)
);