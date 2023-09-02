-- data insertion

insert into locatarios (nome,CPF,endereco,celular,nome_Banco,numero_banco,agencia,conta_corrente)
	values	('Maria','46462244615','Av.João Chaves, 537','38123456789',NULL,'123','1234','1'),
			('Ramon','82250472653','Rua Mato Gross, 35','38999515461','Santander','234','2345','10');
select * from locatarios;
            
insert into locadores (nome,CPF,endereco,celular)
	values	('Neide','12345678901','Não sei, s/n','38123456789'),
			('Teste','12345678902','Rua do Ouro, número zero','12345678901');
select * from locadores;

describe imoveis;            
insert into imoveis (locatarios_idLocatario,endereco,tipoImovel,valorPretendido)
	values	(1,'Rua tal, s/n','Casa',2000),
			(1,'Rua fulano, 10', 'Apartamento',1000),
            (2,'Av. Mestra Fininha, 1000', 'Loja',3000);
select * from imoveis;
  
describe imoveis_locados;
select * from imoveis;
insert into imoveis_locados (locadores_idLocador,imoveis_idImovel,valorAlugado)
	values 	(1,5,900),
			(2,4,1800),
            (2,6,2500);
select * from imoveis_locados;