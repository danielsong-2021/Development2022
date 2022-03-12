-- CREATE IN APP NOTIFICATION TYPES WITH THE SPECIFIC IDS
IF NOT EXISTS (SELECT TOP 1 1 FROM InAppNotificationType WHERE Id = 1 AND Name = 'UserSignUpToApprove')
BEGIN
	INSERT INTO InAppNotificationType (Id, Name, Description)
	VALUES (1, 'UserSignUpToApprove', 'Notification sent to Admin users that can approve user signup, informing that there are users to be approved');
END
GO


IF NOT EXISTS (SELECT TOP 1 1 FROM InAppNotificationType WHERE Id = 2 AND Name = 'BroadcastNotification')
BEGIN
	INSERT INTO InAppNotificationType (Id, Name, Description)
	VALUES (2, 'BroadcastNotification', 'Notification sent to users related to the broadcast email created by admin');
END
GO


IF NOT EXISTS (SELECT TOP 1 1 FROM InAppNotificationType WHERE Id = 3 AND Name = 'EnableCriticalMessageForTerminal')
BEGIN
	INSERT INTO InAppNotificationType (Id, Name, Description)
	VALUES (3, 'EnableCriticalMessageForTerminal', 'Notification sent when admin user enable critical message to be available in the header of the app for specific terminal');
END
GO


IF NOT EXISTS (SELECT TOP 1 1 FROM InAppNotificationType WHERE Id = 4 AND Name = 'DisableCriticalMessageForTerminal')
BEGIN
	INSERT INTO InAppNotificationType (Id, Name, Description)
	VALUES (4, 'DisableCriticalMessageForTerminal', 'Notification sent when admin user disable critical message to be available in the header of the app for specific terminal');
END
GO