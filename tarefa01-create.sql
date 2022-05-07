/*
funcionario(codigo, nome, sexo, dt_nasc, salario, cod_depto)
departamento(codigo, descricao, cod_gerente)
projeto (codigo, nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim)
atividade(codigo, nome, descricao, cod_responsavel, data_inicio, data_fim)
atividade_projeto(cod_projeto, cod_atividade)
Chaves estrangeiras:
funcionario(cod_depto) ⇒ departamento(codigo)
departamento(cod_gerente) ⇒ funcionário(codigo)
	projeto(cod_depto) ⇒ departamento(codigo)
projeto(cod_responsavel) ⇒ funcionário(codigo)
	atividade_projeto(cod_projeto) ⇒ projeto(codigo)
	atividade_projeto(cod_atividade) ⇒ atividade(codigo)
atividade_projeto(cod_responsavel) ⇒ funcionário(codigo)
Crie um arquivo SQL, chamado, tarefa01-inserts.sql para inserir pelo menos 5 linhas em cada tabela.
Crie um arquivo chamado tarefa01.md no seu diretório e coloque um link para ele no README.md.
No arquivo tarefa01.md coloque link para os scripts de criação do esquema relacional.
No arquivo tarefa01.md coloque link para os scripts de povoamento do esquema relacional.
*/
