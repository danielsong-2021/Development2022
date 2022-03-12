CREATE TABLE [dbo].[UserTerminal] (
    [Id]             UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [TerminalId]     UNIQUEIDENTIFIER NOT NULL,
    [UserId]         UNIQUEIDENTIFIER NOT NULL,
    [UserIdCreation] UNIQUEIDENTIFIER NOT NULL,
    [UserIdUpdate]   UNIQUEIDENTIFIER NULL,
    [CreationTime]   DATETIME2 (7)    DEFAULT (getdate()) NOT NULL,
    [UpdateTime]     DATETIME2 (7)    NULL,
    [Active]         BIT              DEFAULT ((1)) NOT NULL,
    [Approved]       BIT              NOT NULL,
    [IsFromSignUp]   BIT              DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_UserTerminal] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [UserTerminal_TerminalId] FOREIGN KEY ([TerminalId]) REFERENCES [dbo].[Terminal] ([Id]),
    CONSTRAINT [UserTerminal_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[UserProfile] ([Id]),
    CONSTRAINT [UserTerminal_UserIdCreation] FOREIGN KEY ([UserIdCreation]) REFERENCES [dbo].[UserProfile] ([Id]),
    CONSTRAINT [UserTerminal_UserIdUpdate] FOREIGN KEY ([UserIdUpdate]) REFERENCES [dbo].[UserProfile] ([Id])
);








GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_UserTerminalModel_UserId_TerminalId]
    ON [dbo].[UserTerminal]([UserId] ASC, [TerminalId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_UserTerminal_TerminalId]
    ON [dbo].[UserTerminal]([TerminalId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_UserTerminal_UserIdUpdate]
    ON [dbo].[UserTerminal]([UserIdUpdate] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_UserTerminal_UserIdCreation]
    ON [dbo].[UserTerminal]([UserIdCreation] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_UserTerminal_Active]
    ON [dbo].[UserTerminal]([Active] ASC);

