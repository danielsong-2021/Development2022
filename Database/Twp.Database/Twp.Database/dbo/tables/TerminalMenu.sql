CREATE TABLE [dbo].[TerminalMenu] (
    [Id]           UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [MenuId]       UNIQUEIDENTIFIER NOT NULL,
    [TerminalId]   UNIQUEIDENTIFIER NOT NULL,
    [CreationTime] DATETIME2 (7)    DEFAULT (getdate()) NOT NULL,
    [KeyOverride]  NVARCHAR (50)    NULL,
    CONSTRAINT [PK_TerminalMenu] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [TerminalMenu_MenuId] FOREIGN KEY ([MenuId]) REFERENCES [dbo].[Menu] ([Id]),
    CONSTRAINT [TerminalMenu_TerminalId] FOREIGN KEY ([TerminalId]) REFERENCES [dbo].[Terminal] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_TerminalMenu_TerminalId]
    ON [dbo].[TerminalMenu]([TerminalId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_TerminalMenu_MenuId]
    ON [dbo].[TerminalMenu]([MenuId] ASC);

