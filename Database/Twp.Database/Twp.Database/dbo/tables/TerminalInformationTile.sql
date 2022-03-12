CREATE TABLE [dbo].[TerminalInformationTile] (
    [Id]                            UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [TerminalId]                    UNIQUEIDENTIFIER NOT NULL,
    [TerminalInformationCategoryId] UNIQUEIDENTIFIER NOT NULL,
    [UserIdCreation]                UNIQUEIDENTIFIER NOT NULL,
    [UserIdUpdate]                  UNIQUEIDENTIFIER NULL,
    [Title]                         NVARCHAR (200)   NOT NULL,
    [StyleId]                       INT              NOT NULL,
    [EffectiveFrom]                 DATETIME2 (7)    NULL,
    [EffectiveTo]                   DATETIME2 (7)    NULL,
    [AdminOnly]                     BIT              DEFAULT ((0)) NOT NULL,
    [Content]                       NVARCHAR (MAX)   NOT NULL,
    [CreationTime]                  DATETIME2 (7)    DEFAULT (getdate()) NOT NULL,
    [UpdateTime]                    DATETIME2 (7)    NULL,          
    [Active]                        BIT              DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_TerminalInformationTile] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [TerminalInformationTile_TerminalId] FOREIGN KEY ([TerminalId]) REFERENCES [dbo].[Terminal] ([Id]),
    CONSTRAINT [TerminalInformationTile_TerminalInformationCategoryId] FOREIGN KEY ([TerminalInformationCategoryId]) REFERENCES [dbo].[TerminalInformationCategory] ([Id]),
    CONSTRAINT [TerminalInformationTile_UserIdCreation] FOREIGN KEY ([UserIdCreation]) REFERENCES [dbo].[UserProfile] ([Id]),
    CONSTRAINT [TerminalInformationTile_UserIdUpdate] FOREIGN KEY ([UserIdUpdate]) REFERENCES [dbo].[UserProfile] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_TerminalInformationTile_UserIdUpdate]
    ON [dbo].[TerminalInformationTile]([UserIdUpdate] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_TerminalInformationTile_UserIdCreation]
    ON [dbo].[TerminalInformationTile]([UserIdCreation] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_TerminalInformationTile_TerminalInformationCategoryId]
    ON [dbo].[TerminalInformationTile]([TerminalInformationCategoryId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_TerminalInformationTile_TerminalId]
    ON [dbo].[TerminalInformationTile]([TerminalId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_TerminalInformationTile_Active]
    ON [dbo].[TerminalInformationTile]([Active] ASC);

