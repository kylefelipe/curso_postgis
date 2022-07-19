# PostgreSQL + Postgis

O [PostgreSQL](https://www.postgresql.org) é um gerenciador de banco de dados relacional de uso geral, Livre e Aberto (FOSS).  
Foi pensado para funcionar em sistemas UNIX e com o tempo foi sendo adaptado para ser utilizado em outros sistemas operacionais, tais como Linux e ®Windows e funciona muito bem dentro de containers [Docker](www.docker.com).  
Tem uma comunidade de usuários muito ativa, e devido a sua arquitetura possibilitar a criação de extensões para expandir suas funcionalidades hoje tem se tornado um banco cada vez mais versátil, um exemplo dessas extensões é o [Postgis](https://postgis.net).  

O [Postgis](https://postgis.net) foi desenvolvido como um projeto de código livre para adicionar suporte a dados geográficos ao banco [PostgreSQL](https://www.postgresql.org), utilizando os padrões da [OGC](www.ogc.org) OpenGIS "Simple Features Specification for SQL.

Com a extensão instalada e habilitada no banco, faz com que seja possível trabalhar dados vetoriais e tabulares (que não possuem atributo espacial) para armazenamento, manipulação e análises desses dados, além também da disponibilização dos dados para que vários usuários e sistemas acessem simultaneamente.  
É muito comum as pessoas criarem um banco de dados com algumas bases comuns e compartilhar o acesso via rede dentro da intranet de uma empresa, em casa, faculdade.

Com o banco é possível controlar o nível de acesso de cada usuário.

## [Instalação](./0001_Instalacoes.md)


[Fontes](./9999_Fontes.md)
