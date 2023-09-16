use Veterinaria1;

--1. Listar las mascotas con sus dueños y contar cuántas mascotas tiene cada propietario:

SELECT P.Nombre AS Propietario, M.Nombre AS Mascota, COUNT(M.ID_Mascota) AS CantidadMascotas
FROM Propietarios P
JOIN Mascotas M ON P.ID_Propietario = M.ID_Propietario
GROUP BY P.Nombre, M.Nombre;


--2. Calcular el salario promedio de los empleados veterinarios:

SELECT AVG(Salario) AS SalarioPromedioVeterinarios
FROM Empleados
WHERE Cargo = 'Veterinario';

--3. Calcular el total gastado por cada propietario en visitas veterinarias:

SELECT P.Nombre AS Propietario, SUM(VV.Costo) AS TotalGastado
FROM Propietarios P
JOIN Mascotas M ON P.ID_Propietario = M.ID_Propietario
JOIN VisitasVeterinarias VV ON M.ID_Mascota = VV.ID_Mascota
GROUP BY P.Nombre;



--4. Listar las vacunas que cuestan más de $30:
SELECT NombreVacuna, Precio
FROM Vacunas
WHERE Precio > 30.00;


--5. Encontrar las mascotas que tienen un costo de tratamiento superior a $100:
SELECT M.Nombre AS Mascota, VV.Costo AS CostoTratamiento
FROM Mascotas M
JOIN VisitasVeterinarias VV ON M.ID_Mascota = VV.ID_Mascota
WHERE VV.Costo > 50;


----------------------------------------------------------------------
--Multitabla

--Listar las visitas veterinarias realizadas por cada mascota con los nombres de las mascotas y sus fechas de visita:
SELECT M.Nombre AS Mascota, VV.FechaVisita
FROM Mascotas M
JOIN VisitasVeterinarias VV ON M.ID_Mascota = VV.ID_Mascota;


--Encontrar las vacunas que ha recibido cada mascota con los nombres de las mascotas y las vacunas:
SELECT M.Nombre AS Mascota, V.NombreVacuna AS Vacuna
FROM Mascotas M
JOIN MascotasVacunas MV ON M.ID_Mascota = MV.ID_Mascota
JOIN Vacunas V ON MV.ID_Vacuna = V.ID_Vacuna;

------------------------------------------------------------------
-- Subconsulta

--Calcular el costo total de todas las visitas veterinarias para una mascota específica (en este caso, para la mascota con ID_Mascota = 1):
SELECT Nombre, (
    SELECT SUM(Costo) 
    FROM VisitasVeterinarias 
    WHERE ID_Mascota = 1
) AS CostoTotal
FROM Mascotas
WHERE ID_Mascota = 1;


--Listar las citas programadas para mascotas que tienen más de 2 años de edad:
SELECT C.ID_Cita, M.Nombre AS Mascota, V.NombreEmpleado AS Veterinario, C.FechaHoraCita
FROM Citas C
JOIN Mascotas M ON C.ID_Mascota = M.ID_Mascota
JOIN Empleados V ON C.ID_Veterinario = V.ID_Empleado
WHERE M.FechaNacimiento <= DATEADD(YEAR, -2, GETDATE());

--------------------------------------------------------------------
--Joins
--Calcular el costo total de las visitas veterinarias por propietario y listar los nombres de los propietarios junto con el costo total:
SELECT P.Nombre AS NombrePropietario, SUM(VV.Costo) AS CostoTotal
FROM Propietarios P
JOIN Mascotas M ON P.ID_Propietario = M.ID_Propietario
JOIN VisitasVeterinarias VV ON M.ID_Mascota = VV.ID_Mascota
GROUP BY P.Nombre;


--Encontrar todas las mascotas con sus historiales médicos y listar la fecha de registro y las notas médicas:
SELECT M.Nombre AS NombreMascota, HM.FechaRegistro, HM.NotasMedicas
FROM Mascotas M
JOIN HistorialesMedicos HM ON M.ID_Mascota = HM.ID_Mascota;






