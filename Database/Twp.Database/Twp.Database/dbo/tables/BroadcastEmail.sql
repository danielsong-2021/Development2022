CREATE TABLE [dbo].[BroadcastEmail] (
    [Id]                       UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [TerminalId]               UNIQUEIDENTIFIER NOT NULL,
    [UserIdCreation]           UNIQUEIDENTIFIER NOT NULL,
    [Subject]                  NVARCHAR (2000)  NOT NULL,
    [Message]                  NVARCHAR (MAX)   NOT NULL,
    [HtmlEmailTemplate]        NVARCHAR (MAX)   NOT NULL,
    [CreationTime]             DATETIME2 (7)    DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_BroadcastEmail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [BroadcastEmail_TerminalId] FOREIGN KEY ([TerminalId]) REFERENCES [dbo].[Terminal] ([Id]),
    CONSTRAINT [BroadcastEmail_UserIdCreation] FOREIGN KEY ([UserIdCreation]) REFERENCES [dbo].[UserProfile] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_BroadcastEmail_UserIdCreation]
    ON [dbo].[BroadcastEmail]([UserIdCreation] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_BroadcastEmail_TerminalId]
    ON [dbo].[BroadcastEmail]([TerminalId] ASC);

