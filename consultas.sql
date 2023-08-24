
select cliente.nome_completo, endereco.cep, 
pais, uf, cidade, bairro, rua
from cliente 

inner join endereco on 
	endereco.cod_endereco = cliente.cod_endereco

-- nome do produto, data do pedido e o País de destino
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


-- nome do produto, data do pedido e o País de destino
select produto.nome_produto, pedido.data_do_pedido, 
endereco.pais
from produto 

inner join produto_pedido on 
	produto_pedido.cod_produto = produto.cod_produto
inner join pedido on 
	pedido.cod_pedido = produto_pedido.cod_pedido
inner join cliente on 
	cliente.cod_cliente = pedido.cod_cliente
inner join endereco on 
	endereco.cod_endereco = cliente.cod_endereco

-- Tabela funcionario: nome do funcionario, codigo do funcionario
-- Tabela produto: nome do produto, quantidade do produto e o valor
-- Tabela pedido: data do pedido
-- Tabelo cliente: nome completo e o cpf
-- Tabela endereço: Cep

select funcionario.nome_funcionario, funcionario.cod_funcionario, 
pedido.data_do_pedido, produto.nome_produto, produto.quantidade_produto, 
produto.valor_unitario -- cliente.nome_completo,
-- cliente.cpf, endereco.cep
from funcionario

inner join funcionario_produto on 
	funcionario.cod_funcionario = funcionario_produto.cod_funcionario
inner join produto on
	funcionario_produto.cod_produto = produto.cod_produto
inner join produto_pedido on 
	produto.cod_produto = produto_pedido.cod_pedido
inner join pedido on 
	produto_pedido.cod_pedido = pedido.cod_pedido
inner join cliente on 
	pedido.cod_cliente = cliente.cod_cliente 
inner join endereco on 
	cliente.cod_endereco = endereco.cod_endereco


insert into funcionario_produto(cod_funcionario, cod_produto) 
values
	(3, 7), 
	(5, 8);









