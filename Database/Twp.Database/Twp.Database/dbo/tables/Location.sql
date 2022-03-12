CREATE TABLE [dbo].[Location] (
    [Id]                UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [CountryId]         INT              NULL,
    [Address]           NVARCHAR (500)   NULL,
    [StateProvinceCode] NVARCHAR (2)     NULL,
    [StateProvinceName] NVARCHAR (200)   NULL,
    [CityName]          NVARCHAR (200)   NULL,
    [ZipCode]           NVARCHAR (50)    NULL,
    [CreationTime]      DATETIME2 (7)    DEFAULT (getdate()) NOT NULL,
    [UpdateTime]        DATETIME2 (7)    NULL,
    CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [Location_CountryId] FOREIGN KEY ([CountryId]) REFERENCES [dbo].[Country] ([Id]),
    CONSTRAINT [Location_StateProvinceCode] FOREIGN KEY ([StateProvinceCode]) REFERENCES [dbo].[StateProvince] ([Code])
);




GO
CREATE NONCLUSTERED INDEX [IX_Location_StateProvinceCode]
    ON [dbo].[Location]([StateProvinceCode] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Location_CountryId]
    ON [dbo].[Location]([CountryId] ASC);

