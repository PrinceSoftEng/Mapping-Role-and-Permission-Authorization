USE [CountriesDetails]
GO

/****** Object:  Table [dbo].[tblRole]    Script Date: 21-07-2023 10:43:33 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblRole](
	[roleId] [int] NOT NULL,
	[roleName] [varchar](50) NULL,
	[createdBy] [varchar](50) NULL,
	[createdDate] [date] NULL,
	[updatedBy] [varchar](50) NULL,
	[updatedDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[roleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


