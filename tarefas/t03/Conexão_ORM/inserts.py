from models import *
from datetime import date
from conexao import *

conexaoBanco()



def createAtividade (codProjeto, dataFim, dataInicio, descricao) :
    Atividade.create(
        codprojeto = codProjeto,
        datafim = dataFim,
        datainicio = dataInicio, 
        descricao = descricao
    )
    
createAtividade(
    codProjeto = 4,
    dataFim=date(2022, 6,19), 
    dataInicio = date(2022,6,27), 
    descricao="Tarefa 3"
)

EncerrarConxecao()
