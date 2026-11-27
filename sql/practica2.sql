-- Ejercicio 1: Películas fracaso (estrenadas y beneficios <= presupuesto)
SELECT title, revenue, budget
FROM movies
WHERE status = 'Released'
  AND revenue <= budget;

-- Ejercicio 2: Saga Terminator
SELECT title, release_date
FROM movies
WHERE LOWER(title) LIKE '%terminator%';

-- Ejercicio 3: Películas de más de 2 horas
SELECT title, runtime, vote_average
FROM movies
WHERE runtime > 120;

-- Ejercicio 4: Películas no estrenadas
SELECT title, status, budget
FROM movies
WHERE status <> 'Released';

-- Ejercicio 5: Bien valoradas y con "god" en el resumen
SELECT title, vote_average, overview
FROM movies
WHERE vote_average > 7
  AND LOWER(overview) LIKE '%god%';

-- Ejercicio 6: Más de 1000 votos pero media no superior a 5
SELECT title, vote_count, vote_average, release_date
FROM movies
WHERE vote_count > 1000
  AND vote_average <= 5;

-- Ejercicio 7: Aliens con alta popularidad
SELECT title, popularity, release_date, vote_average
FROM movies
WHERE popularity > 100
  AND LOWER(overview) LIKE '%alien%';

-- Ejercicio 8: Estrenadas antes del 01/01/1980
SELECT title, vote_average, release_date
FROM movies
WHERE release_date < '1980-01-01'
  AND release_date <> '';

-- Ejercicio 9: Taglines de más de 100 caracteres
SELECT title, LENGTH(tagline) AS longitud_tagline, popularity, tagline
FROM movies
WHERE LENGTH(tagline) > 100;

-- Ejercicio 10: Una hora o menos (excluyendo duración 0)
SELECT title, release_date, runtime, vote_average
FROM movies
WHERE runtime <= 60
  AND runtime > 0;