CREATE TABLE [dbo].[Menu] (
    [Id]           UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [ParentId]     UNIQUEIDENTIFIER NULL,
    [Key]          NVARCHAR (50)    NOT NULL,
    [Description]  NVARCHAR (200)   NULL,
    [Order]        INT              NULL,
    [CreationTime] DATETIME2 (7)    DEFAULT (getdate()) NOT NULL,
    [Active]       BIT              DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [Menu_MenuParentId] FOREIGN KEY ([ParentId]) REFERENCES [dbo].[Menu] ([Id])
);




GO
CREATE NONCLUSTERED INDEX [IX_Menu_ParentId]
    ON [dbo].[Menu]([ParentId] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Menu_Key]
    ON [dbo].[Menu]([Key] ASC);

