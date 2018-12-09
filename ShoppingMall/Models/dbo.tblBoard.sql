CREATE TABLE [dbo].[tblBoard] (
    [num]        INT          IDENTITY (1, 1) NOT NULL,
    [name]      NTEXT NULL,
    [pass]      NVARCHAR (10) NULL,
    [email]     NVARCHAR (20) NULL,
    [title]     NVARCHAR (50) NULL,
    [contents]  NTEXT        NULL,
    [writedate] NVARCHAR (20) NULL,
    [readcount] INT          NULL,
    PRIMARY KEY CLUSTERED ([num] ASC)
);

