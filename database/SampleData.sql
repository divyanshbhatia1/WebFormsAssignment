USE [WebFormsAssignment]
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 
GO
INSERT [dbo].[Customers] ([Id], [Name], [Address]) VALUES (1, N'Customer 1', N'Address 1')
GO
INSERT [dbo].[Customers] ([Id], [Name], [Address]) VALUES (2, N'Customer 2', N'Address 2')
GO
INSERT [dbo].[Customers] ([Id], [Name], [Address]) VALUES (3, N'Customer 3', N'Address 3')
GO
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 
GO
INSERT [dbo].[Orders] ([Id], [Number], [Date], [Amount], [Description], [CustomerId]) VALUES (1, 1001, CAST(N'2022-08-17T21:03:40.473' AS DateTime), 10, N'Order 1', 1)
GO
INSERT [dbo].[Orders] ([Id], [Number], [Date], [Amount], [Description], [CustomerId]) VALUES (2, 1002, CAST(N'2022-08-17T21:03:40.477' AS DateTime), 10, N'Order 2', 1)
GO
INSERT [dbo].[Orders] ([Id], [Number], [Date], [Amount], [Description], [CustomerId]) VALUES (3, 1003, CAST(N'2022-08-17T21:03:40.477' AS DateTime), 10, N'Order 3', 2)
GO
INSERT [dbo].[Orders] ([Id], [Number], [Date], [Amount], [Description], [CustomerId]) VALUES (4, 1004, CAST(N'2022-08-17T21:03:40.477' AS DateTime), 10, N'Order 4', 2)
GO
INSERT [dbo].[Orders] ([Id], [Number], [Date], [Amount], [Description], [CustomerId]) VALUES (5, 1005, CAST(N'2022-08-17T21:03:40.477' AS DateTime), 10, N'Order 5', 3)
GO
INSERT [dbo].[Orders] ([Id], [Number], [Date], [Amount], [Description], [CustomerId]) VALUES (6, 1006, CAST(N'2022-08-17T21:03:40.477' AS DateTime), 10, N'Order 6', 3)
GO
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO