CREATE TABLE [dbo].[EmailTemplate] (
    [Id]                UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [TerminalId]        UNIQUEIDENTIFIER NULL,
    [CreationTime]      DATETIME2 (7)    DEFAULT (getdate()) NOT NULL,
    [UpdateTime]        DATETIME2 (7)    NULL,
    [Active]            BIT              DEFAULT ((1)) NOT NULL,
    [EmailSubject]      NVARCHAR (200)   NULL,
    [HtmlFileUrl]       NVARCHAR (2000)  NULL,
    [HtmlContent]       NVARCHAR (MAX)   NULL,
    [EmailTemplateType] NVARCHAR (20)    NOT NULL,
    [EmailType]         NVARCHAR (50)    NULL,
    CONSTRAINT [PK_EmailTemplate] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [EmailTemplate_TerminalId] FOREIGN KEY ([TerminalId]) REFERENCES [dbo].[Terminal] ([Id])
);








GO
CREATE NONCLUSTERED INDEX [IX_EmailTemplate_TerminalId]
    ON [dbo].[EmailTemplate]([TerminalId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_EmailTemplate_Active]
    ON [dbo].[EmailTemplate]([Active] ASC);

