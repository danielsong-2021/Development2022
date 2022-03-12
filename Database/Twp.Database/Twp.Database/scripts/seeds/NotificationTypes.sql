-- CREATE NOTIFICATION TYPES WITH THE SPECIFIC IDS
IF NOT EXISTS (SELECT TOP 1 1 FROM NotificationType WHERE Id = 1 AND Name = 'Email')
BEGIN
	INSERT INTO NotificationType (Id, Name, Description)
	VALUES (1, 'Email', 'Email notification');
END
GO


IF NOT EXISTS (SELECT TOP 1 1 FROM NotificationType WHERE Id = 2 AND Name = 'Sms')
BEGIN
	INSERT INTO NotificationType (Id, Name, Description)
	VALUES (2, 'Sms', 'Sms notification');
END
GO


IF NOT EXISTS (SELECT TOP 1 1 FROM NotificationType WHERE Id = 3 AND Name = 'InApp')
BEGIN
	INSERT INTO NotificationType (Id, Name, Description)
	VALUES (3, 'InApp', 'In App notification');
END
GO