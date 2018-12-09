create proc [dbo].[WriteBoard]
@name NTEXT,
@pass NVarChar(10),
@email NVarChar(20),
@title NVarChar(50),
@contents ntext,
@writedate NVarChar(20),
@readcount int
AS
insert into tblBoard Values(

@name ,
@pass ,
@email ,
@title ,
@contents ,
@writedate ,
@readcount )