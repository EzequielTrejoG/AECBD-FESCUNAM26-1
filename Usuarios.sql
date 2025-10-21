-- Lunes 20 de Octubre de 2025

-- Creación de Usuarios

CREATE USER 'briza'@'%' IDENTIFIED by '1234';
GRANT SELECT ON world.country TO 'briza'@'%';

CREATE USER 'jessica'@'localhost' IDENTIFIED BY '124';
GRANT INSERT ON employees.* TO 'jessica'@'localhost';

-- Colocar contraseña a un usuario
ALTER USER 'root'@'localhost' IDENTIFIED BY '12345678';

-- Ejercicio en la BD sitioTaxisDos

-- Usuario administrador con todos los privilegios
CREATE USER 'admin'@'localhost' IDENTIFIED BY '12345678';
GRANT ALL PRIVILEGES ON sitioTaxisDos.* TO 'admin'@'localhost';

-- Usuario con privilegios de insertar en asignacion
CREATE USER 'german'@'localhost' IDENTIFIED BY '12345678';
GRANT INSERT ON sitioTaxisDos.asignacion TO 'german'@'localhost';

-- Usuario con privilegios de asignar viajes
CREATE USER 'ezequiel'@'localhost' IDENTIFIED BY '12345678';
GRANT INSERT ON sitioTaxisDos.viaje TO 'ezequiel'@'localhost';

-- Usuario con privilegios de insertar y modificar en todas las tablas
CREATE USER 'julio'@'localhost' IDENTIFIED BY '12345678';
GRANT INSERT, UPDATE ON sitioTaxisDos.* TO 'julio'@'localhost';