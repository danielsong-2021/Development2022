CREATE TABLE [dbo].[UserAuthenticationHistory] (
    [Id]                   UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [UserAuthenticationId] UNIQUEIDENTIFIER NOT NULL,
    [CreationTime]         DATETIME2 (7)    DEFAULT (getdate()) NOT NULL,
    [Password]             VARBINARY (MAX)  NOT NULL,
    CONSTRAINT [PK_UserAuthenticationHistory] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [UserAuthenticationHistory_UserAuthenticationId] FOREIGN KEY ([UserAuthenticationId]) REFERENCES [dbo].[UserAuthentication] ([Id])
);



GO

CREATE INDEX [IX_UserAuthenticationHistory_UserAuthenticationId] ON [dbo].[UserAuthenticationHistory] ([UserAuthenticationId])
GO
