select * from pedido;

insert into categoria (nome_categoria,descricao_categoria) values
	('Raridades','Os itens mais raros'),
	('Relógios','Os Melhores Relógios'),
	('Informática','Os Melhores itens de Informática'),
	('Papelaria','Os Melhores itens de Papelaria'),
	('Alimentos','Vários Tipos de Alimentos')
;
insert into endereco (pais,uf,cidade,cep,bairro,rua) values
	('Brasil','RJ','Petrópolis','25665-001','Bingen','Paulo Hervê'),
	('Brasil','MG','Tirandentes','25886-002','Castelo','Carlos da Gama'),
	('Brasil','SP','São Paulo','25415-017','Sorriso','Prudente'),
	('Brasil','RJ','Nova Friburgo','25684-025','Boa Vista','Prado Vasconcelos'),
	('Estados Unidos','CA','Los Angeles','55698-000','Malibú','Orange Street')	
;
insert into cliente (nome_completo,nome_de_usuario,email,cpf,data_de_nascimento,cod_endereco) values
	('Tamires Ferreira dos Santos','tamiresf','taamiresferreiraa@hotmail.com','222.456.387-09','15/01/1999',1),
	('Thiago Frederico Bellato','tfbellato','tfbellato@hotmail.com','908.345.123-00','14/07/1995',5),
	('Paulo Jeferson Werner de Alcantara','pj','pj@hotmail.com','098.456.786-05','19/03/1998',2),
	('Róger do Espírito Santo Ferreira','rogerf','rogerf@hotmail.com','095.345.789-01','11/11/1995',3),
	('Patricia Starck Bernardi','starck','patricia_tobias@gmail.com','121.222.323-67','30/08/1983',1),
	('Paulo Gustavo Carvalho Tuler','oluapinho','paulogustavotuler@gmail.com', '121.212.121-35', '10/03/2004',4)
;

insert into funcionario (nome_funcionario,cpf_funcionario) values
	('Marcelo Machado Collares', '000.767.554-45'),
	('Maria Luiza Pereira de Aguiar', '177.671.587-05' ),
	('Maria Luiza Botelho Mondelli','526.277.457-19' ),
	('Antonio Jorge Borges dos Santos', '902.588.177-71'),
	('Pamela Serratec', '818.345.457-73'),
	('Cecilia serratec', '442.648.447-20')
;

insert into pedido (data_do_pedido) values 
('23/08/2023'),
('17/08/2023'),
('22/08/2023'),
('20/08/2023'),
('19/08/2023')
;




