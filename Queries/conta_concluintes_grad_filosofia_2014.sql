SELECT COUNT (distinct v.codpes)
FROM VINCULOPESSOAUSP v
    JOIN TITULOPES t
    ON v.codpes = t.codpes
WHERE ( v.tipvin = 'ALUNOGR'
    AND v.dtafimvin LIKE '%2014%'
    AND v.sitoco LIKE 'Conclu%' -- consulta não funciona com acento	
    AND v.codclg = 8
    AND t.codcur in(8010))