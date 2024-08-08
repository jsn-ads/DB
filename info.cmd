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
    SELECT * FROM table;             Seleciona todos o registros da tabela   xxxxx
    SELECT field1 , field2 FROM table;     Seleciona a coluna especifica da tabela xxxxx

    WHERE condição

        SELECT * FROM table WHERE id = number "Seleciona o registros pela condição WHERE seguido por parametro que pode ser 1 ou N dados"

        OR AND <> <= >= != operadores

            < menor 
            <= menor igual
            > maior
            >= maior igual
            != diferente
            AND "todas as condições devem se satisfeita"
            OR "apenas uma condição deve se satisfeita"

        LIKE

            SELECT * FROM table WHERE field LIKE "%"
                "%xxx" retorna dados com xxx no final
                "xxx%" retorna dados com xxx no inicio
                "%xxx%" retorna dados com xxx no registro
        BETWEEN 

            SELECT * FROM table WHERE field BETWEEN 5 AND 10
            BETWEEN "e utilizando no intervaldo de dado a outro , pode ser utilizando por numero , valor , datas"

        IN 

            SELECT * FROM table WHERE field IN (1 , 3 , 5);
            IN "utiliza para agrupar dados , ex: exibir uma lista de produtos de 3 fornecedores (1,3,5)"

            ORDER BY

                SELECT * FROM table ORDER BY field DESC 

                "ordeção cascata"

                SELECT * FROM table ORDER BY field ASC, field2 ASC

                SELECT * FROM table ORDER BY field ASC, field2 DESC
                
                ASC "agrupa as informações em ordem crescente ou ordem alfabetica"
                DESC "agrupa as informações em ordem descrecente ou ordem alfabetica inversa"
                OBS : "a ordem sempre vem depois das condições"
