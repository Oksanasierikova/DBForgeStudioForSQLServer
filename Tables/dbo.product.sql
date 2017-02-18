CREATE TABLE [dbo].[product] (
  [maker] [varchar](10) NOT NULL,
  [model] [varchar](50) NOT NULL,
  [type] [varchar](50) NOT NULL,
  CONSTRAINT [PK_product_model] PRIMARY KEY CLUSTERED ([model])
)
ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'''PC'' or ''Laptop'' or ''Printer'' ', 'SCHEMA', N'dbo', 'TABLE', N'product', 'COLUMN', N'type'
GO