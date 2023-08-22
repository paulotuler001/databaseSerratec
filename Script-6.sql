PRAGMA foreign_keys=on;

CREATE table pedido (
    cod_pedido integer primary key autoincrement not null, 
    data_do_pedido date
);

CREATE table produto (
cod_produto integer primary key autoincrement not null,
cod_categoria integer,
nome_produto varchar(100) not null,
descricao_produto text, 
quantidade_produto integer,
data_de_fabricacao date,
valor_unitario real,

foreign key(cod_categoria) references categoria(cod_categoria)

);

CREATE table categoria (
	cod_categoria integer primary key autoincrement not null,
	nome_categoria varchar(20) not null,
	descricao_categoria text 
);

CREATE table cliente (

	cod_cliente integer primary key autoincrement not null,
	nome_completo varchar(80) not null,
	nome_de_usuario varchar(20) not null,
	email varchar(256) not null,
	--https://www.google.com/search?q=limite+de+caracteres+para+email&rlz=1C1GCEA_enBR1069BR1069&oq=limite+de+caracteres+para+email&gs_lcrp=EgZjaHJvbWUyBggAEEUYOTIICAEQABgWGB7SAQg2NTIzajBqNKgCALACAA&sourceid=chrome&ie=UTF-8
	cpf varchar(14) not null,
	data_de_nascimento date not null,
	cod_endereco integer,
	
foreign key(cod_endereco) references endereco(cod_endereco)
);

CREATE table funcionario (
	cod_funcionario integer primary key autoincrement not null,
	nome_funcionario varchar(80) not null,
	cpf_funcionario varchar(14) not null
);

CREATE table endereco (

	cod_endereco integer primary key autoincrement not null,
	uf char(2) not null,
	--rs, rj, sp, ba...
	cidade varchar(20) not null,
	cep varchar(9) not null,
	bairro varchar(100) not null,
	pais varchar(43) not null
	--Reino Unido da Grã-Bretanha e Irlanda do Norte
);

CREATE table cliente_pedido (
	id integer primary key autoincrement not null,
	cod_pedido integer,
	cod_cliente integer,
foreign key(cod_pedido) references pedido(cod_pedido),
foreign key(cod_cliente) references cliente(cod_cliente)
);

CREATE table produto_pedido (
	id integer primary key autoincrement not null,
	cod_pedido integer,
	cod_produto integer,
foreign key(cod_pedido) references pedido(cod_pedido),
foreign key(cod_produto) references produto(cod_produto)
);

CREATE table funcionario_produto (
	id integer primary key autoincrement not null,
	cod_funcionario integer,
	cod_produto integer,
foreign key(cod_funcionario) references funcionario(cod_funcionario)
foreign key(cod_produto) references produto(cod_produto)
);
