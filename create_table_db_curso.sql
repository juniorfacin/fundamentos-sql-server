USE [Curso]

CREATE DATABASE [Curso]
 
--  Criar uma Tabela
DROP TABLE [Aluno]

 CREATE TABLE[Aluno] (
    [Id] INT,
    [Nome] VARCHAR(80),
    [Nascimento] DATETIME,
    [Active] BIT
 )

 GO

--  Alterar a Tabela e Adicionar um novo campo
ALTER TABLE [Aluno]
   ADD [Document] NVARCHAR(11)

--  Deletar uma Coluna
ALTER TABLE [Aluno]
   DROP COLUMN [Document]

-- Alterar o tipo de uma coluna/tabela
ALTER TABLE [Aluno]
   ALTER COLUMN [Document] CHAR(11)

-- Constraints Not Null e UNIQUE
CREATE TABLE [Aluno] (
   [Id] INT NOT NULL IDENTITY(1, 1),
   [Nome] VARCHAR(80),
   [Email] NVARCHAR(100) NOT NULL,
   [Nascimento] DATETIME NULL,
   [Active] BIT DEFAULT(0)

   -- Construcao de PK, podemos criar PK Compostas
   CONSTRAINT [PK_Aluno] PRIMARY KEY([Id]),
   CONSTRAINT [UQ_Aluno_Email] UNIQUE([Email]),
)
GO


CREATE TABLE [Curso] (
   [Id] INT NOT NULL,
   [Nome] NVARCHAR(80) NOT NULL

   CONSTRAINT [PK_Curso] PRIMARY KEY([Id])
)
GO

-- Tabela Associativa
DROP TABLE [ProgressoCurso]

CREATE TABLE [ProgressoCurso] (
   [AlunoId] INT NOT NULL,
   [CursoId] INT NOT NULL,
   [Progresso] INT NOT NULL,
   [UltimaAtualizacao] DATETIME NOT NULL DEFAULT(GETDATE())

   CONSTRAINT [PK_PogressoCurso] PRIMARY KEY([AlunoId], [CursoId])
)
GO

-- Trabalhando com Foreign Key (FK)
CREATE TABLE [Curso] (
   [Id] INT NOT NULL,
   [Nome] VARCHAR(80) NOT NULL,
   [CategoriaId] INT NOT NULL

   CONSTRAINT [PK_Curso] PRIMARY KEY([Id])
   CONSTRAINT [FK_Curso_Categoria] FOREIGN KEY([CategoriaId])
      REFERENCES[Categoria]([Id])
)
GO

CREATE TABLE [Categoria] (
   [Id] INT NOT NULL,
   [Nome] VARCHAR(80) NOT NULL

   CONSTRAINT [PK_Categoria] PRIMARY KEY([Id])
)
GO

DROP TABLE [Curso]
DROP TABLE [Categoria]

-- Trabalhando com index
CREATE INDEX [IX_Aluno_Email] ON [Aluno]([Email])
DROP INDEX [IX_Aluno_Email] ON [Aluno]




 