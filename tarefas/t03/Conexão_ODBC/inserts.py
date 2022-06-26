from datetime import date
from conexao import ConexaoBanco

conn = ConexaoBanco()
cur = conn.cursor()

def CreateAtividade(codProjeto, dataFim, dataInicio, descricao):
    insert = '''
        INSERT INTO atividade(codprojeto, datafim, datainicio, descricao) 
        VALUES (%s, %s, %s, %s);
    '''
    value = (codProjeto, dataFim, dataInicio, descricao)
    cur.execute(insert, value)
    conn.commit()


CreateAtividade(
    codProjeto = 4,
    dataFim=date(2022, 6,19), 
    dataInicio = date(2022,6,27), 
    descricao="Tarefa 3",
)

cur.close()
conn.close()
