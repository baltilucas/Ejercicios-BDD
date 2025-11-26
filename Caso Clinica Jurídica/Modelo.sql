
CREATE TABLE Procurador (
    idProcurador INT PRIMARY KEY AUTO_INCREMENT,
    nombreProcurador VARCHAR(100),
    rutProcurador VARCHAR(20),
    sexoProcurador CHAR(1),
    fechaNacimiento DATE,
    direccionProcurador VARCHAR(200)
);


CREATE TABLE Cliente (
    idCliente INT PRIMARY KEY AUTO_INCREMENT,
    nombreCliente VARCHAR(100),
    rutCliente VARCHAR(20),
    sexoCliente CHAR(1), --Se usará M o F
    fechaNacimiento DATE,
    direccionCliente VARCHAR(200)
);

CREATE TABLE Estado (
    idEstado INT PRIMARY KEY AUTO_INCREMENT,
    estado VARCHAR(50)
);


CREATE TABLE Asunto (
    idAsunto INT PRIMARY KEY AUTO_INCREMENT,
    idCliente INT,
    fechaInicio DATE,
    fechaFinalizacion DATE,
    idEstado INT,
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente),
    FOREIGN KEY (idEstado) REFERENCES Estado(idEstado)
);

CREATE TABLE ProcuradorAsunto (
    idProcurador INT,
    idAsunto INT,
    comentario TEXT,
    PRIMARY KEY (idProcurador, idAsunto),
    FOREIGN KEY (idProcurador) REFERENCES Procurador(idProcurador),
    FOREIGN KEY (idAsunto) REFERENCES Asunto(idAsunto)
);
