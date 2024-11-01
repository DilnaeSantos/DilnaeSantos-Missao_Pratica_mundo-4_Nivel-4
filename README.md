# 📝 Relatório Discente de Acompanhamento

## Informações do Curso

- **Projeto:** Banco de Dados SQL para a Empresa LogiMove Transportes
- **Curso:** Análise e Desenvolvimento de Sistemas
- **Universidade:** Estácio de Sá - Campus São José dos Pinhais
- **Período:** 4º Período
- **Turma:** 9001
- **Tecnologia:** SQL no Azure
- **Tutor:** Altamira de Souza Queiroz
- **Matéria:** Banco de Dados Relacional (RPG0025)

## Informações do Aluno

- **Nome:** Dilnae Rennan Souza dos Santos
- **Matrícula:** 202302631631

## Estruturação do Projeto de Banco de Dados SQL

O projeto de banco de dados para a LogiMove Transportes foi estruturado para atender às necessidades de armazenamento e recuperação de dados da empresa, focando na gestão de motoristas, clientes e pedidos. A implementação foi realizada no Azure SQL, permitindo uma solução escalável e segura.

### Estrutura das Tabelas

O banco de dados foi organizado com três tabelas principais: **Drivers** (Motoristas), **Clients** (Clientes) e **Orders** (Pedidos), conforme detalhado abaixo:

- **Drivers:** Contém informações dos motoristas, como ID, nome, número da CNH, endereço e dados de contato.
- **Clients:** Armazena os dados dos clientes, incluindo nome, empresa, endereço e contato.
- **Orders:** Guarda os dados dos pedidos, relacionando clientes e motoristas, com detalhes do pedido, data de entrega e status.

### Estrutura do Código SQL

O código SQL segue uma estrutura lógica que define cada tabela com suas colunas e restrições. As principais declarações incluem:

- **Primary Keys:** Estabelecidas em cada tabela para garantir a exclusividade de registros, como `DriverID`, `ClientID` e `OrderID`.
- **Foreign Keys:** Configuradas na tabela Orders para relacionar cada pedido a um cliente e a um motorista.

Exemplo de criação das tabelas:

```sql
-- Criação da tabela Drivers
CREATE TABLE Drivers (
    DriverID INT PRIMARY KEY,
    Nome VARCHAR(100),
    CNH VARCHAR(20),
    Endereco VARCHAR(200),
    Contato VARCHAR(50)
);

-- Criação da tabela Clients
CREATE TABLE Clients (
    ClientID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Empresa VARCHAR(100),
    Endereco VARCHAR(200),
    Contato VARCHAR(50)
);

-- Criação da tabela Orders
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
```
### Funcionalidades Implementadas

#### CRUD (Create, Read, Update, Delete)
As operações CRUD foram implementadas para manipulação dos dados nas tabelas, permitindo:

- **Inserção** de novos motoristas, clientes e pedidos.
- **Leitura** dos dados, permitindo consultas filtradas e ordenadas.
- **Atualização** de registros específicos, como o status dos pedidos.
- **Exclusão** de registros, respeitando as restrições de integridade referencial.

#### Relacionamentos
Os relacionamentos entre as tabelas **Drivers**, **Clients** e **Orders** foram implementados usando **foreign keys**, o que permite referenciar motoristas e clientes específicos em cada pedido. Isso facilita consultas que recuperam informações completas sobre pedidos, incluindo detalhes do cliente e do motorista envolvidos.

### Organização do Projeto no GitHub

Os scripts SQL foram organizados em arquivos separados para facilitar o gerenciamento e a colaboração:

- **create_tables.sql:** Contém o script de criação das tabelas.
- **insert_data.sql:** Scripts para inserir dados nas tabelas, facilitando a inserção inicial.
- **update_data.sql:** Contém exemplos de comandos de atualização.
- **delete_data.sql:** Scripts para exclusão de registros, com exemplos de deleção.
- **read_data.sql:** Scripts para consultas comuns e relatórios de dados.

### Conclusão e Impacto

O banco de dados LogiMove, hospedado no Azure SQL, proporciona uma infraestrutura confiável e acessível para gerenciar informações essenciais da empresa, permitindo um melhor acompanhamento dos motoristas, clientes e pedidos. Essa solução permite consultas rápidas e atualizações seguras dos dados, essenciais para o gerenciamento eficaz da logística da empresa.
