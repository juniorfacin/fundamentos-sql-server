SELECT TOP 10
    [Id], [Nome]
FROM
    [Curso]

-- Apenas para testar o DISTINCT
INSERT INTO [Categoria]([Nome]) VALUES('Backend')

SELECT DISTINCT TOP 10
    [Nome]
FROM
    [Categoria]

