USE [db_PFCF]
GO

/****** Object:  Table [dbo].[userreg]    Script Date: 03/20/2018 14:40:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[userreg](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Full_Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Pin_Code] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Facebook] [nvarchar](50) NULL,
	[Twitter] [nvarchar](50) NULL,
	[Google] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


