create database Veterinaria1;
use Veterinaria1;

-- Creando tabla de Propietarios
CREATE TABLE Propietarios (
    ID_Propietario INT PRIMARY KEY,
    Nombre VARCHAR(255),
    Direccion VARCHAR(255),
    Telefono VARCHAR(15),
    CorreoElectronico VARCHAR(100)
);

-- Creando tabla de Mascotas
CREATE TABLE Mascotas (
    ID_Mascota INT PRIMARY KEY,
    Nombre VARCHAR(255),
    Especie VARCHAR(50),
    Raza VARCHAR(50),
    FechaNacimiento DATE,
    Sexo CHAR(1),
    ID_Propietario INT,
    FOREIGN KEY (ID_Propietario) REFERENCES Propietarios(ID_Propietario)
);

-- Creando tabla de Visitas Veterinarias
CREATE TABLE VisitasVeterinarias (
    ID_Visita INT PRIMARY KEY,
    ID_Mascota INT,
    FechaVisita DATETIME,
    Diagnostico TEXT,
    Tratamiento TEXT,
    Costo DECIMAL(10, 2),
    FOREIGN KEY (ID_Mascota) REFERENCES Mascotas(ID_Mascota)
);

-- Creando abla de Servicios Veterinarios
CREATE TABLE ServiciosVeterinarios (
    ID_Servicio INT PRIMARY KEY,
    NombreServicio VARCHAR(100),
    DescripcionServicio TEXT,
    Precio DECIMAL(10, 2)
);

-- Creando tabla de Empleados
CREATE TABLE Empleados (
    ID_Empleado INT PRIMARY KEY,
    NombreEmpleado VARCHAR(255),
    Cargo VARCHAR(50),
    FechaContratacion DATE,
    Salario DECIMAL(10, 2)
);

-- Creando tabla de Citas
CREATE TABLE Citas (
    ID_Cita INT PRIMARY KEY,
    ID_Mascota INT,
    FechaHoraCita DATETIME,
    RazonCita TEXT,
    ID_Veterinario INT,
    FOREIGN KEY (ID_Mascota) REFERENCES Mascotas(ID_Mascota),
    FOREIGN KEY (ID_Veterinario) REFERENCES Empleados(ID_Empleado)
);


-- Creando tabla de Historiales Médicos
CREATE TABLE HistorialesMedicos (
    ID_Historial INT PRIMARY KEY,
    ID_Mascota INT,
    FechaRegistro DATE,
    NotasMedicas TEXT,
    PruebasRealizadas TEXT,
    ResultadosPruebas TEXT,
    FOREIGN KEY (ID_Mascota) REFERENCES Mascotas(ID_Mascota)
);

-- Creando tabla de Medicamentos
CREATE TABLE Medicamentos (
    ID_Medicamento INT PRIMARY KEY,
    NombreMedicamento VARCHAR(100),
    DescripcionMedicamento TEXT,
    InstruccionesUso TEXT,
    Precio DECIMAL(10, 2)
);


-- Creando de tabla de Vacunas
CREATE TABLE Vacunas (
    ID_Vacuna INT PRIMARY KEY,
    NombreVacuna VARCHAR(100),
    DescripcionVacuna TEXT,
    Precio DECIMAL(10, 2)
);

-- Creando de tabla de MascotasVacunas
CREATE TABLE MascotasVacunas (
    ID_Registro INT PRIMARY KEY,
    ID_Mascota INT,
    ID_Vacuna INT,
    FechaVacunacion DATE,
    FOREIGN KEY (ID_Mascota) REFERENCES Mascotas(ID_Mascota),
    FOREIGN KEY (ID_Vacuna) REFERENCES Vacunas(ID_Vacuna)
);


-- Creando tabla de Historial de Pagos
CREATE TABLE HistorialPagos (
    ID_Pago INT PRIMARY KEY,
    ID_Visita INT,
    FechaPago DATE,
    MontoPagado DECIMAL(10, 2),
    FOREIGN KEY (ID_Visita) REFERENCES VisitasVeterinarias(ID_Visita)
);

