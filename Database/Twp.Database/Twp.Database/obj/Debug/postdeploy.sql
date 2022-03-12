/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

-- CREATE ROLE TYPES WITH THE SPECIFIC IDS
IF NOT EXISTS (SELECT TOP 1 1 FROM RoleType WHERE InternalId = 1 AND Name = 'Default')
BEGIN
	INSERT INTO RoleType (InternalId, Name, Description)
	VALUES (1, 'Default', 'Default role applied to every user in the signup process');
END
GO

IF NOT EXISTS (SELECT TOP 1 1 FROM RoleType WHERE InternalId = 2 AND Name = 'SysAdmin')
BEGIN
	INSERT INTO RoleType (InternalId, Name, Description)
	VALUES (2, 'SysAdmin', 'System administrator, higher level of administration');
END
GO

IF NOT EXISTS (SELECT TOP 1 1 FROM RoleType WHERE InternalId = 3 AND Name = 'TerminalAdmin')
BEGIN
	INSERT INTO RoleType (InternalId, Name, Description)
	VALUES (3, 'TerminalAdmin', 'Administration at the terminal level');
END
GO

IF NOT EXISTS (SELECT TOP 1 1 FROM RoleType WHERE InternalId = 4 AND Name = 'LaborUser')
BEGIN
	INSERT INTO RoleType (InternalId, Name, Description)
	VALUES (4, 'LaborUser', 'These users provide the bare minimum amount of support at the terminal. They have limited access to manage appointment limits and appointment reporting.');
END
GO
