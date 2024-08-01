Inteiro
    TINYINT     numero pequeno apenas 1 caracter
    INT         numero de ate 11 caracters
    BIGINT      numeros gigantes
REAL
    FLOAT       numeros decimais
TEXTO
    VARCHAR     texto com ate 255 caracters
    TEXT        texto grandes 
TEMPO
    DATE        YYYY-MM-DD
    TIME        HH:MM:SS
    DATETIME    YYYY-MM-DD HH:MM:SS
    TIMESTAMP   converte data em segundos , aparti de 1970-01-01

SELECT
    SELECT * FROM xxxxx;             Seleciona todos o registros da tabela   xxxxx
    SELECT xyz , dgf FROM xxxxx;     Seleciona a coluna especifica da tabela xxxxx

SELECT CONDICIONAIS
    LIKE
        SELECT * FROM xxx WHERE yyy LIKE '%'     
            '%zzz' buscara registros que termina com informação zzz 
            'zzz%' buscara registros que começa com a informação zzz
            '%zzz%' buscara registros que tenha a informação zzz