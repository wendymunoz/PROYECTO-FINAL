﻿/*
Script de implementación para C:\USERS\USUARIO\DOCUMENTS\GITHUB\PROYECTO-FINAL\PROYECTOMULTI\PROYECTOMULTI\APP_DATA\THEGREENHOME.MDF

Una herramienta generó este código.
Los cambios realizados en este archivo podrían generar un comportamiento incorrecto y se perderán si
se vuelve a generar el código.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "C:\USERS\USUARIO\DOCUMENTS\GITHUB\PROYECTO-FINAL\PROYECTOMULTI\PROYECTOMULTI\APP_DATA\THEGREENHOME.MDF"
:setvar DefaultFilePrefix "C_\USERS\USUARIO\DOCUMENTS\GITHUB\PROYECTO-FINAL\PROYECTOMULTI\PROYECTOMULTI\APP_DATA\THEGREENHOME.MDF_"
:setvar DefaultDataPath "C:\Users\USUARIO\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\"
:setvar DefaultLogPath "C:\Users\USUARIO\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\"

GO
:on error exit
GO
/*
Detectar el modo SQLCMD y deshabilitar la ejecución del script si no se admite el modo SQLCMD.
Para volver a habilitar el script después de habilitar el modo SQLCMD, ejecute lo siguiente:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'El modo SQLCMD debe estar habilitado para ejecutar correctamente este script.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO

IF (SELECT OBJECT_ID('tempdb..#tmpErrors')) IS NOT NULL DROP TABLE #tmpErrors
GO
CREATE TABLE #tmpErrors (Error int)
GO
SET XACT_ABORT ON
GO
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
GO
BEGIN TRANSACTION
GO
PRINT N'Creando [dbo].[Usuarios]...';


GO
CREATE TABLE [dbo].[Usuarios] (
    [DNI]        VARCHAR (MAX) NOT NULL,
    [Nombre]     VARCHAR (MAX) NOT NULL,
    [Apellido]   VARCHAR (MAX) NOT NULL,
    [Correo]     VARCHAR (MAX) NOT NULL,
    [Contrasena] VARCHAR (MAX) NOT NULL,
    [Direccion]  VARCHAR (MAX) NOT NULL,
    [Telefono]   VARCHAR (MAX) NOT NULL,
    PRIMARY KEY CLUSTERED ([DNI])
);


GO
IF @@ERROR <> 0
   AND @@TRANCOUNT > 0
    BEGIN
        ROLLBACK;
    END

IF @@TRANCOUNT = 0
    BEGIN
        INSERT  INTO #tmpErrors (Error)
        VALUES                 (1);
        BEGIN TRANSACTION;
    END


GO

IF EXISTS (SELECT * FROM #tmpErrors) ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT>0 BEGIN
PRINT N'La parte de transacción de la actualización de la base de datos se realizó correctamente.'
COMMIT TRANSACTION
END
ELSE PRINT N'Error de la parte de transacción de la actualización de la base de datos.'
GO
DROP TABLE #tmpErrors
GO
PRINT N'Actualización completada.';


GO
