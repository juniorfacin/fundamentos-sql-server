CREATE OR ALTER VIEW vwCareer AS
    SELECT
        [Career].[Id],
        [Career].[Title],
        [Career].[Url],
        -- Contagem dos CarrerItens
        -- Maneira com menos performance
        -- (SELECT COUNT([CareerId]) FROM [CareerItem] WHERE [CareerId]= [Id]) AS [Courses]

        -- Maneira mais performatica
            COUNT([Id]) AS [Courses]
    
    FROM
        [Career]
        INNER JOIN [CareerItem] ON [CareerItem].[CareerId] = [Career].[Id]

    GROUP BY
        [Career].[Id],
        [Career].[Title],
        [Career].[Url]