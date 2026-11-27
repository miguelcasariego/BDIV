# BDIV · Tema 4 · Prácticas SQL

Prácticas SQL de la asignatura Big Data IV (ESIC). Las consultas se ejecutan con SQLite desde VS Code (extensión SQLTools).

## Estructura

| Archivo | Práctica | Base de datos |
|---|---|---|
| `sql/practica1.sql` | Práctica 1 · ParaiZoo: creación de la tabla `ParaiZooHuesped` se inserción de animales | `parazoo.db` |
| `sql/practica2.sql` | Práctica 2 · Consultas SELECT con filtros, texto y números | `moviebig.db` |
| `sql/practica3.sql` | Práctica 3 · ORDER BY, OR, COALESCE y fechas | `moviebig.db` |

Los ficheros `.db` no se incluyen en el repositorio (están en `.gitignore`).

## Notas

- En `moviebig.db` las columnas se llaman `id` y `status` (no `movie_id` / `movie_status` como en las diapositivas).
- Práctica 3, ejercicio 3: `release_date` solo guarda la fecha (sin hora), por lo que la consulta no devuelve resultados.
- Práctica 3, ejercicio 6: los países están en inglés, así que se busca tanto "España" como "Spain".