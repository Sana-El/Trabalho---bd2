from conexao import ConexaoBanco

conn = ConexaoBanco()
cur = conn.cursor()

def AtualizarResponsavelProjeto(codProjeto, novoResponsavel):
    update = '''
        UPDATE projeto SET codresponsavel = %s
        WHERE codigo = %s;
    '''
    value = (novoResponsavel, codProjeto)
    cur.execute(update,value)
    conn.commit()

AtualizarResponsavelProjeto(codProjeto=2, novoResponsavel=4)

cur.close()
conn.close()
