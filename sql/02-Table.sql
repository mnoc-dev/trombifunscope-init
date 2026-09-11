CREATE TABLE student (
                         id_student INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
                         first_name VARCHAR(30) NOT NULL,
                         last_name VARCHAR(30) NOT NULL,
                         nickname VARCHAR(30) NOT NULL UNIQUE,
                         age INT NOT NULL,
                         description TEXT NOT NULL,
                         super_power VARCHAR(150) NOT NULL,
                         picture_path VARCHAR(150) NOT NULL UNIQUE,
                         creation_date DATE NOT NULL
)

-- id_student est choisi en tant que clé primaire auto généré car elle contribue a garantir
-- l identité de chaque student par son unicité, deux students
-- ne peuvent pas avoir le meme id et un student ne peut pas avoir deux id, la colone est de ce fait
-- non-NULL une PRIMARY KEY est non NULL et UNIQUE
-- https://www.postgresql.org/docs/current/ddl-constraints.html#DDL-CONSTRAINTS-PRIMARY-KEYS
-- https://openclassrooms.com/fr/courses/6938711-modelisez-vos-bases-de-donnees/7504979-determinez-vos-cles-primaires