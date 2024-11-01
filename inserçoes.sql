INSERT INTO Drivers (DriverID, Nome, CNH, Endereco, Contato) 
VALUES (1, 'João Silva', '123456789', 'Rua A, 100', '(11) 91234-5678');
GO

INSERT INTO Clients (ClientID, Nome, Empresa, Endereco, Contato) 
VALUES (1, 'Empresa A', 'Transporte Log', 'Av. B, 200', '(11) 98765-4321');
GO

INSERT INTO Orders (OrderID, ClientID, DriverID, DetalhesPedido, DataEntrega, Status) 
VALUES (1, 1, 1, 'Entrega de documentos', '2024-11-01', 'Pendente');
GO
