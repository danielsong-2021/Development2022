CREATE TABLE [dbo].[SteamShipCompany] (
    [Id]             UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [TerminalId]     UNIQUEIDENTIFIER NOT NULL,
    [UserIdCreation] UNIQUEIDENTIFIER NOT NULL,
    [UserIdUpdate]   UNIQUEIDENTIFIER NULL,
    [CreationTime]   DATETIME2 (7)    DEFAULT (getdate()) NOT NULL,
    [UpdateTime]     DATETIME2 (7)    NULL,
    [Active]         BIT              DEFAULT ((1)) NOT NULL,
    [Name]           NVARCHAR (200)   NOT NULL,
    [PartnerCode]    NVARCHAR (20)    NOT NULL,
    [IconUrl]        NVARCHAR (2000)  NULL,
    CONSTRAINT [PK_SteamShipCompany] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [SteamShipCompany_TerminalId] FOREIGN KEY ([TerminalId]) REFERENCES [dbo].[Terminal] ([Id]),
    CONSTRAINT [SteamShipCompany_UserIdCreation] FOREIGN KEY ([UserIdCreation]) REFERENCES [dbo].[UserProfile] ([Id]),
    CONSTRAINT [SteamShipCompany_UserIdUpdate] FOREIGN KEY ([UserIdUpdate]) REFERENCES [dbo].[UserProfile] ([Id])
);








GO
CREATE NONCLUSTERED INDEX [IX_SteamShipCompany_UserIdUpdate]
    ON [dbo].[SteamShipCompany]([UserIdUpdate] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_SteamShipCompany_UserIdCreation]
    ON [dbo].[SteamShipCompany]([UserIdCreation] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_SteamShipCompany_TerminalId]
    ON [dbo].[SteamShipCompany]([TerminalId] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_SteamShipCompany_PartnerCode_TerminalId]
    ON [dbo].[SteamShipCompany]([PartnerCode] ASC, [TerminalId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_SteamShipCompany_Active]
    ON [dbo].[SteamShipCompany]([Active] ASC);

