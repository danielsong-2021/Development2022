CREATE TABLE [dbo].[UserProfile] (
    [Id]                     UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [CreationTime]           DATETIME2 (7)    DEFAULT (getdate()) NOT NULL,
    [UpdateTime]             DATETIME2 (7)    NULL,
    [Active]                 BIT              DEFAULT ((1)) NOT NULL,
    [FirstName]              NVARCHAR (100)   NOT NULL,
    [LastName]               NVARCHAR (300)   NOT NULL,
    [Email]                  NVARCHAR (300)   NOT NULL,
    [UserName]               NVARCHAR (300)   NOT NULL,
    [CellPhoneNumber]        NVARCHAR (50)    NOT NULL,
    [OtherPhoneNumber]       NVARCHAR (50)    NULL,
    [LoginAttempts]          INT              DEFAULT ((0)) NOT NULL,
    [Locked]                 BIT              DEFAULT ((0)) NOT NULL,
    [LastLoginAttempt]       DATETIME2 (7)    NULL,
    [ImageUrl]               NVARCHAR (2000)  NULL,
    [LocationId]             UNIQUEIDENTIFIER NULL,
    [BusinessTypeId]         INT              NOT NULL,
    [CompanyName]            NVARCHAR (200)   NOT NULL,
    [ApprovedInSomeTerminal] BIT              DEFAULT ((0)) NOT NULL,
    [AcknowledgedTC]         BIT              NOT NULL,
    CONSTRAINT [PK_UserProfile] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [UserProfile_BusinessTypeId] FOREIGN KEY ([BusinessTypeId]) REFERENCES [dbo].[BusinessType] ([Id]),
    CONSTRAINT [UserProfile_LocationId] FOREIGN KEY ([LocationId]) REFERENCES [dbo].[Location] ([Id])
);



GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_UserProfile_UserName]
    ON [dbo].[UserProfile]([UserName] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_UserProfile_Email]
    ON [dbo].[UserProfile]([Email] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_UserProfile_CellPhoneNumber]
    ON [dbo].[UserProfile]([CellPhoneNumber] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_UserProfile_LocationId]
    ON [dbo].[UserProfile]([LocationId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_UserProfile_BusinessTypeId]
    ON [dbo].[UserProfile]([BusinessTypeId] ASC);
GO
CREATE NONCLUSTERED INDEX [IX_UserProfile_Active]
    ON [dbo].[UserProfile]([Active] ASC);

