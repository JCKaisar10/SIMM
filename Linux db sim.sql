--EJERCICIO 1 --

CREATE TYPE Producto AS OBJECT(
    id_producto     NUMBER,
    nombre          VARCHAR2(50),
    precio          NUMBER(6,2)
    
)NOT FINAL;

/
-- EJERCICIO 1 --

CREATE TABLE Productos OF Producto(
    id_producto     PRIMARY KEY
);
/

-- EJERCICIO 2 --

CREATE TYPE PoductoElectronico UNDER Producto(
    garantia        NUMBER(12)
);

/

-- EJERCICIO 2 --

INSERT INTO Productos VALUES (PoductoElectronico(2,'Bombas', 5.20, 5));
INSERT INTO Productos VALUES (PoductoElectronico(3,'BombasXXL', 120.20, 5));

/

-- EJERCICIO 2 --

SELECT * FROM Productos;

/

-- EJERCICIO 3 --

SELECT id_producto, nombre FROM Productos;

/

-- EJERCICIO 3 --

SELECT nombre, precio FROM Productos WHERE precio > 50 ; 

/

-- EJERCICIO 3 --

SELECT p.nombre, p.precio,
    TREAT (VALUE (p) AS PoductoElectronico) .garantia AS Garantia_Mensual
FROM Productos p;

/

-- EJERCICIO 4 --

CREATE TYPE Cliente AS OBJECT(
    id_cliente     NUMBER,
    nombre          VARCHAR2(50),
    telefono         VARCHAR2(15)
    
)NOT FINAL;

/
-- EJERCICIO 4 --


