SET IDENTITY_INSERT [dbo].[tblBoard] ON
INSERT INTO [dbo].[tblBoard] ([num], [name], [pass], [email], [title], [contents], [writedate], [readcount]) VALUES (1, '운영자', 1111 , 'moon@' , '어서오세요', '쇼핑몰에 오신걸 환영합니다', 20181209 , 0 )
SET IDENTITY_INSERT [dbo].[tblBoard] OFF
