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
:r .\Seeds\BusinessTypes.sql
:r .\Seeds\Country.sql
:r .\Seeds\EmailTemplates\EmailTemplate_Add_AdminNotificationToApproveUsers.sql
:r .\Seeds\EmailTemplates\EmailTemplate_Add_BroadcastNotification.sql
:r .\Seeds\EmailTemplates\EmailTemplate_Add_PasswordRecovery.sql
:r .\Seeds\EmailTemplates\EmailTemplate_Add_UserSignUpApprovedByAdmin.sql
:r .\Seeds\EmailTemplates\EmailTemplate_Add_UserSignUpAutomaticApproved.sql
:r .\Seeds\EmailTemplates\EmailTemplate_Add_UserSignUpNeedAdminApproval.sql
:r .\Seeds\EmailTemplates\EmailTemplate_Add_UserSignUpNotApprovedByAdmin.sql
:r .\Seeds\InAppNotificationTypes.sql
:r .\Seeds\Menus.sql
:r .\Seeds\NotificationTypes.sql
:r .\Seeds\RoleTypes.sql
:r .\Seeds\SmsTemplate_Add_BroadcastNotification.sql
:r .\Seeds\SmsTemplate_Add_PasswordRecovery.sql
:r .\Seeds\StateProvince.sql
:r .\Seeds\TerminalInformationCategory_Add_DefaultCategory.sql
:r .\Seeds\UserSignUpReasonDeny.sql
:r .\Seeds\AddMenuRoleType\MenuRoleType_For_Role_DefaultUser.sql
:r .\Seeds\AddMenuRoleType\MenuRoleType_For_Role_LaborUser.sql
:r .\Seeds\AddMenuRoleType\MenuRoleType_For_Role_SysAdmin.sql
:r .\Seeds\AddMenuRoleType\MenuRoleType_For_Role_TerminalAdmin.sql
:r .\Seeds\AddPermissions\001_AddPermissionsIds\Add_Terminal_Announcements_Tiles_Permissions.sql
:r .\Seeds\AddPermissions\002_AddRoleTypePermissions\001_Terminal_Announcements_Tiles\Add_Permissions_DefaultUser.sql
:r .\Seeds\AddPermissions\002_AddRoleTypePermissions\001_Terminal_Announcements_Tiles\Add_Permissions_LaborUser.sql
:r .\Seeds\AddPermissions\002_AddRoleTypePermissions\001_Terminal_Announcements_Tiles\Add_Permissions_SysAdmin.sql
:r .\Seeds\AddPermissions\002_AddRoleTypePermissions\001_Terminal_Announcements_Tiles\Add_Permissions_TerminalAdmin.sql