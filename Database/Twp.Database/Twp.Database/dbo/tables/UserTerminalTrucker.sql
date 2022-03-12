CREATE TABLE [dbo].[UserTerminalTrucker] (
    [Id]                UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [TruckerId]         UNIQUEIDENTIFIER NOT NULL,
    [UserTerminalId]    UNIQUEIDENTIFIER NOT NULL,
    [UserIdCreation]    UNIQUEIDENTIFIER NOT NULL,
    [UserIdUpdate]      UNIQUEIDENTIFIER NULL,
    [CreationTime]      DATETIME2 (7)    DEFAULT (getdate()) NOT NULL,
    [UpdateTime]        DATETIME2 (7)    NULL,
    [Active]            BIT              DEFAULT ((1)) NOT NULL,
    [Approved]          BIT              DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_UserTerminalTrucker] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [UserTerminalTrucker_TruckerId] FOREIGN KEY ([TruckerId]) REFERENCES [dbo].[Trucker] ([Id]),
    CONSTRAINT [UserTerminalTrucker_UserIdCreation] FOREIGN KEY ([UserIdCreation]) REFERENCES [dbo].[UserProfile] ([Id]),
    CONSTRAINT [UserTerminalTrucker_UserIdUpdate] FOREIGN KEY ([UserIdUpdate]) REFERENCES [dbo].[UserProfile] ([Id]),
    CONSTRAINT [UserTerminalTrucker_UserTerminalId] FOREIGN KEY ([UserTerminalId]) REFERENCES [dbo].[UserTerminal] ([Id])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_UserTerminalTrucker_UserTerminalId_TruckerId]
    ON [dbo].[UserTerminalTrucker]([UserTerminalId] ASC, [TruckerId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_UserTerminalTrucker_UserIdUpdate]
    ON [dbo].[UserTerminalTrucker]([UserIdUpdate] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_UserTerminalTrucker_UserIdCreation]
    ON [dbo].[UserTerminalTrucker]([UserIdCreation] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_UserTerminalTrucker_TruckerId]
    ON [dbo].[UserTerminalTrucker]([TruckerId] ASC);

