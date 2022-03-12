CREATE TABLE [dbo].[MenuRoleType] (
    [Id]           UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [MenuId]       UNIQUEIDENTIFIER NOT NULL,
    [RoleTypeId]   UNIQUEIDENTIFIER NOT NULL,
    [CreationTime] DATETIME2 (7)    DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_MenuRoleType] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [MenuRoleRype_MenuId] FOREIGN KEY ([MenuId]) REFERENCES [dbo].[Menu] ([Id]),
    CONSTRAINT [MenuRoleRype_RoleTypeId] FOREIGN KEY ([RoleTypeId]) REFERENCES [dbo].[RoleType] ([Id])
);








GO
CREATE NONCLUSTERED INDEX [IX_MenuRoleType_RoleTypeId]
    ON [dbo].[MenuRoleType]([RoleTypeId] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_MenuRoleRype_MenuId_RoleTypeId]
    ON [dbo].[MenuRoleType]([MenuId] ASC, [RoleTypeId] ASC);

