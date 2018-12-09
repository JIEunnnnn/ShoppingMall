Create Proc dbo.WriteUsers
	@UserID varchar(10),
	@Password varchar(10)
As
	Insert Into Users Values(@UserID, @Password)
Go