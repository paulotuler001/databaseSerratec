insert into funcionario (nome_funcionario,cpf_funcionario) values
    ('Arnaldo Cesar Coelho', '628.179.856-20'),
	('Thais Serratec', '654.321.951-38'),
	('Cecília Serratec', '000.956.723-28'),
	('Marcelo Machado Collares', '000.767.554-45'),
	('Maria Luiza Botelho Mondelli','526.277.457-19'),
    ('Antonio Jorge Borges dos Santos', '902.588.177-71'),
    ('Pamela Serratec', '818.345.457-73')
    
    
insert into categoria (nome_categoria,descricao_categoria) values
    ('Automóveis','Itens para sua charanga'),
	('Raridades','Os itens mais raros'),
    ('Papelaria', 'De volta às aulas'),
	('Alimentação','você já almoçou? Coma muito, beba muito'),
	('Tecnologia','Você passou em banco de dados? Parabéns, nota 2!')
	

INSERT INTO produto (cod_categoria,nome_produto,descricao_produto,quantidade_produto,data_de_fabricacao,valor_unitario) 
VALUES 	(12, 'Nescau','Melhor que toddy sempre, sem mas.', 100,'01/08/2023', 10),
		(9, 'Roda aro 20','Uma roda de qualidade', 5,'08/08/2023',2500),
		(10, 'Garfo','Talher de alta qualidade, confia.',10,'14/01/2017',2),
		(11, 'Livro','Largue um pouco da netflix, leia!', 50,'01/01/2015', 35),
		(12, 'Barra de cereal','Fique fitness',1000,'19/04/1890', 40),
		(13, 'Notebook','Despacito e sempre',15,'24/08/2023',5000)

insert into funcionario_produto (cod_funcionario, cod_produto)
values 	(14, 14),
		(9, 9),
		(10, 10),
		(11, 11),
		(12, 12),
		(13, 13)
		

insert into endereco(pais, uf, cidade, cep, bairro, rua)
values  ('Israel', 'JL', 'Jerusalém', '1258-479', 'Santo Sepulcro', 'Villa Moises'),
		('Canadá', 'CB', 'Vancouver', '6893-112', 'Yaletown', 'Robson Street'),
		('Estados Unidos', 'CA', 'Los Angeles', '55689-456', 'Malibu', 'Orange Street'),
		('Inglaterra', 'LO', 'Birmmigham', '51358-689', 'St. James', 'Picadilly'),
		('França', 'PA', 'Marselha', '69854-325', 'Bordo', 'Saint Elisè'),
		('Brasil', 'RJ', 'Petrópolis', '25689-452', 'Centro', 'Floriano Peixoto')

insert into cliente(nome_completo, nome_de_usuario, email, cpf, data_de_nascimento, cod_endereco)
values  ('Róger do Espírito Santo Ferreira','rogerf','rogerf@hotmail.com','095.345.789-01','11/11/1995', 8),
		('Tamires Ferreira dos Santos','tamiresf','taamiresferreiraa@hotmail.com','222.456.387-09','15/01/1999',9),
		('Thiago Frederico Bellato','tfbellato','tfbellato@hotmail.com','908.345.123-00','14/07/1995',10),
    	('Paulo Jeferson Werner de Alcantara','pj','pj@hotmail.com','098.456.786-05','19/03/1998',11),
    	('Patricia Starck Bernardi','starck','patricia_tobias@gmail.com','121.222.323-67','30/08/1983',12),
    	('Paulo Gustavo Carvalho Tuler','oluapinho','paulogustavotuler@gmail.com', '121.212.121-35', '10/03/2004',13)

insert into pedido (data_do_pedido, cod_cliente)
values  ('11/07/2023', 14),
		('11/07/2023', 13),
		('24/08/2023', 12),
		('13/08/2023', 11),
		('23/12/2022', 10),
		('28/07/2023', 9)

insert into produto_pedido(cod_pedido, cod_produto)
values  (13, 9),
		(14, 10),
		(15, 11),
		(16, 12),
		(17, 13),
		(18, 14)
		
Update endereco set cep = '36578-325' where cod_endereco = 13
delete from funcionario where cod_funcionario = 15

select cliente.nome_completo, endereco.cep, 
pais, uf, cidade, bairro, rua
from cliente 

inner join endereco on
	endereco.cod_endereco = cliente.cod_endereco

select produto.nome_produto, 
pedido.data_do_pedido, endereco.pais
from produto 

inner join produto_pedido on 
	produto_pedido.cod_produto = produto.cod_produto
inner join pedido on 
	pedido.cod_pedido = produto_pedido.cod_pedido
inner join cliente on 
	cliente.cod_cliente = pedido.cod_cliente
inner join endereco on 
	endereco.cod_endereco = cliente.cod_endereco


select categoria.nome_categoria,
		count(produto.cod_produto) as qtd_produto
from categoria
inner join produto on 
	produto.cod_categoria = categoria.cod_categoria
group by categoria.nome_categoria

select uf, pais
from endereco

select funcionario.cod_funcionario,
funcionario.nome_funcionario,
produto.nome_produto, 
produto.quantidade_produto,
produto.valor_unitario, 
pedido.data_do_pedido,
cliente.nome_completo,
cliente.cpf,
endereco.pais,
endereco.cep

from funcionario

inner join funcionario_produto on 
	funcionario.cod_funcionario = funcionario_produto.cod_funcionario
inner join produto on
	funcionario_produto.cod_produto = produto.cod_produto
inner join produto_pedido on 
	produto.cod_produto = produto_pedido.cod_produto
inner join pedido on 
	produto_pedido.cod_pedido = pedido.cod_pedido
inner join cliente on 
	pedido.cod_cliente = cliente.cod_cliente 
inner join endereco on 
	cliente.cod_endereco = endereco.cod_endereco
