CREATE TABLE [dbo].[printer] (
  [code] [int] IDENTITY,
  [model] [varchar](50) NOT NULL,
  [color] [char](1) NOT NULL,
  [type] [varchar](10) NOT NULL,
  [price] [money] NULL,
  CONSTRAINT [PK_printer_code] PRIMARY KEY CLUSTERED ([code])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[printer]
  ADD CONSTRAINT [FK_printer_model] FOREIGN KEY ([model]) REFERENCES [dbo].[product] ([model])
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Laser'' or ''Jet'' or ''Matrix', 'SCHEMA', N'dbo', 'TABLE', N'printer', 'COLUMN', N'type'
GO