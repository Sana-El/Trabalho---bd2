import psycopg2

host = 'localhost'
dbname = 'AtividadesBD'
user = 'postgres'
password = 'postgres'
port = '5432'
conn = None
cur = None

def ConexaoBanco():
    try:
        conn =psycopg2.connect(
            host = host,
            dbname = dbname,
            user = user,
            password = password,
            port = port
        )
        return conn

    except Exception as error:
        print(error)
