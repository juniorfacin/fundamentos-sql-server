CREATE OR ALTER PROCEDURE spStudentProgress (
    @StudentId UNIQUEIDENTIFIER
)
AS

    --  '7a4d80ef-7130-4d9a-8597-9a9cdb6d32f6'

    SELECT
        [Student].[Name],
        [Course].[Title] AS [Course],
        [StudentCourse].[Progress],
        [StudentCourse].[LastUpdateDate]
    FROM
        [StudentCourse]
        INNER JOIN [Student] ON [StudentCourse].[StudentId] = [Student].[Id]
        INNER JOIN [Course] ON [StudentCourse].[CourseId] = [Course].[Id]
    WHERE
        [StudentCourse].[StudentId] = @StudentId
        AND [StudentCourse].[Progress] < 100
        AND [StudentCourse].[Progress] > 0
    ORDER BY
        [StudentCourse].[LastUpdateDate] DESC


EXEC spStudentProgress '7a4d80ef-7130-4d9a-8597-9a9cdb6d32f6'


