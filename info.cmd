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

WHERE condição

        SELECT * FROM xxxxx WHERE id = X "Seleciona o registros pela condição WHERE seguido por parametro que pode ser 1 ou N dados"

    OR AND <> <= >= != operadores

        < menor 
        <= menor igual
        > maior
        >= maior igual
        != diferente
        AND "todas as condições devem se satisfeita"
        OR "apenas uma condição deve se satisfeita"

SELECT LIKE
    SELECT * FROM table WHERE field LIKE "%"
        "%xxx" retorna dados com xxx no final
        "xxx%" retorna dados com xxx no inicio
        "%xxx%" retorna dados com xxx no registro