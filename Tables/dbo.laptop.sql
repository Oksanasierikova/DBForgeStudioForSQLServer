CREATE TABLE [dbo].[laptop] (
  [code] [int] IDENTITY,
  [model] [varchar](50) NOT NULL,
  [speed] [smallint] NOT NULL,
  [ram] [smallint] NOT NULL,
  [hd] [real] NOT NULL,
  [price] [money] NULL,
  [screen] [tinyint] NOT NULL,
  CONSTRAINT [PK_laptop_code] PRIMARY KEY CLUSTERED ([code])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[laptop]
  ADD CONSTRAINT [FK_laptop_model] FOREIGN KEY ([model]) REFERENCES [dbo].[product] ([model])
GO