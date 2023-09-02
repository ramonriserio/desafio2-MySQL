-- queries

describe imoveis_locados;
-- Quais os imóveis locados?
select * from imoveis_locados order by imoveis_idImovel;

-- Quais os imóveis locados do locador 2?
select * from imoveis_locados where locadores_idLocador = 2;

-- Quantos imóveis estão locados?
select count(*) from imoveis_locados;

-- Quais os imóveis locados do locador 1?
select * from imoveis_locados having locadores_idLocador = 1;

-- Quais locatários estão alugando quais imóveis?
select idLocatario, idImovel from locatarios JOIN imoveis ORDER BY idLocatario;
