CREATE TABLE Socio (
    idSocio INT PRIMARY KEY AUTO_INCREMENT,
    nombreSocio VARCHAR(100),
    rutSocio VARCHAR(20),
    fechaNacimiento DATE,
    direccion VARCHAR(255),
    numeroTelefonico VARCHAR(20),
    correo VARCHAR(100)
);

CREATE TABLE Barco (
    idBarco INT PRIMARY KEY AUTO_INCREMENT,
    idSocio INT,
    nombreBarco VARCHAR(100),
    modelo VARCHAR(100),
    numeroMatricula VARCHAR(50),
    numeroAmarre INT,
    cuota DECIMAL(10, 2),
    FOREIGN KEY (idSocio) REFERENCES Socio(idSocio)
);

CREATE TABLE Persona (
    idPersona INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    rut VARCHAR(20),
    fechaNacimiento DATE,
    numeroTelefonico VARCHAR(20),
    correo VARCHAR(100)
);

CREATE TABLE TableRelation (
    idBarco INT,
    idPersona INT,
    fecha DATE,
    hora TIME,
    comentarios TEXT,
    PRIMARY KEY (idBarco, idPersona),
    FOREIGN KEY (idBarco) REFERENCES Barco(idBarco),
    FOREIGN KEY (idPersona) REFERENCES Persona(idPersona)
);
