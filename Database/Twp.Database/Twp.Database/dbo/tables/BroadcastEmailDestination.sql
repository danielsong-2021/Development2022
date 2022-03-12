CREATE TABLE [dbo].[BroadcastEmailDestination] (
    [Id]               UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [BroadcastEmailId] UNIQUEIDENTIFIER NOT NULL,
    [Email]            NVARCHAR (300)   NOT NULL,
    CONSTRAINT [PK_BroadcastEmailDestination] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [BroadcastEmailDestination_BroadcastEmailId] FOREIGN KEY ([BroadcastEmailId]) REFERENCES [dbo].[BroadcastEmail] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_BroadcastEmailDestination_BroadcastEmailId]
    ON [dbo].[BroadcastEmailDestination]([BroadcastEmailId] ASC);

