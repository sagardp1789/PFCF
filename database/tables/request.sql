USE [db_PFCF]
GO

/****** Object:  Table [dbo].[request]    Script Date: 03/20/2018 14:39:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[request](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BId] [nvarchar](50) NULL,
	[Agency_Name] [nvarchar](50) NULL,
	[Full_Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Address] [nvarchar](500) NULL,
	[Requirement] [nvarchar](500) NULL,
	[Date] [nvarchar](100) NULL,
 CONSTRAINT [PK__request__3214EC074222D4EF] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


