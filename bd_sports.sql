-- ==========================================
-- 1. CREACIÓN DE LA BASE DE DATOS
-- ==========================================
DROP DATABASE IF EXISTS bd_sports;
CREATE DATABASE bd_sports;
USE bd_sports;

-- ==========================================
-- 2. CREACIÓN DE LAS TABLAS
-- ==========================================
CREATE TABLE IF NOT EXISTS tb_clientes (
    idCliente INT PRIMARY KEY NOT NULL,
    nombre_completo VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS tb_empleados (
    idEmpleado INT PRIMARY KEY NOT NULL,
    nombre_completo VARCHAR(100) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    salario DECIMAL(10,2) NOT NULL
);

CREATE TABLE IF NOT EXISTS tb_productos (
    idProducto INT PRIMARY KEY NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    modelo VARCHAR(100) NOT NULL,
    precio DECIMAL(10,2) NOT NULL
);

-- ==========================================
-- 3. INSERCIÓN DE 20 DATOS POR TABLA (SIN ERRORES)
-- ==========================================

-- Insertar 20 Clientes
INSERT INTO tb_clientes (idCliente, nombre_completo, email) VALUES
(1, 'Elena Vargas', 'elena.vargas@mail.com'),
(2, 'Sofia Vargas', 'sofia.vargas@mail.com'),
(3, 'Jorge Diaz', 'jorge.diaz@mail.com'),
(4, 'Jose Cruz', 'jose.cruz@mail.com'),
(5, 'Lucia Sanchez', 'lucia.sanchez@mail.com'),
(6, 'Carlos Vargas', 'carlos.vargas@mail.com'),
(7, 'Luis Vargas', 'luis.vargas@mail.com'),
(8, 'Jose Sanchez', 'jose.sanchez@mail.com'),
(9, 'Elena Flores', 'elena.flores@mail.com'),
(10, 'Carlos Rojas', 'carlos.rojas@mail.com'),
(11, 'Maria Ruiz', 'maria.ruiz@mail.com'),
(12, 'Pedro Alba', 'pedro.alba@mail.com'),
(13, 'Ana Torres', 'ana.torres@mail.com'),
(14, 'Raul Paz', 'raul.paz@mail.com'),
(15, 'Carmen Luna', 'carmen.luna@mail.com'),
(16, 'Luis Gil', 'luis.gil@mail.com'),
(17, 'Sara Arce', 'sara.arce@mail.com'),
(18, 'Diego Rios', 'diego.rios@mail.com'),
(19, 'Rosa Vega', 'rosa.vega@mail.com'),
(20, 'Marcos Soto', 'marcos.soto@mail.com');

-- Insertar 20 Empleados reales (Sin zapatillas trabajando de vendedores)
INSERT INTO tb_empleados (idEmpleado, nombre_completo, cargo, salario) VALUES
(1, 'Pedro Ramirez', 'Vendedor', 2332.04),
(2, 'Jose Cruz', 'Gerente', 1069.35),
(3, 'Jorge Vargas', 'Almacen', 3635.74),
(4, 'Pedro Ramirez', 'Vendedor', 1980.59),
(5, 'Elena Sanchez', 'Vendedor', 1373.99),
(6, 'Jose Torres', 'Vendedor', 4345.06),
(7, 'Elena Perez', 'Gerente', 2893.35),
(8, 'Jose Diaz', 'Almacen', 2749.57),
(9, 'Maria Sanchez', 'Vendedor', 4972.42),
(10, 'Lucia Flores', 'Vendedor', 4414.94),
(11, 'Carla Ruiz', 'Vendedor', 1550.00),
(12, 'Luis Soto', 'Gerente', 3200.50),
(13, 'Ana Vega', 'Vendedor', 1600.00),
(14, 'Marcos Arce', 'Vendedor', 1700.00),
(15, 'Carmen Luna', 'Almacen', 2150.00),
(16, 'Pablo Gil', 'Vendedor', 1750.25),
(17, 'Sara Alba', 'Gerente', 4100.00),
(18, 'Diego Cruz', 'Vendedor', 1650.00),
(19, 'Rosa Rios', 'Almacen', 2500.00),
(20, 'Raul Paz', 'Vendedor', 1400.00);

-- Insertar 20 Productos
INSERT INTO tb_productos (idProducto, tipo, modelo, precio) VALUES
(1, 'Polo', 'Runner', 45.50),
(2, 'Zapatilla', 'SpeedX', 120.00),
(3, 'Short', 'Basic', 35.99),
(4, 'Casaca', 'WinterFit', 150.25),
(5, 'Polo', 'SportX', 55.00),
(6, 'Zapatilla', 'PowerRun', 199.99),
(7, 'Short', 'ProFlex', 42.10),
(8, 'Casaca', 'LightWind', 85.00),
(9, 'Polo', 'UltraFlex', 60.50),
(10, 'Zapatilla', 'RunnerPro', 145.80),
(11, 'Casaca', 'SportX', 112.67),
(12, 'Zapatilla', 'UltraFlex', 180.74),
(13, 'Short', 'Runner', 162.22),
(14, 'Short', 'UltraFlex', 103.61),
(15, 'Polo', 'Profit', 167.04),
(16, 'Short', 'PowerRun', 50.63),
(17, 'Casaca', 'UltraFlex', 59.76),
(18, 'Casaca', 'Runner', 88.32),
(19, 'Zapatilla', 'UltraFlex', 50.56),
(20, 'Short', 'PowerRun', 57.38);

-- ==========================================
-- 4. CONSULTA DE COMPROBACIÓN
-- ==========================================
select * from tb_empleados
where salario > 4000 OR (cargo="Gerente" AND salario > 3000)
order by cargo asc;
 
select * from tb_empleados
where salario <= 1771
order by salario desc;
 
select * from tb_productos
where precio not between 50 and 100
order by precio asc;
 
select * from tb_empleados
where not (cargo = "Gerente" or cargo = "Almacen")
order by nombre_completo asc;
 
-- concat sirve para unir 2 columnas
select concat(tipo," ",modelo) AS producto, precio from tb_productos;
 
-- like 
select * from tb_clientes
where nombre_completo like "c%"; -- Aquellos que inician con la letra
 
select * from tb_clientes
where nombre_completo like "%s"; -- Aquellos que finalizan con la letra
 
select * from tb_clientes
where nombre_completo like "%as%"; -- Aquellos que tengan las sgts letras
 
select * from tb_clientes
where nombre_completo like "____"; -- Aquellos que tengan la misma cantidad de letras
 
select * from tb_empleados
where salario > 2000
AND nombre_completo like "%z"
ORDER BY nombre_completo asc; -- filtramos aquellos que su sueldo sea mayor a 2000 y finalizan con la letra z