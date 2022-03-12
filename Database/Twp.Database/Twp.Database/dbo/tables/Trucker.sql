CREATE TABLE [dbo].[Trucker] (
    [Id]             UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [TerminalId]     UNIQUEIDENTIFIER NOT NULL,
    [UserIdCreation] UNIQUEIDENTIFIER NOT NULL,
    [UserIdUpdate]   UNIQUEIDENTIFIER NULL,
    [CreationTime]   DATETIME2 (7)    DEFAULT (getdate()) NOT NULL,
    [UpdateTime]     DATETIME2 (7)    NULL,
    [Active]         BIT              DEFAULT ((1)) NOT NULL,
    [Name]           NVARCHAR (200)   NOT NULL,
    [ScacCode]       NVARCHAR (20)    NULL,
    [Approved]       BIT              DEFAULT ((0)) NOT NULL,
    [Make]           NVARCHAR (20)    NULL,
    [Model]          NVARCHAR (20)    NULL,
    [TareWeight]     FLOAT (53)       NULL,
    [DriverName]     NVARCHAR (400)   NULL,
    [Lpn]            NVARCHAR (20)    NULL,
    [RfIdTagNumber]  NVARCHAR (MAX)   NULL,
    [Vin]            NVARCHAR (20)    NULL,
    [Description]    NVARCHAR (500)   NULL,
    CONSTRAINT [PK_Trucker] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [Trucker_TerminalId] FOREIGN KEY ([TerminalId]) REFERENCES [dbo].[Terminal] ([Id]),
    CONSTRAINT [Trucker_UserIdCreation] FOREIGN KEY ([UserIdCreation]) REFERENCES [dbo].[UserProfile] ([Id]),
    CONSTRAINT [Trucker_UserIdUpdate] FOREIGN KEY ([UserIdUpdate]) REFERENCES [dbo].[UserProfile] ([Id])
);





GO
CREATE NONCLUSTERED INDEX [IX_Trucker_UserIdUpdate]
    ON [dbo].[Trucker]([UserIdUpdate] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Trucker_UserIdCreation]
    ON [dbo].[Trucker]([UserIdCreation] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Trucker_TerminalId]
    ON [dbo].[Trucker]([TerminalId] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Trucker_ScacCode_TerminalId]
    ON [dbo].[Trucker]([ScacCode] ASC, [TerminalId] ASC) WHERE ([ScacCode] IS NOT NULL);




GO
CREATE NONCLUSTERED INDEX [IX_Trucker_Active]
    ON [dbo].[Trucker]([Active] ASC);

