﻿-- ADD THE MENUS AVAILABLE FOR THE ROLE 'TerminalAdmin'
BEGIN TRY
	BEGIN TRANSACTION ADD_PERMISSIONS_ROLE_TYPE

		DECLARE 
			@ROLE_TERMINAL_ADMIN UNIQUEIDENTIFIER;

		DECLARE @TERMINAL_ADMIN_PERMISSIONS_TO_ADD TABLE (
			PermissionId UNIQUEIDENTIFIER NOT NULL,
			ValueToUse NVARCHAR(1) NOT NULL
		);

		---SET ROLE IDS
		SELECT @ROLE_TERMINAL_ADMIN = Id FROM RoleType WHERE Name = 'TerminalAdmin';

		-- GET ALL THE MISING PERMISSIONS FOR THE ROLE.
		INSERT INTO @TERMINAL_ADMIN_PERMISSIONS_TO_ADD (PermissionId, ValueToUse)
		SELECT 
			P.Id,
			CASE 
				WHEN P.[Key] = 'TERMINAL_TILES' THEN 'F' 
				WHEN P.[Key] = 'ADMIN_ONLY' THEN 'F' 
			END
			FROM Permission P 
			WHERE P.Id NOT IN
			(
				SELECT RTP.PermissionId FROM RoleTypePermission RTP WITH(NOLOCK)
				WHERE RTP.RoleTypeId = @ROLE_TERMINAL_ADMIN			
			)
			AND P.[Key] IN ('TERMINAL_TILES','ADMIN_ONLY');

		-- FOR ALL PERMISSIONS NOT CREATED, INSERT
		IF EXISTS (SELECT TOP 1 1 FROM @TERMINAL_ADMIN_PERMISSIONS_TO_ADD)
		BEGIN
			INSERT INTO RoleTypePermission (PermissionId, RoleTypeId, [Value])
			SELECT PermissionId, @ROLE_TERMINAL_ADMIN, ValueToUse FROM @TERMINAL_ADMIN_PERMISSIONS_TO_ADD
		END


 	COMMIT TRANSACTION ADD_PERMISSIONS_ROLE_TYPE
END TRY
BEGIN CATCH 
  IF (@@TRANCOUNT > 0)
   BEGIN
      ROLLBACK TRANSACTION ADD_PERMISSIONS_ROLE_TYPE
	  PRINT 'ERROR'
   END 
END CATCH