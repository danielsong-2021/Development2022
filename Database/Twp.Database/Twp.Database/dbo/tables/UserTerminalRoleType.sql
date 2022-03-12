CREATE TABLE [dbo].[UserTerminalRoleType] (
    [Id]             UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [RoleTypeId]     UNIQUEIDENTIFIER NOT NULL,
    [UserTerminalId] UNIQUEIDENTIFIER NOT NULL,
    [UserIdCreation] UNIQUEIDENTIFIER NOT NULL,
    [UserIdUpdate]   UNIQUEIDENTIFIER NULL,
    [CreationTime]   DATETIME2 (7)    DEFAULT (getdate()) NOT NULL,
    [UpdateTime]     DATETIME2 (7)    NULL,
    [Active]         BIT              DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_UserTerminalRoleType] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [UserTerminalRoleType_RoleTypeId] FOREIGN KEY ([RoleTypeId]) REFERENCES [dbo].[RoleType] ([Id]),
    CONSTRAINT [UserTerminalRoleType_UserIdCreation] FOREIGN KEY ([UserIdCreation]) REFERENCES [dbo].[UserProfile] ([Id]),
    CONSTRAINT [UserTerminalRoleType_UserIdUpdate] FOREIGN KEY ([UserIdUpdate]) REFERENCES [dbo].[UserProfile] ([Id]),
    CONSTRAINT [UserTerminalRoleType_UserTerminalId] FOREIGN KEY ([UserTerminalId]) REFERENCES [dbo].[UserTerminal] ([Id])
);








GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_UserTerminalRoleType_UserTerminalId_RoleTypeId]
    ON [dbo].[UserTerminalRoleType]([UserTerminalId] ASC, [RoleTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_UserTerminalRoleType_UserIdUpdate]
    ON [dbo].[UserTerminalRoleType]([UserIdUpdate] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_UserTerminalRoleType_UserIdCreation]
    ON [dbo].[UserTerminalRoleType]([UserIdCreation] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_UserTerminalRoleType_RoleTypeId]
    ON [dbo].[UserTerminalRoleType]([RoleTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_UserTerminalRoleType_Active]
    ON [dbo].[UserTerminalRoleType]([Active] ASC);

