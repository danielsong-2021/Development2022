CREATE TABLE [dbo].[SmsTemplate] (
    [Id]            UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [TerminalId]    UNIQUEIDENTIFIER NULL,
    [CreationTime]  DATETIME2 (7)    DEFAULT (getdate()) NOT NULL,
    [UpdateTime]    DATETIME2 (7)    NULL,
    [Active]        BIT              DEFAULT ((1)) NOT NULL,
    [Message]       NVARCHAR (1600)  NOT NULL,
    [SmsType] NVARCHAR (50)    NULL,
    CONSTRAINT [PK_SmsTemplate] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SmsTemplate_Terminal_TerminalId] FOREIGN KEY ([TerminalId]) REFERENCES [dbo].[Terminal] ([Id])
);




GO
CREATE NONCLUSTERED INDEX [IX_SmsTemplate_TerminalId]
    ON [dbo].[SmsTemplate]([TerminalId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_SmsTemplate_Active]
    ON [dbo].[SmsTemplate]([Active] ASC);

