CREATE TABLE [dbo].[Country] (
    [Id]               INT            NOT NULL,
    [Code]             NVARCHAR (15)  NOT NULL,
    [Name]             NVARCHAR (200) NOT NULL,
    [OperationEnabled] BIT            DEFAULT ((0)) NOT NULL,
    [OrderBy]          INT            DEFAULT ((999)) NOT NULL,
    CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED ([Id] ASC)
);





