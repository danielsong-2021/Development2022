CREATE TABLE [dbo].[Terminal] (
    [Id]                       UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [UserIdCreation]           UNIQUEIDENTIFIER NOT NULL,
    [UserIdUpdate]             UNIQUEIDENTIFIER NULL,
    [BrandingId]               UNIQUEIDENTIFIER NULL,
    [CreationTime]             DATETIME2 (7)    DEFAULT (getdate()) NOT NULL,
    [UpdateTime]               DATETIME2 (7)    NULL,
    [Active]                   BIT              DEFAULT ((1)) NOT NULL,
    [Name]                     NVARCHAR (200)   NOT NULL,
    [IconUrl]                  NVARCHAR (2000)  NULL,
    [AutomaticApprovalEnabled] BIT              DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_Terminal] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [Terminal_Branding] FOREIGN KEY ([BrandingId]) REFERENCES [dbo].[Branding] ([Id]),
    CONSTRAINT [Terminal_UserIdCreation] FOREIGN KEY ([UserIdCreation]) REFERENCES [dbo].[UserProfile] ([Id]),
    CONSTRAINT [Terminal_UserIdUpdate] FOREIGN KEY ([UserIdUpdate]) REFERENCES [dbo].[UserProfile] ([Id])
);










GO
CREATE NONCLUSTERED INDEX [IX_Terminal_UserIdUpdate]
    ON [dbo].[Terminal]([UserIdUpdate] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Terminal_UserIdCreation]
    ON [dbo].[Terminal]([UserIdCreation] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Terminal_BrandingId]
    ON [dbo].[Terminal]([BrandingId] ASC);

