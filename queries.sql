SELECT TOP 100
    [Id], [Nome], [CategoriaId]
FROM
    [Curso]
-- WHERE
--     [CategoriaId] = 1 AND -- OR 
--     [Id = 1] -- IS NOT NULL, NOT NULL
ORDER BY
    [Nome] DESC -- ou podemos usar ASC - Ascendente