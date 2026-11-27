CREATE TABLE ParaiZooHuesped (
    id                  INTEGER PRIMARY KEY,
    animal              VARCHAR(50) NOT NULL,
    nombre              VARCHAR(50) NOT NULL,
    sexo                VARCHAR(6)  CHECK (sexo IN ('Macho', 'Hembra')),
    fecha_nacimiento    DATE,
    especie             VARCHAR(20),
    fecha_incorporacion DATE NOT NULL,
    comida_diaria_kg    DECIMAL(5,2),
    jaula               INT,
    peso_llegada_kg     DECIMAL(6,2)
);
-- Ejercicio 2: Parches
INSERT INTO ParaiZooHuespeds
    (animal, nombre, sexo, fecha_nacimiento, especie, fecha_incorporacion, comida_diaria_kg, jaula, peso_llegada_kg)
VALUES
    ('Conejo', 'Parches', 'Macho', '2017-09-20', 'Herbívoro', '2019-09-13', 0.25, 24, 1.5);

-- Ejercicio 3: Spirit y Perla
INSERT INTO ParaiZooHuesped
    (animal, nombre, sexo, fecha_nacimiento, especie, fecha_incorporacion, comida_diaria_kg, jaula, peso_llegada_kg)
VALUES
    ('Caballo', 'Spirit', 'Macho',  '2009-08-07', 'Herbívoro', '2019-10-02', 3,   15, 230),
    ('Pavo',    'Perla',  'Hembra', '2018-09-21', 'Herbívoro', '2019-10-02', 0.5, 23, 42);

-- Ejercicio 4: Fresa
INSERT INTO ParaiZooHuesped
    (animal, nombre, sexo, fecha_nacimiento, especie, fecha_incorporacion, comida_diaria_kg, jaula, peso_llegada_kg)
VALUES
    ('Tigre', 'Fresa', 'Hembra', NULL, 'Carnívoro', '2019-11-20', 4, 31, 42);

-- Ejercicio 5: Nilo
INSERT INTO ParaiZooHuesped
    (animal, nombre, sexo, fecha_nacimiento, especie, fecha_incorporacion, comida_diaria_kg, jaula, peso_llegada_kg)
VALUES
    ('Cocodrilo', 'Nilo', 'Macho', NULL, 'Carnívoro', '2019-12-12', 5, 47, 44);

-- Comprobación
SELECT * FROM ParaiZooHuesped;