-- CREATE REASONS FOR DENY USER SIGNUP
IF NOT EXISTS (SELECT TOP 1 1 FROM UserSignUpReasonDeny WHERE Name = 'Invalid data')
BEGIN
	INSERT INTO UserSignUpReasonDeny (Name, Description)
	VALUES ('Invalid data', 'Invalid data');
END
GO

IF NOT EXISTS (SELECT TOP 1 1 FROM UserSignUpReasonDeny WHERE Name = 'Invalid company information')
BEGIN
	INSERT INTO UserSignUpReasonDeny (Name, Description)
	VALUES ('Invalid company information', 'Invalid company information');
END
GO

IF NOT EXISTS (SELECT TOP 1 1 FROM UserSignUpReasonDeny WHERE Name = 'Need more information')
BEGIN
	INSERT INTO UserSignUpReasonDeny (Name, Description)
	VALUES ('Need more information', 'InvalidNeed more information');
END
GO

IF NOT EXISTS (SELECT TOP 1 1 FROM UserSignUpReasonDeny WHERE Name = 'Pending - CODE 0001')
BEGIN
	INSERT INTO UserSignUpReasonDeny (Name, Description)
	VALUES ('Pending - CODE 0001', 'See description for CODE 0001');
END
GO