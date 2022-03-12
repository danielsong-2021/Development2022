CREATE TABLE [dbo].[UserSignUpApproval] (
    [Id]                     UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [UserIdCreation]         UNIQUEIDENTIFIER NOT NULL,
    [UserTerminalId]         UNIQUEIDENTIFIER NOT NULL,
    [UserSignUpReasonDenyId] UNIQUEIDENTIFIER NULL,
    [Approved]               BIT              NOT NULL,
    [Description]            NVARCHAR (500)   NULL,
    [CreationTime]           DATETIME2 (7)    DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_UserSignUpApproval] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [UserSignUpApproval_UserIdCreation] FOREIGN KEY ([UserIdCreation]) REFERENCES [dbo].[UserProfile] ([Id]),
    CONSTRAINT [UserSignUpApproval_UserSignUpReasonDenyId] FOREIGN KEY ([UserSignUpReasonDenyId]) REFERENCES [dbo].[UserSignUpReasonDeny] ([Id]),
    CONSTRAINT [UserSignUpApproval_UserTerminalId] FOREIGN KEY ([UserTerminalId]) REFERENCES [dbo].[UserTerminal] ([Id])
);




GO
CREATE NONCLUSTERED INDEX [IX_UserSignUpApproval_UserSignUpReasonDenyId]
    ON [dbo].[UserSignUpApproval]([UserSignUpReasonDenyId] ASC);


GO



GO
CREATE NONCLUSTERED INDEX [IX_UserSignUpApproval_UserIdCreation]
    ON [dbo].[UserSignUpApproval]([UserIdCreation] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_UserSignUpApproval_UserTerminalId]
    ON [dbo].[UserSignUpApproval]([UserTerminalId] ASC);

