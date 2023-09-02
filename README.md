# desafio2-MySQL

Este é um projeto lógico de banco de dados para um sistema de gerenciamento de aluguel de imóveis. O objetivo deste projeto é criar um banco de dados para gerenciar informações sobre locatários, locadores, imóveis e aluguéis.

- **Locatários**: A tabela `locatarios` armazena informações sobre cada locatário, incluindo nome, CPF, endereço, celular, nome do banco, número do banco, agência e conta corrente. Cada locatário é identificado por um ID exclusivo (`idLocatario`).
- **Locadores**: A tabela `locadores` armazena informações sobre cada locador, incluindo nome, CPF, endereço e celular. Cada locador é identificado por um ID exclusivo (`idLocador`).
- **Imóveis**: A tabela `imoveis` armazena informações sobre cada imóvel disponível para aluguel, incluindo o ID do locatário (`locatarios_idLocatario`), endereço, tipo de imóvel (`tipoImovel`) e valor pretendido (`valorPretendido`). Cada imóvel é identificado por um ID exclusivo (`idImovel`).
- **Imóveis Locados**: A tabela `imoveis_locados` armazena informações sobre os imóveis que foram alugados. Cada registro inclui o ID do imóvel (`imoveis_idImovel`), o ID do locador (`locadores_idLocador`) e o valor do aluguel (`valorAlugado`).
