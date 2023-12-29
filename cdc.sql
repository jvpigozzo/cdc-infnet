USE SeuBancoDeDados;
EXEC sys.sp_cdc_enable_db;

CREATE TABLE dbo.Produtos (
    ProdutoID INT PRIMARY KEY,
    NomeProduto NVARCHAR(255),
    Preco DECIMAL(10, 2)
);

USE SeuBancoDeDados;
EXEC sys.sp_cdc_enable_table
    @source_schema = 'dbo',
    @source_name   = 'Produtos',
    @role_name     = 'cdc_AdminRole';

INSERT INTO dbo.Produtos (ProdutoID, NomeProduto, Preco, DataInsercao)
VALUES (1, 'Produto A', 19.99),
VALUES (2, 'Produto B', 9.99);

DELETE FROM dbo.Produtos where ProdutoID = 2;

SELECT * FROM cdc.dbo_Produtos_CT;
