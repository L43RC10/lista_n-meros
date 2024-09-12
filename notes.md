#BASE DE DADOS

NOME DO DB:
db_numeros

TABELAS:
users
    id
    username
    passwrd
    created_at
    updated_at

numeros
    id
    id_user
    numero_text
    numero_status(novo | em_progresso | cancelado | concluido)
    created_at
    updated_at