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
:r .\Seeds\EmailTemplate_Add_BroadcastNotification.sql
:r .\Seeds\EmailTemplate_By_StorageAccount_Urls.sql
:r .\Seeds\InAppNotificationTypes.sql
:r .\Seeds\Menus.sql
:r .\Seeds\NotificationTypes.sql
:r .\Seeds\RoleTypes.sql
:r .\Seeds\SmsTemplate_Add_BroadcastNotification.sql
:r .\Seeds\SmsTemplate_Add_PasswordRecovery.sql
:r .\Seeds\StateProvince.sql
:r .\Seeds\TerminalInformationCategory_Add_DefaultCategory.sql
:r .\Seeds\UserSignUpReasonDeny.sql