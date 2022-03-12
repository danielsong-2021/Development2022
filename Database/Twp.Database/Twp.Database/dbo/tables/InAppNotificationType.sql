CREATE TABLE [dbo].[InAppNotificationType] (
    [Id]          INT            NOT NULL,
    [Name]        NVARCHAR (50)  NOT NULL,
    [Description] NVARCHAR (200) NOT NULL,
    CONSTRAINT [PK_InAppNotificationType] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_InAppNotification_Name]
    ON [dbo].[InAppNotificationType]([Name] ASC);

