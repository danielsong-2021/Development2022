-- INSERT PasswordRecovery SMS message template
IF NOT EXISTS (SELECT TOP 1 1 FROM SmsTemplate WHERE SmsType = 'BroadcastNotification' AND Active = 1)
BEGIN
	INSERT INTO SmsTemplate (SmsType, [Message])
	VALUES
	(
		'BroadcastNotification',
		N'You have a Broadcast Message from {{##TERMINAL_NAME_0001##}}. Please click on this link to view: {{##LINK##}}'
	)
END