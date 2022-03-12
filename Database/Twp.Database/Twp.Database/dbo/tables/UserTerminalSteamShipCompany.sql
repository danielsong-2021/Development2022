CREATE TABLE [dbo].[UserTerminalSteamShipCompany] (
    [Id]                 UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [SteamShipCompanyId] UNIQUEIDENTIFIER NOT NULL,
    [UserTerminalId]     UNIQUEIDENTIFIER NOT NULL,
    [UserIdCreation]     UNIQUEIDENTIFIER NOT NULL,
    [UserIdUpdate]       UNIQUEIDENTIFIER NULL,
    [CreationTime]       DATETIME2 (7)    DEFAULT (getdate()) NOT NULL,
    [UpdateTime]         DATETIME2 (7)    NULL,
    [Active]             BIT              DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_UserTerminalSteamShipCompany] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [UserTerminalSteamShipCompany_SteamShipCompanyId] FOREIGN KEY ([SteamShipCompanyId]) REFERENCES [dbo].[SteamShipCompany] ([Id]),
    CONSTRAINT [UserTerminalSteamShipCompany_UserIdCreation] FOREIGN KEY ([UserIdCreation]) REFERENCES [dbo].[UserProfile] ([Id]),
    CONSTRAINT [UserTerminalSteamShipCompany_UserIdUpdate] FOREIGN KEY ([UserIdUpdate]) REFERENCES [dbo].[UserProfile] ([Id]),
    CONSTRAINT [UserTerminalSteamShipCompany_UserTerminalId] FOREIGN KEY ([UserTerminalId]) REFERENCES [dbo].[UserTerminal] ([Id])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_UserTerminalSteamShipCompany_UserTerminalId_SteamShipCompanyId]
    ON [dbo].[UserTerminalSteamShipCompany]([UserTerminalId] ASC, [SteamShipCompanyId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_UserTerminalSteamShipCompany_UserIdUpdate]
    ON [dbo].[UserTerminalSteamShipCompany]([UserIdUpdate] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_UserTerminalSteamShipCompany_UserIdCreation]
    ON [dbo].[UserTerminalSteamShipCompany]([UserIdCreation] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_UserTerminalSteamShipCompany_SteamShipCompanyId]
    ON [dbo].[UserTerminalSteamShipCompany]([SteamShipCompanyId] ASC);

