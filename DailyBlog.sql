USE [master]
GO

DROP DATABASE [DailyBlogProject]
go

CREATE DATABASE [DailyBlogProject]
GO

USE [DailyBlogProject]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Blog](
	[BlogId] [int] IDENTITY(1,1) NOT NULL,
	[BlogName] [nvarchar](50) NULL,
)
GO

insert into [dbo].[Blog]([BlogName]) Values (N'Test Data')

select * from [Blog]


/*
/****** Object:  Table [dbo].[Product]    Script Date: 09/22/24 7:11:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductCategoryId] [int] NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Color] [nvarchar](50) NULL,
	[Weight] [float] NULL,
	[UnitWeight] [nvarchar](50) NULL,
	[Size] [nvarchar](50) NULL,
	[Origin] [nvarchar](250) NULL,
	[ListPrice] [decimal](18, 2) NULL,
	[ImageUrl] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Note] [nvarchar](500) NULL,
	[IsActive] [bit] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 09/22/24 7:11:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[ProductCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](2000) NULL,
	[IsActive] [bit] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[ProductCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleOrder]    Script Date: 09/22/24 7:11:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleOrder](
	[SaleOrderId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[OrderNo] [nvarchar](50) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[ShipAddress] [nvarchar](250) NULL,
	[ShipDate] [datetime] NULL,
	[SubAmount] [decimal](18, 2) NOT NULL,
	[VATRate] [decimal](18, 2) NOT NULL,
	[VATAmount] [decimal](18, 2) NOT NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[Status] [int] NOT NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_SaleOrder] PRIMARY KEY CLUSTERED 
(
	[SaleOrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleOrderDetail]    Script Date: 09/22/24 7:11:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleOrderDetail](
	[SaleOrderDetailId] [int] IDENTITY(1,1) NOT NULL,
	[SaleOrderId] [int] NULL,
	[ProductId] [int] NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [decimal](18, 2) NOT NULL,
	[Discount] [decimal](18, 2) NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[Note] [nvarchar](250) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_SaleOrderDetail] PRIMARY KEY CLUSTERED 
(
	[SaleOrderDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductId], [ProductCategoryId], [Code], [Name], [Color], [Weight], [UnitWeight], [Size], [Origin], [ListPrice], [ImageUrl], [Description], [Note], [IsActive], [ModifiedDate]) VALUES (1, 1, N'Kohaku0001', N'Cá Koi Kohaku', N'Trắng-Đỏ', 3, N'Kg', N'35-65 Cm', N'Japan', CAST(120000000.00 AS Decimal(18, 2)), N'https://file.hstatic.net/200000573099/file/thiet_ke_chua_co_ten__65__26169d23c20046ea8754593ffb1b3a9b_grande.png', NULL, N'Trọng lượng sai số +- 0.5Kg', 1, CAST(N'2024-09-17T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([ProductId], [ProductCategoryId], [Code], [Name], [Color], [Weight], [UnitWeight], [Size], [Origin], [ListPrice], [ImageUrl], [Description], [Note], [IsActive], [ModifiedDate]) VALUES (5, 2, N'Sanke0001', N'Cá Koi Sanke', N'Trắng-Đỏ-Đen', 4, N'Kg', N'45-60 Cm', N'Japan', CAST(90000000.00 AS Decimal(18, 2)), N'https://file.hstatic.net/200000573099/file/thiet_ke_chua_co_ten__66__a862d072cefe43afacd7702dd35a4c36_grande.png', NULL, N'Trọng lượng sai số +- 0.5Kg', 1, CAST(N'2024-09-17T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([ProductId], [ProductCategoryId], [Code], [Name], [Color], [Weight], [UnitWeight], [Size], [Origin], [ListPrice], [ImageUrl], [Description], [Note], [IsActive], [ModifiedDate]) VALUES (10, 3, N'Showa0001', N'Cá Koi Showa', N'Trắng-Đỏ-Đen', 5, N'Kg', N'20-25 Cm', N'Japan', CAST(70000000.00 AS Decimal(18, 2)), N'https://file.hstatic.net/200000573099/file/thiet_ke_chua_co_ten__67__2ec4d4b8616347d7b2cf1302d79e421c_grande.png', NULL, NULL, 1, CAST(N'2024-09-17T00:00:00.000' AS DateTime))

SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductCategory] ON 

INSERT [dbo].[ProductCategory] ([ProductCategoryId], [Name], [Description], [IsActive], [ModifiedDate]) VALUES (1, N'Cá Koi Kohaku', N'Cá Koi Kohaku thực sự là một biểu tượng của vẻ đẹp và sự tinh tế trong thế giới của cá cảnh.Đặc điểm chính của Kohaku là sự kết hợp tinh tế giữa màu trắng trong trẻo của thân cá và các vệt màu đỏ hoặc cam phối trộn một cách hài hòa. Mỗi vệt màu đỏ hay cam trên thân cá Kohaku được coi là một nét đẹp tinh tế và duyên dáng. Đặc biệt, các vệt màu này thường trải dài từ đầu cá đến đuôi, tạo ra một bức tranh sống động và lôi cuốn khi Kohaku bơi trong nước', 1, CAST(N'2024-09-17T00:00:00.000' AS DateTime))
INSERT [dbo].[ProductCategory] ([ProductCategoryId], [Name], [Description], [IsActive], [ModifiedDate]) VALUES (2, N'Cá Koi Sanke', N'Cá koi Sanke với màu trắng trong trẻo của thân cá, kết hợp với các vệt màu đỏ và đen tạo thành các hoa văn phức tạp. Mỗi một vệt màu đỏ và đen trên thân cá Sanke đều được tạo ra một cách tỉ mỉ và cân nhắc, tạo ra một bức tranh sống động và lôi cuốn khi Sanke bơi trong nước. Sự phối hợp giữa ba màu sắc này tạo nên một vẻ đẹp tinh tế và độc đáo, thu hút ánh nhìn ngay từ cái nhìn đầu tiên', 1, CAST(N'2024-09-17T00:00:00.000' AS DateTime))
INSERT [dbo].[ProductCategory] ([ProductCategoryId], [Name], [Description], [IsActive], [ModifiedDate]) VALUES (3, N'Cá Koi Showa', N'Cá Koi Showa là biểu tượng của sự mạnh mẽ và quyết đoán trong thế giới của cá cảnh. Với vẻ ngoài độc đáo và mạnh mẽ, Showa là một trong những loại cá Koi được người yêu cá cảnh ưa chuộng và khám phá tại Việt Nam', 1, CAST(N'2024-09-17T00:00:00.000' AS DateTime))
INSERT [dbo].[ProductCategory] ([ProductCategoryId], [Name], [Description], [IsActive], [ModifiedDate]) VALUES (4, N'Cá Koi Ogon', N'Đặc điểm chính của Ogon là màu vàng hoặc cam rực rỡ phủ trên toàn bộ cơ thể. Sự đơn giản và tinh tế của màu sắc này tạo ra một hiệu ứng lấp lánh rực rỡ khi Ogon bơi trong ao. Ánh nắng mặt trời chiếu xuống làm cho màu sắc của Ogon trở nên lung linh và lôi cuốn, tạo ra một cảm giác bình yên và yên bình', 1, CAST(N'2024-09-17T00:00:00.000' AS DateTime))
INSERT [dbo].[ProductCategory] ([ProductCategoryId], [Name], [Description], [IsActive], [ModifiedDate]) VALUES (5, N'Cá Koi Chagoi', N'Cá Koi Chagoi, với vẻ đẹp bình dị và sự ấm áp của mình, là một biểu tượng của sự thanh lịch và tự nhiên trong thế giới của cá cảnh. Đặc điểm chính của Chagoi là màu nâu hoặc vàng nâu trên toàn bộ cơ thể. Sự đơn giản của màu sắc này tạo ra một cảm giác ấm áp và thân thiện, khiến cho Chagoi trở nên gần gũi và dễ thương', 1, CAST(N'2024-09-17T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductCategory] FOREIGN KEY([ProductCategoryId])
REFERENCES [dbo].[ProductCategory] ([ProductCategoryId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductCategory]
GO
ALTER TABLE [dbo].[SaleOrder]  WITH CHECK ADD  CONSTRAINT [FK_SaleOrder_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([CustomerId])
GO
ALTER TABLE [dbo].[SaleOrder] CHECK CONSTRAINT [FK_SaleOrder_Customer]
GO
ALTER TABLE [dbo].[SaleOrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_SaleOrderDetail_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[SaleOrderDetail] CHECK CONSTRAINT [FK_SaleOrderDetail_Product]
GO
ALTER TABLE [dbo].[SaleOrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_SaleOrderDetail_SaleOrder] FOREIGN KEY([SaleOrderId])
REFERENCES [dbo].[SaleOrder] ([SaleOrderId])
GO
ALTER TABLE [dbo].[SaleOrderDetail] CHECK CONSTRAINT [FK_SaleOrderDetail_SaleOrder]
GO
USE [master]
GO
ALTER DATABASE [SWP391ProductManagementSystem] SET  READ_WRITE 
GO


*/
