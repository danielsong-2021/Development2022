CREATE TABLE [dbo].[Permission] (
    [Id]           UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [ParentId]     UNIQUEIDENTIFIER NULL,
    [Key]          NVARCHAR (50)    NOT NULL,
    [Description]  NVARCHAR (200)   NULL,
    [CreationTime] DATETIME2 (7)    DEFAULT (getdate()) NOT NULL,
    [Active]       BIT              DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_Permission] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [Permission_PermissionParentId] FOREIGN KEY ([ParentId]) REFERENCES [dbo].[Permission] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Permission_ParentId]
    ON [dbo].[Permission]([ParentId] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Permission_Key]
    ON [dbo].[Permission]([Key] ASC);

