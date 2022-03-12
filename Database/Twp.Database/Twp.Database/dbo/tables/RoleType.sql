CREATE TABLE [dbo].[RoleType] (
    [Id]           UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [Name]         NVARCHAR (50)    NOT NULL,
    [Description]  NVARCHAR (200)   NOT NULL,
    [InternalId]   INT              NULL,
    [Active]       BIT              DEFAULT ((1)) NOT NULL,
    [CreationTime] DATETIME2 (7)    DEFAULT (getdate()) NOT NULL,
    [UpdateTime]   DATETIME2 (7)    NULL,
    CONSTRAINT [PK_RoleType] PRIMARY KEY CLUSTERED ([Id] ASC)
);




GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_RoleType_Name]
    ON [dbo].[RoleType]([Name] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_RoleType_InternalId]
    ON [dbo].[RoleType]([InternalId] ASC) WHERE ([InternalId] IS NOT NULL);

