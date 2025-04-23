-- Crear base de datos
CREATE DATABASE facturacionFly;
GO

-- Usar la nueva base
USE facturacionFly;
GO

-- Crear usuario y asignar permisos
CREATE LOGIN sfup WITH PASSWORD = 'sqlRailway123!';
CREATE USER sfup FOR LOGIN sfup;
ALTER ROLE db_owner ADD MEMBER sfup;
GO
