CREATE TABLE [dbo].[pc] (
  [code] [int] IDENTITY,
  [model] [varchar](50) NOT NULL,
  [speed] [smallint] NOT NULL,
  [ram] [smallint] NOT NULL,
  [hd] [real] NOT NULL,
  [cd] [varchar](10) NOT NULL,
  [price] [money] NULL,
  CONSTRAINT [PK_pc_code] PRIMARY KEY CLUSTERED ([code])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[pc]
  ADD CONSTRAINT [FK_pc_model] FOREIGN KEY ([model]) REFERENCES [dbo].[product] ([model])
GO