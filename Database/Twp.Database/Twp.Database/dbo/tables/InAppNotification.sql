CREATE TABLE [dbo].[InAppNotification] (
    [Id]                      UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [TerminalId]              UNIQUEIDENTIFIER NULL,
    [UserId]                  UNIQUEIDENTIFIER NOT NULL,
    [InAppNotificationTypeId] INT              NOT NULL,
    [Message]                 NVARCHAR (MAX)   NULL,
    [Viewed]                  BIT              DEFAULT ((0)) NOT NULL,
    [CreationTime]    DATETIME2 (7)    DEFAULT (getdate()) NOT NULL,
    [UpdateTime]      DATETIME2 (7)    NULL,
    CONSTRAINT [PK_InAppNotification] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [InAppNotification_InAppNotificationTypeId] FOREIGN KEY ([InAppNotificationTypeId]) REFERENCES [dbo].[InAppNotificationType] ([Id]),
    CONSTRAINT [InAppNotification_TerminalId] FOREIGN KEY ([TerminalId]) REFERENCES [dbo].[Terminal] ([Id]),
    CONSTRAINT [InAppNotification_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[UserProfile] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_InAppNotification_Viewed]
    ON [dbo].[InAppNotification]([Viewed] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_InAppNotification_UserId]
    ON [dbo].[InAppNotification]([UserId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_InAppNotification_TerminalId]
    ON [dbo].[InAppNotification]([TerminalId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_InAppNotification_InAppNotificationTypeId]
    ON [dbo].[InAppNotification]([InAppNotificationTypeId] ASC);

