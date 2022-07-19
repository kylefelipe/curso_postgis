# Instalações

Os melhores tutoriais de instalação de ferramentas normalmente são os da documentação oficial, pois com o tempo, a pessoa quem criou o tutorial pode não ter tempo de atualizar os procedimentos, ficando assim um tutorial datado.

## Windows

Como praticamente toda instalação no ®Windows, basta fazer o download do instalador no site oficial [clique aqui para download do PostgreSQL](https://www.enterprisedb.com/downloads/postgres-postgresql-downloads) escolhendo a versão que te atenda melhor.  
Lembre-se de considerar se o sistema operacional é 32 ou 64 bits (versões mais recentes não suportam arquitetura de 32 bits).

## Docker

O Docker é um conjunto de produtos que permitem entregar um software em pacotes, que chamamos de contêiners.  
Eles se aproveitam de uma parte do sistema operacional onde estão instalados, usando assim menos recursos, como espaço em disco, permitindo que, as necessidades específicas de cada software sejam instaladas apenas dentro do container, evitando assim instalações desnecessárias no sistema operacional "hospedeiro" (A.K.A Host) impedindo assim quebras por conflitos de versões de bibliotecas e facilitando muito a liberação de recursos também, enquanto não for necessário utilizar um conteiner, basta deixá-lo desligado, e caso ele não for mais necessário, basta removê-lo, com a possibilidade de apagar todos os dados do mesmo do disco.  
Outra função interessante é a de poder fornecer a receita de como montar todo um sistema e assim, ao executar a receita, podemos ter um sistema funcionando em poucos minutos.  
É possível controlar também quais contêiners conversam entre sí, pois é possível montar uma rede entre eles, e é possível também conversar com o container de fora do mesmo, a partir do host ou de uma outra máquina que tenha acesso ao host via algum tipo de conexão de rede ou outro tipo.
