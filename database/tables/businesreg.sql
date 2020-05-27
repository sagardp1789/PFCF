USE [db_PFCF]
GO

/****** Object:  Table [dbo].[builderr]    Script Date: 03/20/2018 14:37:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[builderr](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Business] [nvarchar](50) NULL,
	[Agency_Name] [nvarchar](50) NULL,
	[Description] [nvarchar](500) NULL,
	[Full_Name] [nvarchar](100) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Address_Line1] [nvarchar](500) NULL,
	[Address_Line2] [nvarchar](500) NULL,
	[City] [nvarchar](50) NULL,
	[Pin_Code] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[image] [nvarchar](150) NULL,
	[Service] [nvarchar](500) NULL,
	[Facebook] [nvarchar](100) NULL,
	[Twitter] [nvarchar](50) NULL,
	[Google] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


