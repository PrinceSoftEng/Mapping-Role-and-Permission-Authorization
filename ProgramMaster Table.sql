CREATE TABLE [dbo].[PageListMaster_tblMaster](
	[programId] [int] Primary Key NOT NULL,
	[programList] [varchar](50) NULL,
) 

Insert Into [PageListMaster_tblMaster] values(1,'RoleMaster'),
											 (2,'AdminMaster'),
											 (3,'UserMaster'),
											 (5,'HomeMaster'),
											 (6,'AboutUsMaster'),
											 (7,'CustomerMaster'),
											 (8,'VendorMaster')
											 