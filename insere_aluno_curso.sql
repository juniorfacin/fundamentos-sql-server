SELECT * FROM [Course]
SELECT * FROM [Student]
SELECT * FROM [StudentCourse]

INSERT INTO
    [Student]
VALUES (
    '7a4d80ef-7130-4d9a-8597-9a9cdb6d32f6',
    'Andre Baltieri',
    'hello@balta.io',
    '12345678901',
    '12345678',
    '1994-01-01',
    GETDATE()
)

INSERT INTO 
    [StudentCourse]
VALUES (
    '5f5a33f8-4ff3-7e10-cc6e-3fa000000000',
    '7a4d80ef-7130-4d9a-8597-9a9cdb6d32f6',
    50,
    0,
    '2020-01-13 12:35:54',
    GETDATE()
)