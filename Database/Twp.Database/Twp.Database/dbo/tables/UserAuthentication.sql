CREATE TABLE [dbo].[UserAuthentication] (
    [Id]           UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [UserId]       UNIQUEIDENTIFIER NOT NULL,
    [CreationTime] DATETIME2 (7)    DEFAULT (getdate()) NOT NULL,
    [UpdateTime]   DATETIME2 (7)    NULL,
    [Active]       BIT              DEFAULT ((1)) NOT NULL,
    [Password]     VARBINARY (MAX)  NOT NULL,
    CONSTRAINT [PK_UserAuthentication] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [UserAuthentication_UserProfileId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[UserProfile] ([Id])
);






GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_UserAuthentication_UserId]
    ON [dbo].[UserAuthentication]([UserId] ASC);



