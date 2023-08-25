-- 2. SQL de criação das tabelas (DDL)

select * from funcionario f 

create table funcionario (
	id integer primary key autoincrement not null, 
	nome text,
	cpf varchar
);

create table categoria (
id integer primary key autoincrement not null,
nome text,
descricao text
);

create table produto (
id integer primary key autoincrement not null,
id_categoria integer,
nome text, 
descricao text,
quant_estoque integer, 
data_fabricado date, 
preco unitario real,
foreign key (id_categoria) references categoria(id)
);

create table endereco (
id integer primary key autoincrement not null,
pais text,
uf text,
cidade text, 
cep varchar,
bairro text,
rua text 
);

create table cliente (
id integer primary key autoincrement not null,
id_endereco integer,
nome completo text,
usuario varchar,
email varchar,
cpf varchar, 
dia_nascimento date,
foreign key (id_endereco) references endereco(id)
);

create table pedido (
id integer primary key autoincrement not null,
id_cliente integer, 
dia_do_pedido date,
foreign key (id_cliente) references cliente(id)
);

create table funcionario_produto (
id integer primary key autoincrement not null,
id_funcionario integer,
id_produto integer,
foreign key (id_funcionario) references funcionario(id),
foreign key (id_produto) references produto(id)
);

create table produto_pedido (
id integer primary key autoincrement not null,
id_produto integer,
id_pedido integer,
foreign key (id_produto) references produto(id),
foreign key (id_pedido) references pedido(id)
);

delete produto_pedido

-- 3. SQL de inserção de dados nas tabelas (pelo menos 5 registros em cada uma) (DML)

select * from funcionario_produto
insert into funcionario (nome, cpf) values
('Tamires Ferreira', '030.567.489-09'),
('Paulo Gustavo', '060.608.334-00'),
('Paulo Jeferson', '678.876.098-12'),
('Róger Ferreira','234.658.908-16'),
('Thiago Bellato','095.345.876-65')

insert into produto (id_categoria, nome, descricao, quant_estoque, data_fabricado, preco) values 
(1, 'mouse', 'mouse sem fio multilaser', 2, '2023-08-03', 100),
(1, 'notebook', 'notebook dell, core i5, 4 gb de RAM', 3, '2023-02-02', 2000),
(3, 'carrinho','carrinho da Hot Wheels', 5, '2020-10-03', 10),
(4, 'mesa de escritório', 'mesa de escritório na cor branca, quadrada 72x75', 10, '2023-02-12', 25), 
(6, 'perfume','perfume importado, 212 Vip Black - Carolina Herrera', 50, '2020-04-10', 40)

insert into categoria (nome, descricao) values 
('Informática','Notebook, computadores, mouse, teclado ...'),
('Brinquedo', 'Carrinho, bonecas ...'),
('Móveis para escritório', 'Mesas, cadeiras, estante para livros ...'),
('Alimentos e bebidas', 'Cervejas, energéticos, massas ...'),
('Perfumaria e cosméticos', 'Perfumes, protetor solar, máscara capilar ...')

insert into endereco  (pais, uf, cidade, cep, bairro, rua) values
('Brasil','RJ','Petrópolis','98.236-670', 'Itaipava', 'Estrada da cachoeira'),
('Brasil','RJ','Rio de Janeiro', '12.607-900', 'Jardim Botânico', 'Rua Jardim Botânico'),
('Brasil','RJ','Rio de Janeiro', '17.432-085', 'Copa Copacabana', 'Rua Miguel Lemos'),
('Brasil','RJ','Rio de Janeiro', '87.322-654', 'Tijuca', 'Rua Antônio Basílio'),
('Brasil','RJ','Rio de Janeiro', '54.279-643', 'Piedade', 'Rua Assos Carneiro')

insert into cliente (id_endereco, nome, usuario, email, cpf, dia_nascimento) values
(5, 'Maria José Martins', 'maria.f', 'maria.f@hotmail.com', '456.765.987-09', '1995-09-23'),
(4, 'Fernando Ferreira', 'fernando_ferreira', 'fernando_ferreira@hotmail.com', '067.234.764-00', '1990-02-18'),
(3, 'Mateus de Oliveira ', 'matoliv', 'matoliv@hotmail.com', '326.863.872-01', '1955-10-01'),
(2, 'Carlos Emanuel Santos', 'carlos.emanuel', 'carlos.emanuel@hotmail.com', '450.109.265-07', '1960-01-16'),
(1, 'José Maria Santos', 'josesantos', 'josesantos@hotmail.com', '767.195.410-63', '1970-04-06')

insert into cliente (id_endereco, nome, usuario, email, cpf, dia) values

insert into pedido (id_cliente, dia_do_pedido) values
(1, '2023-08-24'),
(2, '2023-08-20'),
(3, '2023-08-19'),
(4, '2023-08-17'),
(5, '2023-08-16')

insert into produto_pedido (id_produto, id_pedido) values
(1, 2),
(1, 2),
(2, 3),
(4, 5),
(3, 1)

insert into funcionario_produto (id_funcionario, id_produto) values 
(1, 2),
(3, 2),
(2, 3),
(4, 5),
(5, 1)

-- 4. Um comando SQL de exclusão de algum registro em uma tabela (DML)

update cliente set 
nome = 'Geraldo Matins Soares'
where id = 1

-- 5. Um comando SQL de exclusão de algum registro em uma tabela (DML)

delete from categoria 
where id = 2

select * from pedido

-- 6. 5 SQLS de consulta 
-- a. Pelo menos 2 com algum tipo de junção 

select produto.nome, categoria.nome 
from produto 
inner join categoria on produto.id_categoria = categoria.id 

select cliente.nome, pedido.dia_do_pedido 
from cliente 
inner join pedido on cliente.id = pedido.id_cliente 

--b. Pelo menos 1 com usando count() e group by

select count (id_categoria)
from produto
group by id_categoria 

--c. Uma consulta livre 

select * from produto_pedido

--d. 1 SQL para construção de nota fiscal 

select cliente.nome, produto.nome, produto.preco
from cliente
inner join pedido on pedido.id_cliente = cliente.id 
inner join produto_pedido on produto_pedido.id_pedido = pedido.id 
inner join produto on produto.id = produto_pedido.id_produto 
















