----------------------------------------------------
GO
CREATE OR ALTER PROCEDURE CREATE_TAMAGOCHI
    (@userid int
        @tamagochiName varchar(30))

AS
BEGIN

    INSERT INTO Tamagochi
    VALUES(@userid, tamagochiName, 1, 70, 70, 70, 70)
----id auto-incrémenté, nom, niveau, les 4 stats eat drink sleep enjoy

END

--------------------------------------------------------
GO
CREATE OR ALTER PROCEDURE EAT
    (
    @id int)

AS
BEGIN

    INSERT INTO Actions
    VALUES(NOW(), 'Eat', idtamagochi)
--- Action = Eat, Drink, Sleep, Enjoy |  --Now() = fonction qui retourne la date et heure d'aujourd'hui

END

---------------------------------------------------------
GO
CREATE PROCEDURE DRINK
    (
    @idtamagochi int)

AS
BEGIN

    INSERT INTO Actions
    VALUES(NOW(), 'Drink', idtamagochi)
--Now() = fonction qui retourne la date et heure d'aujourd'hui

END

-------------------------------------------------------
GO
CREATE PROCEDURE BEDTIME
    (
    @idtamagochi int)

AS
BEGIN

    INSERT INTO Actions
    VALUES(NOW(), 'Sleep', @idtamagochi)
--Now() = fonction qui retourne la date et heure d'aujourd'hui

END

-------------------------------------------------------
GO
CREATE PROCEDURE ENJOY
    (
    @id int)

AS
BEGIN

    INSERT INTO Actions
    VALUES(NOW(), 'Enjoy', @id) --id = id du tamagochi
--Now() = fonction qui retourne la date et heure d'aujourd'hui

END

------------------------------------------------------------
GO
CREATE FUNCTION LEVEL(@id integer) RETURNS integer 

AS BEGIN

    SELECT niveau
    FROM Tamagochi
    WHERE Tamagochi.tamagochId = @id

END