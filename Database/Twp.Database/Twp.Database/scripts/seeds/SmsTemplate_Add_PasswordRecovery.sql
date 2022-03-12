-- INSERT PasswordRecovery SMS message template
IF NOT EXISTS (SELECT TOP 1 1 FROM SmsTemplate WHERE SmsType = 'PasswordRecovery' AND Active = 1)
BEGIN
	INSERT INTO SmsTemplate (SmsType, [Message])
	VALUES
	(
		'PasswordRecovery',
		N'Sent from TOS Web Portal. {{##USER_FULL_NAME##}} here it is your reset password link {{##LINK##}}. It is valid only for {{##LINK_EXPIRATION##}} minutes.'
	)
END