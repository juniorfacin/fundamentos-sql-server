SELECT * FROM [Categoria], [Curso]

-- -- Cuidado ao usar essa sintaxe, serve papra poucos dados
-- BEGIN TRANSACTION
--     UPDATE
--         [Categoria]
--     SET
--         [Nome] = 'Fullstack'
--     WHERE
--         [Id] = 4
-- ROLLBACK

DELETE FROM 
    [Categoria]
WHERE 
    [Id] = 4

BEGIN TRANSACTION
    DELETE FROM
        [Curso]
    WHERE
        [CategoriaId] = 3

    DELETE FROM
        [Categoria]
    WHERE
        [Id] = 3
ROLLBACK

