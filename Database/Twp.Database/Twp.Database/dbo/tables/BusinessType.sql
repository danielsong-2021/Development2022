CREATE TABLE [dbo].[BusinessType] (
    [Id]          INT            NOT NULL,
    [Name]        NVARCHAR (50)  NOT NULL,
    [Description] NVARCHAR (200) NOT NULL,
    CONSTRAINT [PK_BusinessType] PRIMARY KEY CLUSTERED ([Id] ASC)
);






GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_BusinessType_Name]
    ON [dbo].[BusinessType]([Name] ASC);

