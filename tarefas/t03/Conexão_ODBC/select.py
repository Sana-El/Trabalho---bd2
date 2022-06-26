from conexao import ConexaoBanco

conn = ConexaoBanco()
cur = conn.cursor()

def selectProjetoJoinAtividades():
    select = '''
        SELECT PROJETO.CODIGO, PROJETO.DESCRICAO, ATIVIDADE.DESCRICAO
        FROM PROJETO INNER JOIN ATIVIDADE     
        ON PROJETO.CODIGO = ATIVIDADE.CODPROJETO;
    '''

    cur.execute(select)
    conn.commit()

selectProjetoJoinAtividades()

cur.close()
conn.close()
