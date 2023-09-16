-- Insertar datos en la tabla de Propietarios
INSERT INTO Propietarios (ID_Propietario, Nombre, Direccion, Telefono, CorreoElectronico)
VALUES
    (1, 'Juan Pérez', '123 Calle Principal', '123-456-7890', 'juan@email.com'),
    (2, 'María Rodríguez', '456 Calle Secundaria', '987-654-3210', 'maria@email.com'),
    (3, 'Pedro Sánchez', '789 Calle Terciaria', '111-222-3333', 'pedro@email.com'),
    (4, 'Luisa Martínez', '456 Calle Cuarta', '555-666-7777', 'luisa@email.com'),
    (5, 'Ana García', '789 Calle Quinta', '999-888-7777', 'ana@email.com');

-- Insertar datos en la tabla de Mascotas
INSERT INTO Mascotas (ID_Mascota, Nombre, Especie, Raza, FechaNacimiento, Sexo, ID_Propietario)
VALUES
    (1, 'Max', 'Perro', 'Labrador Retriever', '2020-05-15', 'M', 1),
    (2, 'Luna', 'Gato', 'Siamés', '2019-08-10', 'H', 2),
    (3, 'Rocky', 'Perro', 'Bulldog', '2018-04-20', 'M', 3),
    (4, 'Whiskers', 'Gato', 'Persa', '2020-01-03', 'H', 4),
    (5, 'Daisy', 'Perro', 'Golden Retriever', '2017-11-25', 'H', 5);

-- Insertar datos en la tabla de Visitas Veterinarias
INSERT INTO VisitasVeterinarias (ID_Visita, ID_Mascota, FechaVisita, Diagnostico, Tratamiento, Costo)
VALUES
    (1, 1, '2023-01-05 10:30:00', 'Fiebre y tos persistente', 'Medicación y reposo', 75.00),
    (2, 2, '2023-02-15 14:15:00', 'Vacunación anual', 'Vacunación y chequeo general', 50.00),
    (3, 3, '2023-03-10 09:45:00', 'Problemas de piel', 'Tratamiento tópico', 60.00),
    (4, 4, '2023-04-20 11:00:00', 'Control de peso', 'Plan de dieta y ejercicios', 40.00),
    (5, 5, '2023-05-02 16:30:00', 'Revisión dental', 'Limpieza dental y extracción', 85.00);

-- Insertar datos en la tabla de Servicios Veterinarios
INSERT INTO ServiciosVeterinarios (ID_Servicio, NombreServicio, DescripcionServicio, Precio)
VALUES
    (1, 'Vacunación Anual', 'Vacunación anual para mascotas', 50.00),
    (2, 'Examen Médico General', 'Chequeo médico completo para mascotas', 60.00),
    (3, 'Limpieza Dental', 'Limpieza dental profesional', 80.00),
    (4, 'Cirugía de Esterilización', 'Cirugía de esterilización para mascotas', 100.00),
    (5, 'Radiografía', 'Radiografía diagnóstica', 70.00);

-- Insertar datos en la tabla de Empleados
INSERT INTO Empleados (ID_Empleado, NombreEmpleado, Cargo, FechaContratacion, Salario)
VALUES
    (1, 'Dr. López', 'Veterinario', '2022-03-01', 5000.00),
    (2, 'Dra. Rodríguez', 'Veterinario', '2021-05-15', 5500.00),
    (3, 'Recepcionista 1', 'Recepcionista', '2023-01-10', 3000.00),
    (4, 'Asistente de Veterinario', 'Asistente', '2022-11-20', 3500.00),
    (5, 'Recepcionista 2', 'Recepcionista', '2023-02-25', 3200.00);

-- Insertar datos en la tabla de Citas
INSERT INTO Citas (ID_Cita, ID_Mascota, FechaHoraCita, RazonCita, ID_Veterinario)
VALUES
    (1, 1, '2023-01-07 15:00:00', 'Consulta de rutina', 1),
    (2, 2, '2023-02-16 10:00:00', 'Vacunación anual', 2),
    (3, 3, '2023-03-12 11:30:00', 'Problemas de piel', 1),
    (4, 4, '2023-04-22 14:00:00', 'Control de peso', 3),
    (5, 5, '2023-05-05 09:15:00', 'Problemas dentales', 2);

-- Insertar datos en la tabla de Historiales Médicos
INSERT INTO HistorialesMedicos (ID_Historial, ID_Mascota, FechaRegistro, NotasMedicas, PruebasRealizadas, ResultadosPruebas)
VALUES
    (1, 1, '2023-01-07', 'Consulta de rutina', 'Análisis de sangre', 'Resultados normales'),
    (2, 2, '2023-02-16', 'Vacunación anual', 'Examen de heces', 'Resultados normales'),
    (3, 3, '2023-03-12', 'Problemas de piel', 'Cultivo de piel', 'Infección por hongos'),
    (4, 4, '2023-04-22', 'Control de peso', 'Pruebas de sangre', 'Niveles normales'),
    (5, 5, '2023-05-05', 'Problemas dentales', 'Radiografía dental', 'Necesidad de extracción');

-- Insertar datos en la tabla de Medicamentos
INSERT INTO Medicamentos (ID_Medicamento, NombreMedicamento, DescripcionMedicamento, InstruccionesUso, Precio)
VALUES
    (1, 'Amoxicilina', 'Antibiótico para infecciones', 'Tomar 1 comprimido cada 12 horas', 15.00),
    (2, 'Frontline', 'Antipulgas y garrapatas', 'Aplicar en la piel una vez al mes', 20.00),
    (3, 'Metacam', 'Antiinflamatorio para dolor', 'Administrar según las indicaciones', 25.00),
    (4, 'Hill''s Science Diet', 'Alimento para control de peso', 'Seguir las instrucciones en el paquete', 30.00),
    (5, 'DentalStix', 'Snacks para la higiene dental', 'Dar 1 al día como premio', 10.00);

-- Insertar datos en la tabla de Vacunas
INSERT INTO Vacunas (ID_Vacuna, NombreVacuna, DescripcionVacuna, Precio)
VALUES
    (1, 'Rabia', 'Vacuna contra la rabia', 30.00),
    (2, 'Moquillo', 'Vacuna contra el moquillo', 25.00),
    (3, 'Parvovirus', 'Vacuna contra el parvovirus', 20.00),
    (4, 'Leucemia Felina', 'Vacuna contra la leucemia felina', 35.00),
    (5, 'Bordetella', 'Vacuna contra la tos de las perreras', 15.00);

-- Insertar datos en la tabla de MascotasVacunas
INSERT INTO MascotasVacunas (ID_Registro, ID_Mascota, ID_Vacuna, FechaVacunacion)
VALUES
    (1, 1, 1, '2023-01-07'),
    (2, 2, 2, '2023-02-16'),
    (3, 3, 3, '2023-03-12'),
    (4, 4, 4, '2023-04-22'),
    (5, 5, 5, '2023-05-05');

-- Insertar datos en la tabla de Historial de Pagos
INSERT INTO HistorialPagos (ID_Pago, ID_Visita, FechaPago, MontoPagado)
VALUES
    (1, 1, '2023-01-07', 75.00),
    (2, 2, '2023-02-16', 50.00),
    (3, 3, '2023-03-12', 60.00),
    (4, 4, '2023-04-22', 40.00),
    (5, 5, '2023-05-05', 85.00);
