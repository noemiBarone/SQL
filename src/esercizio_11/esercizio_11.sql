-- 1.
SELECT * FROM Opera o
LEFT JOIN Artista a  ON o.id_artista = a.id_artista;

-- 2.
SELECT * FROM Opera o
RIGHT JOIN Artista a  ON o.id_artista = a.id_artista;

--3.
SELECT * FROM Opera o
LEFT JOIN Artista a  ON o.id_artista = a.id_artista
WHERE a.id_artista IS NULL;

--4.
SELECT m.nome  FROM Museo m
INNER JOIN Esposizione e ON e.id_museo = m.id_museo
INNER JOIN Opera o ON e.id_opera = o.id_opera
INNER JOIN Artista a ON o.id_artista = a.id_artista;

--5.
SELECT * FROM Opera o
FULL OUTER JOIN Esposizione e ON e.id_opera  = o.id_opera
WHERE o.id_opera IS NULL OR e.id_opera IS NULL;


