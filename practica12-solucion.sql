--1
SELECT * FROM piezas
WHERE precio_venta>=.07 AND precio_venta<=.52;

--2
SELECT tipo||'-'||modelo, precio_venta
FROM piezas
ORDER BY precio_venta DESC;

--3
SELECT tipo,modelo,precio_venta,precio_venta*1.21 as "precio con iva"
FROM piezas
ORDER BY tipo,modelo;

--4
SELECT tipo,modelo,precio_venta||'€',precio_venta*1.21 || '€' as "precio con iva"
FROM piezas
ORDER BY tipo,modelo;

--5
SELECT nombre from empresas
WHERE provincia in ('Palencia','Burgos');

--6
SELECT nombre,telefono FROM empresas
WHERE telefono LIKE '94%';

--7
SELECT nombre,telefono FROM empresas
WHERE telefono LIKE '%4%4%';

--8
SELECT nombre,telefono,localidad,provincia FROM empresas
WHERE localidad!=provincia;

--9
SELECT nombre,telefono localidad,provincia FROM empresas
WHERE (provincia='Madrid' OR provincia='Barcelona') 
            AND (telefono LIKE '%1' OR telefono LIKE '%7');

--10
SELECT n_pedido, fecha
FROM pedidos 
WHERE fecha >='9/03/2014' and fecha<='27/03/2014';


--11
SELECT n_pedido, fecha
FROM pedidos 
WHERE fecha like '%/02/14';

--12
SELECT * FROM pedidos
WHERE n_pedido=&numero_de_pedido;

--13
SELECT * 
FROM empresas WHERE provincia='&nombre_de_provincia';


--14
SELECT * FROM empresas
WHERE nombre LIKE '&letra'||'%';


--15