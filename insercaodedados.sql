select * from endereco e ;

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
	('NOME DO CLIENTE','NOME DO USUÁRIO','EMAIL DO USUÁRIO','CPF DO USUÁRIO','DATA DE NASCIMENTO DO USUÁRIO','CÓDIGO DO ENDEREÇO DO USIÁRIO'),
	('NOME DO CLIENTE','NOME DO USUÁRIO','EMAIL DO USUÁRIO','CPF DO USUÁRIO','DATA DE NASCIMENTO DO USUÁRIO','CÓDIGO DO ENDEREÇO DO USIÁRIO'),
	('NOME DO CLIENTE','NOME DO USUÁRIO','EMAIL DO USUÁRIO','CPF DO USUÁRIO','DATA DE NASCIMENTO DO USUÁRIO','CÓDIGO DO ENDEREÇO DO USIÁRIO'),
	('NOME DO CLIENTE','NOME DO USUÁRIO','EMAIL DO USUÁRIO','CPF DO USUÁRIO','DATA DE NASCIMENTO DO USUÁRIO','CÓDIGO DO ENDEREÇO DO USIÁRIO'),
	('NOME DO CLIENTE','NOME DO USUÁRIO','EMAIL DO USUÁRIO','CPF DO USUÁRIO','DATA DE NASCIMENTO DO USUÁRIO','CÓDIGO DO ENDEREÇO DO USIÁRIO')
;
insert into funcionario (nome_funcionario,cpf_funcionario) values
	('NOME DO FUNCIONÁRIO','CPF DO FUNCIONÁRIO'),
	('NOME DO FUNCIONÁRIO','CPF DO FUNCIONÁRIO'),
	('NOME DO FUNCIONÁRIO','CPF DO FUNCIONÁRIO'),
	('NOME DO FUNCIONÁRIO','CPF DO FUNCIONÁRIO'),
	('NOME DO FUNCIONÁRIO','CPF DO FUNCIONÁRIO')
;

