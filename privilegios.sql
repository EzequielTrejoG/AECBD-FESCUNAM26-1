-- Martes 21 de Octubre de 2025

-- Privilegios en Bases de Datos

--1. Superman se puede conectar al SGBD
CREATE USER 'superman'@'localhost' IDENTIFIED BY '12345678';

--2. Batman se conecta a la base Sakila y solo puede consultar
CREATE USER 'batman'@'localhost' IDENTIFIED BY '12345678';
GRANT SELECT ON sakila.* TO 'batman'@'localhost';

--3. Aquaman puede borrar datos de employees
CREATE USER 'aquaman'@'localhost' IDENTIFIED BY '12345678';
GRANT DELETE ON employees.* TO 'aquaman'@'localhost';

--4. Flash puede proyectar y visualizar las columnas code, population de la tabla country
CREATE USER 'flash'@'localhost' IDENTIFIED BY '12345678';
GRANT SELECT(Code, Population) ON world.country TO 'flash'@'localhost';

--5. WonderWoman puede obtener las peliculas basándose en actor id
CREATE USER 'wonderwoman'@'localhost' IDENTIFIED BY '12345678';
GRANT SELECT ON sakila.film TO 'wonderwoman'@'localhost';
GRANT SELECT ON sakila.film_actor TO 'wonderwoman'@'localhost';
GRANT SELECT ON sakila.actor TO 'wonderwoman'@'localhost';

SELECT sakila.film.title, sakila.actor.first_name, sakila.actor.last_name
FROM sakila.film
INNER JOIN sakila.film_actor ON sakila.film.film_id = sakila.film_actor.film_id
INNER JOIN sakila.actor ON sakila.film_actor.actor_id = sakila.actor.actor_id;

--6. Green Lantern Borra la base de datos world
CREATE USER 'greenlantern'@'localhost' IDENTIFIED BY '12345678';
GRANT DROP ON world.* TO 'greenlantern'@'localhost';

--7. Joker visualiza los salarios de empleados
CREATE USER 'joker'@'localhost' IDENTIFIED BY '12345678';
GRANT SELECT(emp_no, first_name, last_name) ON employees.employees TO 'joker'@'localhost';
GRANT SELECT(emp_no, salary) ON employees.salaries TO 'joker'@'localhost';

SELECT employees.employees.emp_no, employees.employees.first_name, employees.employees.last_name, employees.salaries.salary
FROM employees.employees
INNER JOIN employees.salaries ON employees.employees.emp_no = employees.salaries.emp_no;

--8. Robin puede visualizar la tabla asignaciones de la base de datos de asiganción de conductor y autobus.
CREATE USER 'robin'@'localhost' IDENTIFIED BY '12345678';
GRANT SELECT ON viajes.asignaciones TO 'robin'@'localhost';