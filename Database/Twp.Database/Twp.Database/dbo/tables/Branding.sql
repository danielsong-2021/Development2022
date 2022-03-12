CREATE TABLE [dbo].[Branding] (
    [Id]                 UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [CreationTime]       DATETIME2 (7)    DEFAULT (getdate()) NOT NULL,
    [UserIdCreation]     UNIQUEIDENTIFIER NOT NULL,
    [UserIdUpdate]       UNIQUEIDENTIFIER NULL,
    [UpdateTime]         DATETIME2 (7)    NULL,
    [PrimaryColor]       NVARCHAR (20)    NULL,
    [PrimaryActionColor] NVARCHAR (20)    NULL,
    [UseDarkText]        BIT              DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_Branding] PRIMARY KEY CLUSTERED ([Id] ASC)
);



