CREATE TABLE [dbo].[UserSignUpReasonDeny] (
    [Id]           UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [TerminalId]   UNIQUEIDENTIFIER NULL,
    [Name]         NVARCHAR (200)   NOT NULL,
    [Description]  NVARCHAR (500)   NOT NULL,
    [CreationTime] DATETIME2 (7)    DEFAULT (getdate()) NOT NULL,
    [Active]       BIT              DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_UserSignUpReasonDeny] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [UserSignUpReasonDeny_TerminalId] FOREIGN KEY ([TerminalId]) REFERENCES [dbo].[Terminal] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_UserSignUpReasonDeny_TerminalId]
    ON [dbo].[UserSignUpReasonDeny]([TerminalId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_UserSignUpReasonDeny_Active]
    ON [dbo].[UserSignUpReasonDeny]([Active] ASC);

