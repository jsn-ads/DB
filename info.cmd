Inteiro
    TINYINT     "numero pequeno apenas 1 caracter"
    INT         "numero de ate 11 caracters"
    BIGINT      "numeros gigantes"
REAL
    FLOAT       "numeros decimais"
TEXTO
    VARCHAR     "texto com ate 255 caracters"
    TEXT        "texto grandes"
TEMPO
    DATE        YYYY-MM-DD
    TIME        HH:MM:SS
    DATETIME    YYYY-MM-DD HH:MM:SS
    TIMESTAMP   "converte data em segundos , aparti de 1970-01-01"

SELECT

    SELECT * FROM table;             
    "Seleciona todos o registros da tabela"

    SELECT field1 , field2 FROM table;     
    "Seleciona a coluna especifica da tabela"

SELECT > WHERE "condição"
   
    WHERE

    SELECT * FROM table WHERE id = number 
    "Seleciona o registros pela condição WHERE seguido por parametro que pode ser 1 ou N dados"

SELECT > WHERE > OR, AND, <, >, <=, >=, != "operadores"
    
    OR AND <> <= >= !=

        < menor 
        <= menor igual
        > maior
        >= maior igual
        != diferente
        AND "todas as condições devem se satisfeita"
        OR "apenas uma condição deve se satisfeita"

SELECT > WHERE > LIKE

    LIKE

    SELECT * FROM table WHERE field LIKE "%"
        "%xxx" retorna dados com xxx no final
        "xxx%" retorna dados com xxx no inicio
        "%xxx%" retorna dados com xxx no registro

SELECT > WHERE > BETWEEN

    BETWEEN 

        SELECT * FROM table WHERE field BETWEEN 5 AND 10
        BETWEEN "e utilizando no intervaldo de dado a outro , pode ser utilizando por numero , valor , datas"

SELECT > WHERE > IN

    IN 

        SELECT * FROM table WHERE field IN (1 , 3 , 5);
        IN "utiliza para agrupar dados , ex: exibir uma lista de produtos de 3 fornecedores (1,3,5)"

SELECT > WHERE > LIKE , BETWEEN , IN > ORDER BY
            
    ORDER BY

        SELECT * FROM table ORDER BY field DESC 

        "ordeção cascata"

        SELECT * FROM table ORDER BY field ASC, field2 ASC

        SELECT * FROM table ORDER BY field ASC, field2 DESC
        
        ASC "agrupa as informações em ordem crescente ou ordem alfabetica"
        DESC "agrupa as informações em ordem descrecente ou ordem alfabetica inversa"
        OBS : "a ordem sempre vem depois das condições"

SELECT > WHERE > LIKE , BETWEEN , IN > ORDER BY ASC DESC > LIMIT

        LIMIT

            SELECT * FROM table LIMIT 3

            SELECT * FROM table WHERE field1 = 1 ORDER BY field2 DESC LIMIT 4,3 

            LIMIT 3 "limita a pesquisa nos 3 primeiros registro"
            LIMIT 4,3 "limita a pesquisa em 3 registro aparti do registro 4 em diante"

SELECT COUNT(*)

    SELECT COUNT(field) FROM table;

    SELECT COUNT(field) AS "EX:nome" FROM table WHERE field1 = 1

    COUNT : "retorna a quantidade de registro podendo utiliza condicionais ou não"

SELECT AVG(*)

    SELECT AVG(field) FROM table

    SELECT AVG(field) AS "EX: media" FROM table WHERE field1 = 1

    AVG : "retorna a media da quantidade ou valor da tabela de registro podendo utiliza condicionais ou não"

SELECT SUM(*)

    SELECT SUM(field) FROM table

    SELECT SUM(field) as "EX : soma total" FROM table WHERE field = 1

    SUM : "retorna a soma dos dados selecionais da tabela podendo utiliza condicionais ou não"

SELECT COUNT(*), SUM(*), AVG > WHERE

    SELECT COUNT(field) AS "A1", SUM(field1) AS "A2", AVG(field2) AS "A3" FROM table WHERE field4 = 1

SELECT GROUP BY

    SELECT SUM(field) AS "total", field1 FROM table GROUP BY field2

    GROUP BY : "o group by deve ser utilizado junto com SUM ou AVG ou COUNT, pois a forma correta de utiliza e agrupar trazendo resultado ex: tenho total 300 alunos e 5 turmas , ele vai trazer quantos alunos por turma tem"