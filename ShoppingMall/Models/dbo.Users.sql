CREATE TABLE [dbo].[Users] (
    [UID]      INT          IDENTITY (1, 1) NOT NULL,
    [UserID]   VARCHAR (10) NOT NULL,
    [Password] VARCHAR (10) NOT NULL,
    PRIMARY KEY CLUSTERED ([UID] ASC)
);

