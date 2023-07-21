CREATE PROCEDURE [dbo].[tblRole&Permission_spInsertorUpdatetblPermission]
	 @programId int 
	,@roleId int
	,@Read bit
	,@Add bit
	,@Update bit
	,@Delete bit
	,@Export bit
	,@AccessControl nvarchar(15)
AS
BEGIN
	If Exists (select 1 from tblRoleNPermission where roleId=@roleId and programId=@programId)
		BEGIN
			Update tblRoleNPermission
			set [Read]=@Read,
				[Add]=@Add,
				[Update]=@Update,
				[Delete]=@Delete,
				[Export]=@Export,
				[AccessControl]=@AccessControl
			where roleId=@roleId and programId=@programId
		END
	ELSE
		BEGIN			
			INSERT INTO tblRoleNPermission (programId,roleId,[Read],[Add],[Update],[Delete],[Export],[AccessControl],[createdBy],[createdDate],[updatedBy],[updatedDate])
			Values(@programId,@roleId,@Read,@Add,@Update,@Delete,@Export,@AccessControl,'Admin',GETDATE(),'Admin',GETDATE())			
		END
END
GO