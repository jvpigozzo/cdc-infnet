# Change Data Capture (CDC)

#### Código fonte do exemplo prático apresentado durante a aula 'O que é CDC?' ministrada no minicurso de Engenharia de Dados do Infnet.

## Installation

Para ativar o CDC no SQL Server utilize o comando abaixo e especifique o Banco de Dados:

```
USE SeuBancoDeDados;
EXEC sys.sp_cdc_enable_db;
```
