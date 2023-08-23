select * from cliente;

insert into cliente (nome_completo , nome_de_usuario , email , cpf , data_de_nascimento) values ('paulo gustavo carvalho tuler', 'oluapinho', 'paulogustavotuler@gmail.com', '121.212.121-35', 10/03/2004),
('thiago frederico bellato', 'thiaguinho', 'thiagozeira_craft@hotmail.com', '121.222.233-45', 14/07/1995)

select * from cliente

insert into cliente (nome_completo , nome_de_usuario , email , cpf , data_de_nascimento) values
('roger do espírito santo ferreira', 'rogerzinho', 'rogerzica_reidelas@hotmail.com', '121.212.222-45', 1995-11-11),
('Patricia starck bernardi', 'patricinha', 'patricia♥tobias@gmail.com', '121.222.323-67', 1983-08-30 ) --codigo 4 errado, ja esta apagado

--data de nascimento errado

insert into cliente (nome_completo , nome_de_usuario , email , cpf , data_de_nascimento) values 
('Patricia starck bernardi', 'patricinha', 'patricia♥tobias@gmail.com', '121.222.323-67', '30/08/1983' )


UPDATE cliente 
SET data_de_nascimento ='10/03/2004'
WHERE data_de_nascimento = 0;

UPDATE cliente 
SET data_de_nascimento = '14/07/1995'
WHERE cod_cliente = 2;

UPDATE cliente 
SET data_de_nascimento = '11/11/1995'
WHERE cod_cliente = 3;

DELETE FROM cliente 
WHERE cod_cliente in (4);

insert into cliente (nome_completo , nome_de_usuario , email , cpf , data_de_nascimento) values
('tamires ferreira dos santos', 'tamirizinha', 'tamirizica@gmail.com', '121.322.323-67', '15/01/1999'),
('paulo jerferson werner alcantara', 'pejotinha', 'pjogos@hotmail.com', '121.333.323-66', '19/03/1998')

UPDATE cliente 
SET email = 'guguinhadozap@gmail.com'
WHERE cod_cliente = 1;

SELECT * from funcionario 
WHERE nome_funcionario like '%Lacerda%'

--comando para buscar o sobrenome lacerda

INSERT into funcionario (nome_funcionario, cpf_funcionario) values
('felipe lacerda de oliveira', '000.756.557-25')

UPDATE cliente 
SET email = 'patricia_love_tobias@gmail.com'
WHERE email = 'patricia♥tobias@gmail.com';

UPDATE cliente 
SET nome_completo = 'paulo jeferson werner alcantara'
WHERE nome_completo = 'paulo jerferson werner alcantara';

INSERT into funcionario (nome_funcionario, cpf_funcionario) values
('marcelo machado collares', '000.767.554-45'),
('maria luiza pereira de aguiar', '177.671.587-05' ),
('maria luiza botelho mondelli','526.277.457-19' ),
('antonio jorge borges dos santos', '902.588.177-71'),
('pamela serratec', '818.345.457-73'),
('cecilia serratec', '442.648.447-20')

SELECT * from funcionario 



qualquer coisa
oi
