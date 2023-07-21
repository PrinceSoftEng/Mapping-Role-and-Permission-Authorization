CREATE TABLE [dbo].[tblRole&Permission](
	[permissionId] [int] IDENTITY(1,1) NOT NULL,
	[programId] [int] foreign key references tblPageListMaster (programId)  NULL,
	[roleId] [int] foreign key references tblRole (roleId) NULL,
	[Read] [bit] NULL,
	[Add] [bit] NULL,
	[Update] [bit] NULL,
	[Delete] [bit] NULL,
	[Export] [bit] NULL,
	[AccessControl] [nvarchar](15) NULL,
	[createdBy] [varchar](50) NULL,
	[createdDate] [date] NULL,
	[updatedBy] [varchar](50) NULL,
	[updatedDate] [date] NULL
) 
 
