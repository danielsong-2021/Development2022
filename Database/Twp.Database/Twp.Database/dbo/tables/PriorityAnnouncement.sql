CREATE TABLE [dbo].[PriorityAnnouncement] (
    [Id]             UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [TerminalId]     UNIQUEIDENTIFIER NOT NULL,
    [UserIdCreation] UNIQUEIDENTIFIER NOT NULL,
    [UserIdUpdate]   UNIQUEIDENTIFIER NULL,
    [CreationTime]   DATETIME2 (7)    DEFAULT (getdate()) NOT NULL,
    [UpdateTime]     DATETIME2 (7)    NULL,
    [Message]        NVARCHAR (MAX)   NOT NULL,
    [Order]          INT              DEFAULT ((0)) NOT NULL,
    [IsCritical]     BIT              DEFAULT ((0)) NOT NULL,
    [Enabled]        BIT              NULL,
    CONSTRAINT [PK_PriorityAnnouncement] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [PriorityAnnouncement_TerminalId] FOREIGN KEY ([TerminalId]) REFERENCES [dbo].[Terminal] ([Id]),
    CONSTRAINT [PriorityAnnouncement_UserIdCreation] FOREIGN KEY ([UserIdCreation]) REFERENCES [dbo].[UserProfile] ([Id]),
    CONSTRAINT [PriorityAnnouncement_UserIdUpdate] FOREIGN KEY ([UserIdUpdate]) REFERENCES [dbo].[UserProfile] ([Id])
);










GO
CREATE NONCLUSTERED INDEX [IX_PriorityAnnouncement_UserIdUpdate]
    ON [dbo].[PriorityAnnouncement]([UserIdUpdate] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_PriorityAnnouncement_UserIdCreation]
    ON [dbo].[PriorityAnnouncement]([UserIdCreation] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_PriorityAnnouncement_TerminalId]
    ON [dbo].[PriorityAnnouncement]([TerminalId] ASC);

