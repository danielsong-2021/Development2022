CREATE TABLE [dbo].[RfIdTagNumber] (
    [Id]                UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [TruckerId]         UNIQUEIDENTIFIER NOT NULL,
    [UserIdCreation]    UNIQUEIDENTIFIER NOT NULL,
    [UserIdUpdate]      UNIQUEIDENTIFIER NULL,
    [CreationTime]      DATETIME2 (7)    DEFAULT (getdate()) NOT NULL,
    [UpdateTime]        DATETIME2 (7)    NULL,
    [Active]            BIT              DEFAULT ((1)) NOT NULL,
    [RfIdTagNumber]     NVARCHAR (20)    NOT NULL,
    [EffectiveDate]     DATETIME2 (7)    NOT NULL,
    [ExpirationDate]    DATETIME2 (7)    NULL,
    [IsAssigned]        BIT              DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_RfIdTagNumber] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [RfIdTagNumber_TruckerId] FOREIGN KEY ([TruckerId]) REFERENCES [dbo].[Trucker] ([Id]),
    CONSTRAINT [RfIdTagNumber_UserIdCreation] FOREIGN KEY ([UserIdCreation]) REFERENCES [dbo].[UserProfile] ([Id]),
    CONSTRAINT [RfIdTagNumber_UserIdUpdate] FOREIGN KEY ([UserIdUpdate]) REFERENCES [dbo].[UserProfile] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_RfIdTagNumber_UserIdUpdate]
    ON [dbo].[RfIdTagNumber]([UserIdUpdate] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_RfIdTagNumber_UserIdCreation]
    ON [dbo].[RfIdTagNumber]([UserIdCreation] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_RfIdTagNumber_TruckerId]
    ON [dbo].[RfIdTagNumber]([TruckerId] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_RfIdTagNumber_RfIdTagNumber]
    ON [dbo].[RfIdTagNumber]([RfIdTagNumber] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_RfIdTagNumber_Active]
    ON [dbo].[RfIdTagNumber]([Active] ASC);

