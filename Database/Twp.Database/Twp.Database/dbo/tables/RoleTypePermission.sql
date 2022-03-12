CREATE TABLE [dbo].[RoleTypePermission] (
    [Id]           UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [RoleTypeId]   UNIQUEIDENTIFIER NOT NULL,
    [PermissionId] UNIQUEIDENTIFIER NOT NULL,
    [CreationTime] DATETIME2 (7)    DEFAULT (getdate()) NOT NULL,
    [Value]        NVARCHAR (1)     NOT NULL,
    CONSTRAINT [PK_RoleTypePermission] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [RoleTypePermission_PermissionId] FOREIGN KEY ([PermissionId]) REFERENCES [dbo].[Permission] ([Id]),
    CONSTRAINT [RoleTypePermission_RoleTypeId] FOREIGN KEY ([RoleTypeId]) REFERENCES [dbo].[RoleType] ([Id])
);




GO
CREATE NONCLUSTERED INDEX [IX_RoleTypePermission_RoleTypeId]
    ON [dbo].[RoleTypePermission]([RoleTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_RoleTypePermission_PermissionId]
    ON [dbo].[RoleTypePermission]([PermissionId] ASC);

