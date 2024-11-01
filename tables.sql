CREATE TABLE Drivers (
    DriverID INT PRIMARY KEY,
    Nome VARCHAR(100),
    CNH VARCHAR(20),
    Endereco VARCHAR(200),
    Contato VARCHAR(50)
);
GO

CREATE TABLE Clients (
    ClientID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Empresa VARCHAR(100),
    Endereco VARCHAR(200),
    Contato VARCHAR(50)
);
GO

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    ClientID INT,
    DriverID INT,
    DetalhesPedido TEXT,
    DataEntrega DATE,
    Status VARCHAR(50),
    FOREIGN KEY (ClientID) REFERENCES Clients(ClientID),
    FOREIGN KEY (DriverID) REFERENCES Drivers(DriverID)
);
GO
