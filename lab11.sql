/*1) declare @a int = 10, @b int = 15, @c  int =0
���� @c >= 0 �� ��������� ����� �����, ����� ����� ����������   
2) �������� ������ � ������� ��������, ���� �� ��������� ������� ������� � ����� ����������
3) �������� ������ � ������� �������, ���� ���� ������������� �� ���������� �������, �������� ���������� 
4) ��������� �������������� ������� �� ����������� 


declare @a int = 10, @b int = 15, @c int = 0

IF (@c >= 0)
BEGIN
    SET @c = @a + @b + @c
    PRINT 'The sum of @a and @b is: ' + CAST(@c AS VARCHAR(10))
END
ELSE
BEGIN
    ROLLBACK TRANSACTION
END


CREATE TRIGGER Famch
ON student
FOR INSERT
AS
BEGIN
    DECLARE @name NVARCHAR(50)

    SELECT @name = imya
    FROM inserted

    IF (@name IS NULL)
    BEGIN
        ROLLBACK TRANSACTION
    END
END

CREATE TRIGGER famche
ON student
FOR INSERT, UPDATE
AS
BEGIN
    IF EXISTS (SELECT * FROM inserted WHERE imya IS NULL)
    BEGIN
        ROLLBACK TRANSACTION;
        RAISERROR('No name');
    END
END
*/