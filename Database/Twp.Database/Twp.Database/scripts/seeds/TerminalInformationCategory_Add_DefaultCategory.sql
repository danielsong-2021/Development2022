-- INSERT Default category in TerminalInformationCategory
IF NOT EXISTS (SELECT TOP 1 1 FROM TerminalInformationCategory WHERE [Name] = 'Default' AND Active = 1 AND TerminalId IS NULL)
BEGIN
	INSERT INTO TerminalInformationCategory ([Name], [TerminalId])
	VALUES
	(
		'Default',
		NULL
	)
END