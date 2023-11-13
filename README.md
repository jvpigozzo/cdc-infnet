# Change Data Capture (CDC)

#### Código fonte do exemplo prático apresentado durante a aula 'O que é CDC?' ministrada no minicurso de Engenharia de Dados do Infnet.

## Ativação do CDC

O comando USE SeuBancoDeDados; é usado para selecionar o banco de dados no qual você deseja executar comandos subsequentes. Ele muda o contexto do banco de dados atual para o especificado (substitua "SeuBancoDeDados" pelo nome real do banco de dados).

O comando EXEC sys.sp_cdc_enable_db; está relacionado ao Change Data Capture (CDC), que é uma funcionalidade do Microsoft SQL Server usada para capturar alterações nos dados de tabelas para que essas alterações possam ser rastreadas. O procedimento armazenado sys.sp_cdc_enable_db é usado para habilitar o CDC em um banco de dados específico.

``` SQL
USE SeuBancoDeDados;
EXEC sys.sp_cdc_enable_db;
```

## Criando a tabela Produtos

Utilizamos o comando CREATE TABLE para criar a tabela Produtos no banco de dados. 

```
CREATE TABLE dbo.Produtos (
    ProdutoID INT PRIMARY KEY,
    NomeProduto NVARCHAR(255),
    Preco DECIMAL(10, 2)
);
```
