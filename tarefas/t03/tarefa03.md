#  ORM
---------------

É uma técnica de desenvolvimento para reduzir a resistência da programação orientada a objetos usando bancos de dados relacionais. As tabelas de banco de dados são representadas por classes e os registros de cada tabela são representados como instâncias da classe correspondente.

## Python Peewee
-----
Peewee é um ORM projetado para criar e gerenciar tabelas de banco de dados relacionais por meio de objetos Python. O Peewee é adequado para projetos de pequeno a médio porte e se destaca por sua simplicidade em comparação com outros ORMs mais populares como SQLAlchemy. Uma analogia que os autores da API usam e que acho muito interessante é que o Peewee está para o SQLAlchemy o que o SQLite está para o PostgreSQL.

-----------------------------

# ODBC
----------
ODBC (um acrônimo para Open Database Connectivity) é um padrão para acessar sistemas de gerenciamento de banco de dados (DBMS). O padrão define um conjunto de interfaces que permitem que diversos bancos de dados sejam acessados usando linguagens de programação como Visual Basic, Delphi, Visual C++, Java, etc. capazes de utilizar essas interfaces, sem a necessidade de métodos de acesso específicos de código.

O ODBC alcança a independência do banco de dados usando o driver como a camada de tradução entre o aplicativo e o DBMS. A aplicação utiliza funções ODBC por meio do ODBC Driver Manager (ODBC Driver Manager) ao qual está vinculada, e o driver passa a consulta para o SGBD.

A implementação de um aplicativo baseado em ODBC permite usar MySQL, Access e SQL Server simultaneamente sem fazer alterações em sua camada de dados. O uso dessas interfaces depende da existência de um driver ODBC específico para o banco de dados que está sendo acessado.

A maioria dos bancos de dados vem com drivers ODBC, então você provavelmente pode usar um desses drivers junto com a interface ODBC Python para conectar seu aplicativo Python a qualquer banco de dados no mercado.
