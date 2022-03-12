CREATE TABLE [dbo].[UserSignUp] (
    [Id]                  UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [UserId]              UNIQUEIDENTIFIER NOT NULL,
    [CreationTime]        DATETIME2 (7)    DEFAULT (getdate()) NOT NULL,
    [IsAutomaticApproval] BIT              NOT NULL,
    [ScacCode]            NVARCHAR (20)    NULL,
    [PartnersListUsed]    NVARCHAR (MAX)   NULL,
    CONSTRAINT [PK_UserSignUp] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [UserSignUp_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[UserProfile] ([Id])
);








GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_UserSignUp_UserId]
    ON [dbo].[UserSignUp]([UserId] ASC);



