CREATE TABLE [dbo].[TerminalInformationCategory] (
    [Id]           UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [TerminalId]   UNIQUEIDENTIFIER NULL,
    [Name]         NVARCHAR (200)   NOT NULL,
    [CreationTime] DATETIME2 (7)    DEFAULT (getdate()) NOT NULL,
    [UpdateTime]   DATETIME2 (7)    NULL,
    [Active]       BIT              DEFAULT ((1)) NOT NULL,
    [Icon]         NVARCHAR (50)    NULL,
    CONSTRAINT [PK_TerminalInformationCategory] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [TerminalInformationCategory_TerminalId] FOREIGN KEY ([TerminalId]) REFERENCES [dbo].[Terminal] ([Id])
);






GO
CREATE NONCLUSTERED INDEX [IX_TerminalInformationCategory_TerminalId]
    ON [dbo].[TerminalInformationCategory]([TerminalId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_TerminalInformationCategory_Active]
    ON [dbo].[TerminalInformationCategory]([Active] ASC);

