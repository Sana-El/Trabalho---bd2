from models import *
from conexao import EncerrarConxecao, conexaoBanco

conexaoBanco()

def AtualizarResponsavel(codProjeto, NovoResponsavel):
    projeto = Projeto.select().where(Projeto.codigo == codProjeto).get()
    projeto.codresponsavel = NovoResponsavel
    projeto.save()


AtualizarResponsavel(codProjeto=int(1), NovoResponsavel=3)


EncerrarConxecao()
