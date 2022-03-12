-- CREATE BUSINESS TYPES WITH THE SPECIFIC IDS
IF NOT EXISTS (SELECT TOP 1 1 FROM BusinessType WHERE Id = 100 AND Name = 'Terminal')
BEGIN
	INSERT INTO BusinessType (Id, Name, Description)
	VALUES (100, 'Terminal', 'Terminal');
END
GO

IF NOT EXISTS (SELECT TOP 1 1 FROM BusinessType WHERE Id = 101 AND Name = 'SteamShipCompany')
BEGIN
	INSERT INTO BusinessType (Id, Name, Description)
	VALUES (101, 'SteamShipCompany', 'SteamShip Company, Shipping Line/SSCO');
END
GO

IF NOT EXISTS (SELECT TOP 1 1 FROM BusinessType WHERE Id = 102 AND Name = 'Consignee')
BEGIN
	INSERT INTO BusinessType (Id, Name, Description)
	VALUES (102, 'Consignee', 'Consignee');
END
GO

IF NOT EXISTS (SELECT TOP 1 1 FROM BusinessType WHERE Id = 103 AND Name = 'Agency')
BEGIN
	INSERT INTO BusinessType (Id, Name, Description)
	VALUES (103, 'Agency', 'Agency');
END
GO

IF NOT EXISTS (SELECT TOP 1 1 FROM BusinessType WHERE Id = 104 AND Name = 'Broker')
BEGIN
	INSERT INTO BusinessType (Id, Name, Description)
	VALUES (104, 'Broker', 'Broker');
END
GO

IF NOT EXISTS (SELECT TOP 1 1 FROM BusinessType WHERE Id = 105 AND Name = 'FreightForwarder')
BEGIN
	INSERT INTO BusinessType (Id, Name, Description)
	VALUES (105, 'FreightForwarder', 'Freight Forwarder');
END
GO

IF NOT EXISTS (SELECT TOP 1 1 FROM BusinessType WHERE Id = 106 AND Name = 'Shipper')
BEGIN
	INSERT INTO BusinessType (Id, Name, Description)
	VALUES (106, 'Shipper', 'Shipper');
END
GO

IF NOT EXISTS (SELECT TOP 1 1 FROM BusinessType WHERE Id = 107 AND Name = 'TruckingCompany')
BEGIN
	INSERT INTO BusinessType (Id, Name, Description)
	VALUES (107, 'TruckingCompany', 'Trucking Company');
END
GO

IF NOT EXISTS (SELECT TOP 1 1 FROM BusinessType WHERE Id = 108 AND Name = 'Trucker')
BEGIN
	INSERT INTO BusinessType (Id, Name, Description)
	VALUES (108, 'Trucker', 'Trucker');
END
GO

IF NOT EXISTS (SELECT TOP 1 1 FROM BusinessType WHERE Id = 110 AND Name = 'Other')
BEGIN
	INSERT INTO BusinessType (Id, Name, Description)
	VALUES (110, 'Other', 'Other');
END
GO

IF NOT EXISTS (SELECT TOP 1 1 FROM BusinessType WHERE Id = 201 AND Name = 'OfficeWorker')
BEGIN
	INSERT INTO BusinessType (Id, Name, Description)
	VALUES (201, 'OfficeWorker', 'Office Worker / Appt Status Viewer');
END
GO