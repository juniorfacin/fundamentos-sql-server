INSERT INTO [Categoria]([Nome]) VALUES('Backend')
INSERT INTO [Categoria]([Nome]) VALUES('Frontend')
INSERT INTO [Categoria]([Nome]) VALUES('Mobile')

INSERT INTO [Curso]([Nome], [CategoriaId]) VALUES('Fundamentos de C#', 1)
INSERT INTO [Curso]([Nome], [CategoriaId]) VALUES('Fundamentos de OOP', 2)
INSERT INTO [Curso]([Nome], [CategoriaId]) VALUES('Angular', 2)
INSERT INTO [Curso]([Nome], [CategoriaId]) VALUES('Flutter', 3)

-- Forma mais curta de inserir, os valores seguem a ordem de colunas
INSERT INTO [Curso] VALUES('Flutter e SQLite', 3)
