SELECT TOP 100
    COUNT([Id])
FROM
    [Curso]

SELECT TOP 100 
    AVG([Id])
    -- MIN
    -- MAX
    -- COUNT
FROM 
    [Curso]

-- Uso do LIKE - valor com '%valor%' significa que contém
SELECT TOP 100 
    *
FROM 
    [Curso]
WHERE
    [Nome] LIKE '%Fundamentos%'

-- Uso do IN (esperar um array de valor)
SELECT TOP 100 
    *
FROM 
    [Curso]
WHERE
    -- [Id] IN (1, 3)
    -- [Id] IN (SELECT [Id] FROM [Categoria])
    [Id] BETWEEN 1 AND 4

-- Trabalhar com ALIAS(Apelidos)
SELECT TOP 100
    COUNT([Id]) AS [Total]
FROM
    [Curso]

-- JOIN
SELECT TOP 100
    [Curso].[Id],
    [Curso].[Nome],
    [Categoria].[Id] AS [Categoria],
    [Categoria].[Nome]
FROM
    [Curso]
    INNER JOIN [Categoria] 
        ON [Curso].[CategoriaId] = [Categoria].[Id]

-- LEFT JOIN
SELECT TOP 100
    [Curso].[Id],
    [Curso].[Nome],
    [Categoria].[Id] AS [Categoria],
    [Categoria].[Nome]
FROM
    [Curso]
    -- LEFT JOIN [Categoria]
    -- RIGHT JOIN [Categoria]
    FULL OUTER JOIN [Categoria]
        ON [Curso].[CategoriaId] = [Categoria].[Id]

