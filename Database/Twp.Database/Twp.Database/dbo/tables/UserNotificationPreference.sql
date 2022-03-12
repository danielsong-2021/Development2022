CREATE TABLE [dbo].[UserNotificationPreference] (
    [Id]                 UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [UserId]             UNIQUEIDENTIFIER NOT NULL,
    [UserIdCreation]     UNIQUEIDENTIFIER NOT NULL,
    [NotificationTypeId] INT              NOT NULL,
    [CreationTime]       DATETIME2 (7)    DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_UserNotificationPreference] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [UserNotificationPreference_NotificationTypeId] FOREIGN KEY ([NotificationTypeId]) REFERENCES [dbo].[NotificationType] ([Id]),
    CONSTRAINT [UserNotificationPreference_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[UserProfile] ([Id]),
    CONSTRAINT [UserNotificationPreference_UserIdCreation] FOREIGN KEY ([UserIdCreation]) REFERENCES [dbo].[UserProfile] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_UserNotificationPreference_UserIdCreation]
    ON [dbo].[UserNotificationPreference]([UserIdCreation] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_UserNotificationPreference_UserId]
    ON [dbo].[UserNotificationPreference]([UserId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_UserNotificationPreference_NotificationTypeId]
    ON [dbo].[UserNotificationPreference]([NotificationTypeId] ASC);

