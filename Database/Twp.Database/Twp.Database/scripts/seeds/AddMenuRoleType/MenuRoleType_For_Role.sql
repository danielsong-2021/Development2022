﻿-- ADD THE MENUS AVAILABLE FOR THE ROLE 
BEGIN TRY
	BEGIN TRANSACTION ADD_MENU_ROLE_TYPE_RELATION

		DECLARE @ROLES TABLE(ROLE_ID int, ROLE_NAME VARCHAR(10));

		INSERT INTO @ROLES (ROLE_ID, ROLE_NAME) VALUES (1, 'Default');
		INSERT INTO @ROLES (ROLE_ID, ROLE_NAME) VALUES (2, 'LaborUser');
		INSERT INTO @ROLES (ROLE_ID, ROLE_NAME) VALUES (3, 'SysAdmin');
		INSERT INTO @ROLES (ROLE_ID, ROLE_NAME) VALUES (4, 'TerminalAdmin');

		DECLARE 
			@ROLE_USER UNIQUEIDENTIFIER;

		DECLARE @MENUS_TO_ADD TABLE (
			MenuId UNIQUEIDENTIFIER NOT NULL
		);

		---SET ROLE IDS
		SELECT @ROLE_USER = Id FROM RoleType WHERE Name = 'Default';

		-- GET ALL THE MISING MENUS FOR THE ROLE. FOR DEFAULT, ONLY SOME MENUS WLL BE AVAILABLE
		INSERT INTO @MENUS_TO_ADD (MenuId)
		SELECT M.Id FROM Menu M 
			WHERE M.Id NOT IN
			(
				SELECT MRT.MenuId FROM MenuRoleType MRT WITH(NOLOCK)
				WHERE MRT.RoleTypeId = @ROLE_USER			
			)
			AND M.[Key] IN ('REPORTS','HOME','ACCOUNT','TOOLS');

		-- FOR ALL MENUS NOT CREATED, INSERT
		IF EXISTS (SELECT TOP 1 1 FROM @MENUS_TO_ADD)
		BEGIN
			INSERT INTO MenuRoleType (MenuId, RoleTypeId, CreationTime)
			SELECT MenuId, @ROLE_USER, GETDATE() FROM @MENUS_TO_ADD
		END


 	COMMIT TRANSACTION ADD_MENU_ROLE_TYPE_RELATION
END TRY
BEGIN CATCH 
  IF (@@TRANCOUNT > 0)
   BEGIN
      ROLLBACK TRANSACTION ADD_MENU_ROLE_TYPE_RELATION
	  PRINT 'ERROR'
   END 
END CATCH