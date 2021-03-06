USE [master]
GO
/****** Object:  Database [MyShop]    Script Date: 07/18/2017 21:39:07 ******/
CREATE DATABASE [MyShop] ON  PRIMARY 
( NAME = N'MyShop', FILENAME = N'E:\MyShop.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MyShop_log', FILENAME = N'E:\MyShop_log.ldf' , SIZE = 5120KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MyShop] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MyShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MyShop] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [MyShop] SET ANSI_NULLS OFF
GO
ALTER DATABASE [MyShop] SET ANSI_PADDING OFF
GO
ALTER DATABASE [MyShop] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [MyShop] SET ARITHABORT OFF
GO
ALTER DATABASE [MyShop] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [MyShop] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [MyShop] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [MyShop] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [MyShop] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [MyShop] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [MyShop] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [MyShop] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [MyShop] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [MyShop] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [MyShop] SET  DISABLE_BROKER
GO
ALTER DATABASE [MyShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [MyShop] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [MyShop] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [MyShop] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [MyShop] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [MyShop] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [MyShop] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [MyShop] SET  READ_WRITE
GO
ALTER DATABASE [MyShop] SET RECOVERY FULL
GO
ALTER DATABASE [MyShop] SET  MULTI_USER
GO
ALTER DATABASE [MyShop] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [MyShop] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'MyShop', N'ON'
GO
USE [MyShop]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 07/18/2017 21:39:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[AdminID] [int] IDENTITY(1,1) NOT NULL,
	[AdminName] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[PassWord] [nvarchar](50) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[LastLoginTime] [datetime] NOT NULL,
	[LastIP] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Admins] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admins] ON
INSERT [dbo].[Admins] ([AdminID], [AdminName], [Email], [PassWord], [CreateTime], [LastLoginTime], [LastIP]) VALUES (1, N'854338015', N'854@', N'dabaolin', CAST(0x0000A7B101094798 AS DateTime), CAST(0x0000A7B101094798 AS DateTime), N'1')
SET IDENTITY_INSERT [dbo].[Admins] OFF
/****** Object:  Table [dbo].[UserAddress]    Script Date: 07/18/2017 21:39:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAddress](
	[AddressId] [int] IDENTITY(1,1) NOT NULL,
	[Consignee] [nvarchar](50) NOT NULL,
	[Province] [int] NOT NULL,
	[City] [int] NOT NULL,
	[District] [int] NOT NULL,
	[Addr] [nvarchar](250) NOT NULL,
	[Postcode] [nvarchar](50) NOT NULL,
	[Tel] [nvarchar](50) NOT NULL,
	[Mobile] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[BestTimt] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_UserAddress] PRIMARY KEY CLUSTERED 
(
	[AddressId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[UserAddress] ON
INSERT [dbo].[UserAddress] ([AddressId], [Consignee], [Province], [City], [District], [Addr], [Postcode], [Tel], [Mobile], [Email], [BestTimt]) VALUES (1, N'阿霖', 1, 1, 1, N'北京市石景山区八宝山街道', N'100010', N'13845461234', N'4564561261', N'854338015@qq.com', N'2015-1-1')
SET IDENTITY_INSERT [dbo].[UserAddress] OFF
/****** Object:  Table [dbo].[Shipping]    Script Date: 07/18/2017 21:39:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping](
	[ShippingId] [int] IDENTITY(1,1) NOT NULL,
	[ShippingName] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[Enabled] [int] NOT NULL,
	[Img] [nvarchar](100) NULL,
 CONSTRAINT [PK_Shipping] PRIMARY KEY CLUSTERED 
(
	[ShippingId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Shipping] ON
INSERT [dbo].[Shipping] ([ShippingId], [ShippingName], [Description], [Enabled], [Img]) VALUES (12, N'韵达快递', N'韵达快递', 1, N'201707180330353056.png')
INSERT [dbo].[Shipping] ([ShippingId], [ShippingName], [Description], [Enabled], [Img]) VALUES (13, N'申通快递', N'申通快递', 1, N'201707180330544613.png')
INSERT [dbo].[Shipping] ([ShippingId], [ShippingName], [Description], [Enabled], [Img]) VALUES (14, N'圆通快递', N'圆通快递', 1, N'201707180331132813.png')
SET IDENTITY_INSERT [dbo].[Shipping] OFF
/****** Object:  Table [dbo].[PayMent]    Script Date: 07/18/2017 21:39:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PayMent](
	[PayId] [int] IDENTITY(1,1) NOT NULL,
	[PayName] [nvarchar](50) NOT NULL,
	[Enabled] [int] NOT NULL,
	[Desription] [nvarchar](50) NOT NULL,
	[Img] [nvarchar](100) NULL,
 CONSTRAINT [PK_PayMent] PRIMARY KEY CLUSTERED 
(
	[PayId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PayMent] ON
INSERT [dbo].[PayMent] ([PayId], [PayName], [Enabled], [Desription], [Img]) VALUES (10, N'微信支付', 1, N'微信支付', N'201707180258375808.png')
INSERT [dbo].[PayMent] ([PayId], [PayName], [Enabled], [Desription], [Img]) VALUES (11, N'支付宝支付', 1, N'支付宝支付', N'201707180301588335.png')
INSERT [dbo].[PayMent] ([PayId], [PayName], [Enabled], [Desription], [Img]) VALUES (12, N'财付通支付', 1, N'财付通支付', N'201707180302185683.png')
SET IDENTITY_INSERT [dbo].[PayMent] OFF
/****** Object:  Table [dbo].[Goods]    Script Date: 07/18/2017 21:39:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Goods](
	[GoodsID] [int] IDENTITY(1,1) NOT NULL,
	[CatID] [smallint] NOT NULL,
	[GoodsName] [varchar](120) NOT NULL,
	[NameStyle] [varchar](60) NULL,
	[BrandID] [smallint] NOT NULL,
	[GoodsStock] [int] NOT NULL,
	[ShopPrice] [decimal](10, 2) NOT NULL,
	[Description] [varchar](max) NOT NULL,
	[Thumbnail] [varchar](255) NOT NULL,
	[IsSale] [tinyint] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[ShowOrder] [smallint] NOT NULL,
	[IsDelete] [tinyint] NOT NULL,
	[IsBest] [tinyint] NULL,
	[IsNew] [tinyint] NULL,
	[IsHot] [tinyint] NULL,
	[IsPromotion] [tinyint] NULL,
	[Remark] [varchar](255) NULL,
	[DeleteTime] [datetime] NULL,
	[isDaGuangGao] [int] NULL,
 CONSTRAINT [PK_Goods] PRIMARY KEY CLUSTERED 
(
	[GoodsID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Goods', @level2type=N'COLUMN',@level2name=N'GoodsID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品所属商品分类id，取值category的cat_id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Goods', @level2type=N'COLUMN',@level2name=N'CatID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品的名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Goods', @level2type=N'COLUMN',@level2name=N'GoodsName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品名称显示的样式；包括颜色和字体样式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Goods', @level2type=N'COLUMN',@level2name=N'NameStyle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'品牌id，取值于brand 的brand_id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Goods', @level2type=N'COLUMN',@level2name=N'BrandID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品库存数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Goods', @level2type=N'COLUMN',@level2name=N'GoodsStock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'本店售价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Goods', @level2type=N'COLUMN',@level2name=N'ShopPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品的详细描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Goods', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品在前台显示的微缩图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Goods', @level2type=N'COLUMN',@level2name=N'Thumbnail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'该商品是否开放销售，1，是；0，否' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Goods', @level2type=N'COLUMN',@level2name=N'IsSale'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Goods', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品显示的顺序,数字越大顺序越靠后,同数字,id在前的先显示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Goods', @level2type=N'COLUMN',@level2name=N'ShowOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品是否已经删除，0，否；1，已删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Goods', @level2type=N'COLUMN',@level2name=N'IsDelete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否特价促销；0，否；1，是' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Goods', @level2type=N'COLUMN',@level2name=N'IsPromotion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Goods', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Goods'
GO
SET IDENTITY_INSERT [dbo].[Goods] ON
INSERT [dbo].[Goods] ([GoodsID], [CatID], [GoodsName], [NameStyle], [BrandID], [GoodsStock], [ShopPrice], [Description], [Thumbnail], [IsSale], [CreateTime], [ShowOrder], [IsDelete], [IsBest], [IsNew], [IsHot], [IsPromotion], [Remark], [DeleteTime], [isDaGuangGao]) VALUES (104, 1, N'asda', NULL, 11, 123, CAST(800.00 AS Decimal(10, 2)), N'<p>asdasd</p>', N'201707180225383352.jpg', 1, CAST(0x0000A7B400EDC114 AS DateTime), 0, 1, 1, 0, 0, 0, N'123123', CAST(0x0000A7B401001622 AS DateTime), NULL)
INSERT [dbo].[Goods] ([GoodsID], [CatID], [GoodsName], [NameStyle], [BrandID], [GoodsStock], [ShopPrice], [Description], [Thumbnail], [IsSale], [CreateTime], [ShowOrder], [IsDelete], [IsBest], [IsNew], [IsHot], [IsPromotion], [Remark], [DeleteTime], [isDaGuangGao]) VALUES (105, 1, N'asdawqe', NULL, 10, 111, CAST(888.00 AS Decimal(10, 2)), N'<p>qweqw</p>', N'201707180228082623.jpg', 0, CAST(0x0000A7B400EE713B AS DateTime), 0, 0, 0, 1, 0, 0, N'12312', NULL, NULL)
INSERT [dbo].[Goods] ([GoodsID], [CatID], [GoodsName], [NameStyle], [BrandID], [GoodsStock], [ShopPrice], [Description], [Thumbnail], [IsSale], [CreateTime], [ShowOrder], [IsDelete], [IsBest], [IsNew], [IsHot], [IsPromotion], [Remark], [DeleteTime], [isDaGuangGao]) VALUES (106, 3, N'1231', NULL, 10, 123, CAST(1231.00 AS Decimal(10, 2)), N'<p>12312</p>', N'201707180650332073.jpg', 1, CAST(0x0000A7B401368446 AS DateTime), 0, 0, 0, 0, 1, 0, N'12312', NULL, NULL)
INSERT [dbo].[Goods] ([GoodsID], [CatID], [GoodsName], [NameStyle], [BrandID], [GoodsStock], [ShopPrice], [Description], [Thumbnail], [IsSale], [CreateTime], [ShowOrder], [IsDelete], [IsBest], [IsNew], [IsHot], [IsPromotion], [Remark], [DeleteTime], [isDaGuangGao]) VALUES (107, 2, N'12312', NULL, 11, 12312, CAST(12312.00 AS Decimal(10, 2)), N'<p>12312</p>', N'201707180653149005.jpg', 1, CAST(0x0000A7B40137412B AS DateTime), 0, 0, 0, 0, 0, 1, N'12321321', NULL, NULL)
INSERT [dbo].[Goods] ([GoodsID], [CatID], [GoodsName], [NameStyle], [BrandID], [GoodsStock], [ShopPrice], [Description], [Thumbnail], [IsSale], [CreateTime], [ShowOrder], [IsDelete], [IsBest], [IsNew], [IsHot], [IsPromotion], [Remark], [DeleteTime], [isDaGuangGao]) VALUES (108, 2, N'12312', NULL, 10, 11123, CAST(111.00 AS Decimal(10, 2)), N'<p>12312</p>', N'201707180653283237.jpg', 1, CAST(0x0000A7B401375146 AS DateTime), 0, 0, 0, 1, 1, 0, N'12312', NULL, NULL)
INSERT [dbo].[Goods] ([GoodsID], [CatID], [GoodsName], [NameStyle], [BrandID], [GoodsStock], [ShopPrice], [Description], [Thumbnail], [IsSale], [CreateTime], [ShowOrder], [IsDelete], [IsBest], [IsNew], [IsHot], [IsPromotion], [Remark], [DeleteTime], [isDaGuangGao]) VALUES (111, 1, N'冬季秋季帅气保暖秋衣/学生/男装', NULL, 10, 200, CAST(288.00 AS Decimal(10, 2)), N'<p>冬季秋季帅气保暖秋衣/学生/男装</p>', N'201707180743118558.jpg', 1, CAST(0x0000A7B40144F926 AS DateTime), 0, 0, 0, 0, 0, 0, N'', NULL, 1)
INSERT [dbo].[Goods] ([GoodsID], [CatID], [GoodsName], [NameStyle], [BrandID], [GoodsStock], [ShopPrice], [Description], [Thumbnail], [IsSale], [CreateTime], [ShowOrder], [IsDelete], [IsBest], [IsNew], [IsHot], [IsPromotion], [Remark], [DeleteTime], [isDaGuangGao]) VALUES (112, 1, N'冬季保暖外套/学生/商务', NULL, 10, 100, CAST(200.00 AS Decimal(10, 2)), N'<p>冬季保暖外套/学生/商务</p>', N'201707180744048015.jpg', 1, CAST(0x0000A7B4014536B9 AS DateTime), 0, 0, 0, 0, 0, 0, N'', NULL, 1)
INSERT [dbo].[Goods] ([GoodsID], [CatID], [GoodsName], [NameStyle], [BrandID], [GoodsStock], [ShopPrice], [Description], [Thumbnail], [IsSale], [CreateTime], [ShowOrder], [IsDelete], [IsBest], [IsNew], [IsHot], [IsPromotion], [Remark], [DeleteTime], [isDaGuangGao]) VALUES (114, 2, N'测试', NULL, 10, 100, CAST(80000.00 AS Decimal(10, 2)), N'<p>测试</p>', N'201707180913343898.jpg', 1, CAST(0x0000A7B4015DCC23 AS DateTime), 0, 0, 0, 0, 0, 0, N'', NULL, NULL)
INSERT [dbo].[Goods] ([GoodsID], [CatID], [GoodsName], [NameStyle], [BrandID], [GoodsStock], [ShopPrice], [Description], [Thumbnail], [IsSale], [CreateTime], [ShowOrder], [IsDelete], [IsBest], [IsNew], [IsHot], [IsPromotion], [Remark], [DeleteTime], [isDaGuangGao]) VALUES (115, 1, N'1231', NULL, 10, 11123, CAST(1231.00 AS Decimal(10, 2)), N'<p>123</p>', N'201707180923420881.jpg', 1, CAST(0x0000A7B401609467 AS DateTime), 0, 0, 0, 1, 0, 0, N'12312', NULL, 0)
INSERT [dbo].[Goods] ([GoodsID], [CatID], [GoodsName], [NameStyle], [BrandID], [GoodsStock], [ShopPrice], [Description], [Thumbnail], [IsSale], [CreateTime], [ShowOrder], [IsDelete], [IsBest], [IsNew], [IsHot], [IsPromotion], [Remark], [DeleteTime], [isDaGuangGao]) VALUES (116, 1, N'广告', NULL, 10, 11123, CAST(88888.00 AS Decimal(10, 2)), N'<p>casd</p>', N'201707180926029014.jpg', 1, CAST(0x0000A7B4016138B5 AS DateTime), 0, 1, 0, 1, 0, 0, N'', CAST(0x0000A7B4016155E4 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Goods] OFF
/****** Object:  Table [dbo].[Category]    Script Date: 07/18/2017 21:39:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[CatID] [int] IDENTITY(1,1) NOT NULL,
	[CatName] [varchar](90) NOT NULL,
	[Keywords] [varchar](255) NOT NULL,
	[Description] [varchar](255) NULL,
	[IsShow] [tinyint] NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CatID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类编号，自增id号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'CatID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'CatName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类的关键字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'Keywords'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类的说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否在前台页面显示 1显示; 0不显示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品分类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category'
GO
SET IDENTITY_INSERT [dbo].[Category] ON
INSERT [dbo].[Category] ([CatID], [CatName], [Keywords], [Description], [IsShow]) VALUES (1, N'上衣', N'上半身', N'春夏秋冬都得穿', 1)
INSERT [dbo].[Category] ([CatID], [CatName], [Keywords], [Description], [IsShow]) VALUES (2, N'裤子', N'下半生', N'春夏秋冬都得穿', 1)
INSERT [dbo].[Category] ([CatID], [CatName], [Keywords], [Description], [IsShow]) VALUES (3, N'帽子', N'头部', N'爱穿不穿', 1)
INSERT [dbo].[Category] ([CatID], [CatName], [Keywords], [Description], [IsShow]) VALUES (5, N'1231', N'123', N'12312', 1)
INSERT [dbo].[Category] ([CatID], [CatName], [Keywords], [Description], [IsShow]) VALUES (6, N'1231', N'1231', N'1231', 1)
INSERT [dbo].[Category] ([CatID], [CatName], [Keywords], [Description], [IsShow]) VALUES (7, N'11231', N'12321', N'12312', 0)
INSERT [dbo].[Category] ([CatID], [CatName], [Keywords], [Description], [IsShow]) VALUES (8, N'12312', N'123112312', N'12312', 1)
INSERT [dbo].[Category] ([CatID], [CatName], [Keywords], [Description], [IsShow]) VALUES (9, N'1231', N'1231123121231', N'12312', 0)
INSERT [dbo].[Category] ([CatID], [CatName], [Keywords], [Description], [IsShow]) VALUES (10, N'123', N'123', N'1231', 1)
INSERT [dbo].[Category] ([CatID], [CatName], [Keywords], [Description], [IsShow]) VALUES (11, N'测试', N'测试1·', N'擦拭即可领取奖励', 0)
INSERT [dbo].[Category] ([CatID], [CatName], [Keywords], [Description], [IsShow]) VALUES (12, N'123', N'111', N'12312', 1)
INSERT [dbo].[Category] ([CatID], [CatName], [Keywords], [Description], [IsShow]) VALUES (13, N'1233', N'12312', N'12312', 1)
INSERT [dbo].[Category] ([CatID], [CatName], [Keywords], [Description], [IsShow]) VALUES (14, N'11111', N'111', N'111', 0)
SET IDENTITY_INSERT [dbo].[Category] OFF
/****** Object:  Table [dbo].[Brand]    Script Date: 07/18/2017 21:39:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Brand](
	[BrandID] [smallint] IDENTITY(1,1) NOT NULL,
	[BrandName] [varchar](60) NOT NULL,
	[BrandLogo] [varchar](80) NULL,
	[Url] [varchar](255) NULL,
	[IsShow] [tinyint] NOT NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[BrandID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增id号,品牌编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brand', @level2type=N'COLUMN',@level2name=N'BrandID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'品牌名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brand', @level2type=N'COLUMN',@level2name=N'BrandName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传的该公司Logo图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brand', @level2type=N'COLUMN',@level2name=N'BrandLogo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'品牌的网址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brand', @level2type=N'COLUMN',@level2name=N'Url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'该品牌是否显示;0否1显示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brand', @level2type=N'COLUMN',@level2name=N'IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品品牌表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brand'
GO
SET IDENTITY_INSERT [dbo].[Brand] ON
INSERT [dbo].[Brand] ([BrandID], [BrandName], [BrandLogo], [Url], [IsShow]) VALUES (10, N'阿迪达斯', N'201707180221296188.jpg', N'www.addais.com.cn', 1)
INSERT [dbo].[Brand] ([BrandID], [BrandName], [BrandLogo], [Url], [IsShow]) VALUES (11, N'耐克', N'201707180221519167.jpg', N'www.naike.com.cn', 1)
INSERT [dbo].[Brand] ([BrandID], [BrandName], [BrandLogo], [Url], [IsShow]) VALUES (12, N'李宁', N'201707180222131309.jpg', N'www.lining.com.cn', 1)
INSERT [dbo].[Brand] ([BrandID], [BrandName], [BrandLogo], [Url], [IsShow]) VALUES (13, N'不现实', N'201707180222256652.jpg', N'www', 0)
SET IDENTITY_INSERT [dbo].[Brand] OFF
/****** Object:  Table [dbo].[Users]    Script Date: 07/18/2017 21:39:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](500) NOT NULL,
	[NickName] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[PassWord] [nvarchar](50) NOT NULL,
	[Sex] [int] NOT NULL,
	[Birthday] [datetime] NOT NULL,
	[AddressID] [int] NOT NULL,
	[RegisterTime] [datetime] NOT NULL,
	[LastLogin] [datetime] NOT NULL,
	[LastIp] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Users] ON
INSERT [dbo].[Users] ([UserID], [Email], [NickName], [UserName], [PassWord], [Sex], [Birthday], [AddressID], [RegisterTime], [LastLogin], [LastIp]) VALUES (1, N'854338015@qq.com', N'阿霖', N'854338015', N'dabaolin', 0, CAST(0x00008DC200000000 AS DateTime), 1, CAST(0x00009FCB00000000 AS DateTime), CAST(0x0000A41300000000 AS DateTime), N'476914564646')
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  Table [dbo].[Attribute]    Script Date: 07/18/2017 21:39:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attribute](
	[AttrID] [int] IDENTITY(1,1) NOT NULL,
	[GoodsTyopeID] [int] NOT NULL,
	[AttrName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Attribute] PRIMARY KEY CLUSTERED 
(
	[AttrID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Attribute] ON
INSERT [dbo].[Attribute] ([AttrID], [GoodsTyopeID], [AttrName]) VALUES (1, 1, N'尺寸')
INSERT [dbo].[Attribute] ([AttrID], [GoodsTyopeID], [AttrName]) VALUES (2, 1, N'肩宽')
INSERT [dbo].[Attribute] ([AttrID], [GoodsTyopeID], [AttrName]) VALUES (3, 2, N'腰围')
SET IDENTITY_INSERT [dbo].[Attribute] OFF
/****** Object:  Table [dbo].[Order]    Script Date: 07/18/2017 21:39:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[OrderSN] [nvarchar](50) NOT NULL,
	[UserId] [int] NOT NULL,
	[OrderStatus] [int] NOT NULL,
	[ShippingStatus] [int] NOT NULL,
	[PayStatus] [int] NOT NULL,
	[OrderMsg] [nvarchar](500) NOT NULL,
	[ShippingMethod] [int] NOT NULL,
	[PayId] [int] NOT NULL,
	[GoodsAmout] [decimal](10, 2) NOT NULL,
	[ShippingMoney] [decimal](10, 2) NOT NULL,
	[OrderAmount] [decimal](10, 2) NOT NULL,
	[Payment] [decimal](10, 2) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[ConfirmTime] [datetime] NOT NULL,
	[PayTime] [datetime] NOT NULL,
	[ShippingTime] [datetime] NOT NULL,
	[ReceiptTime] [datetime] NOT NULL,
	[Address] [nvarchar](250) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT [dbo].[Order] ([OrderId], [OrderSN], [UserId], [OrderStatus], [ShippingStatus], [PayStatus], [OrderMsg], [ShippingMethod], [PayId], [GoodsAmout], [ShippingMoney], [OrderAmount], [Payment], [CreateTime], [ConfirmTime], [PayTime], [ShippingTime], [ReceiptTime], [Address]) VALUES (89, N'14324', 1, 3, 3, 0, N'别摔碎', 12, 10, CAST(800.00 AS Decimal(10, 2)), CAST(20.00 AS Decimal(10, 2)), CAST(820.00 AS Decimal(10, 2)), CAST(820.00 AS Decimal(10, 2)), CAST(0x00009CF100000000 AS DateTime), CAST(0x00009CF100000000 AS DateTime), CAST(0x00009CF100000000 AS DateTime), CAST(0x00009CF100000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), N'南昌市')
INSERT [dbo].[Order] ([OrderId], [OrderSN], [UserId], [OrderStatus], [ShippingStatus], [PayStatus], [OrderMsg], [ShippingMethod], [PayId], [GoodsAmout], [ShippingMoney], [OrderAmount], [Payment], [CreateTime], [ConfirmTime], [PayTime], [ShippingTime], [ReceiptTime], [Address]) VALUES (90, N'234234', 1, 4, 1, 1, N'别摔碎', 13, 11, CAST(800.00 AS Decimal(10, 2)), CAST(20.00 AS Decimal(10, 2)), CAST(820.00 AS Decimal(10, 2)), CAST(820.00 AS Decimal(10, 2)), CAST(0x00009CF100000000 AS DateTime), CAST(0x00009CF100000000 AS DateTime), CAST(0x00009CF100000000 AS DateTime), CAST(0x00009CF100000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), N'四川省')
INSERT [dbo].[Order] ([OrderId], [OrderSN], [UserId], [OrderStatus], [ShippingStatus], [PayStatus], [OrderMsg], [ShippingMethod], [PayId], [GoodsAmout], [ShippingMoney], [OrderAmount], [Payment], [CreateTime], [ConfirmTime], [PayTime], [ShippingTime], [ReceiptTime], [Address]) VALUES (91, N'234234234', 1, 5, 0, 2, N'别摔碎', 14, 12, CAST(800.00 AS Decimal(10, 2)), CAST(20.00 AS Decimal(10, 2)), CAST(820.00 AS Decimal(10, 2)), CAST(820.00 AS Decimal(10, 2)), CAST(0x00009CF100000000 AS DateTime), CAST(0x00009CF100000000 AS DateTime), CAST(0x00009CF100000000 AS DateTime), CAST(0x00009CF100000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), N'绵阳市')
INSERT [dbo].[Order] ([OrderId], [OrderSN], [UserId], [OrderStatus], [ShippingStatus], [PayStatus], [OrderMsg], [ShippingMethod], [PayId], [GoodsAmout], [ShippingMoney], [OrderAmount], [Payment], [CreateTime], [ConfirmTime], [PayTime], [ShippingTime], [ReceiptTime], [Address]) VALUES (92, N'1231321', 1, 4, 0, 2, N'654165', 14, 11, CAST(555.00 AS Decimal(10, 2)), CAST(55.00 AS Decimal(10, 2)), CAST(555.00 AS Decimal(10, 2)), CAST(456456.00 AS Decimal(10, 2)), CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCE00000000 AS DateTime), N'阿大使')
INSERT [dbo].[Order] ([OrderId], [OrderSN], [UserId], [OrderStatus], [ShippingStatus], [PayStatus], [OrderMsg], [ShippingMethod], [PayId], [GoodsAmout], [ShippingMoney], [OrderAmount], [Payment], [CreateTime], [ConfirmTime], [PayTime], [ShippingTime], [ReceiptTime], [Address]) VALUES (93, N'14324', 1, 3, 3, 0, N'别摔碎', 14, 10, CAST(800.00 AS Decimal(10, 2)), CAST(20.00 AS Decimal(10, 2)), CAST(820.00 AS Decimal(10, 2)), CAST(820.00 AS Decimal(10, 2)), CAST(0x00009CF100000000 AS DateTime), CAST(0x00009CF100000000 AS DateTime), CAST(0x00009CF100000000 AS DateTime), CAST(0x00009CF100000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), N'南昌市')
INSERT [dbo].[Order] ([OrderId], [OrderSN], [UserId], [OrderStatus], [ShippingStatus], [PayStatus], [OrderMsg], [ShippingMethod], [PayId], [GoodsAmout], [ShippingMoney], [OrderAmount], [Payment], [CreateTime], [ConfirmTime], [PayTime], [ShippingTime], [ReceiptTime], [Address]) VALUES (94, N'234234', 1, 4, 1, 1, N'别摔碎', 13, 12, CAST(800.00 AS Decimal(10, 2)), CAST(20.00 AS Decimal(10, 2)), CAST(820.00 AS Decimal(10, 2)), CAST(820.00 AS Decimal(10, 2)), CAST(0x00009CF100000000 AS DateTime), CAST(0x00009CF100000000 AS DateTime), CAST(0x00009CF100000000 AS DateTime), CAST(0x00009CF100000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), N'四川省')
INSERT [dbo].[Order] ([OrderId], [OrderSN], [UserId], [OrderStatus], [ShippingStatus], [PayStatus], [OrderMsg], [ShippingMethod], [PayId], [GoodsAmout], [ShippingMoney], [OrderAmount], [Payment], [CreateTime], [ConfirmTime], [PayTime], [ShippingTime], [ReceiptTime], [Address]) VALUES (95, N'234234234', 1, 5, 0, 2, N'别摔碎', 12, 11, CAST(800.00 AS Decimal(10, 2)), CAST(20.00 AS Decimal(10, 2)), CAST(820.00 AS Decimal(10, 2)), CAST(820.00 AS Decimal(10, 2)), CAST(0x00009CF100000000 AS DateTime), CAST(0x00009CF100000000 AS DateTime), CAST(0x00009CF100000000 AS DateTime), CAST(0x00009CF100000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), N'绵阳市')
INSERT [dbo].[Order] ([OrderId], [OrderSN], [UserId], [OrderStatus], [ShippingStatus], [PayStatus], [OrderMsg], [ShippingMethod], [PayId], [GoodsAmout], [ShippingMoney], [OrderAmount], [Payment], [CreateTime], [ConfirmTime], [PayTime], [ShippingTime], [ReceiptTime], [Address]) VALUES (96, N'1231321', 1, 4, 0, 2, N'654165', 12, 12, CAST(555.00 AS Decimal(10, 2)), CAST(55.00 AS Decimal(10, 2)), CAST(555.00 AS Decimal(10, 2)), CAST(456456.00 AS Decimal(10, 2)), CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCE00000000 AS DateTime), N'阿大使')
SET IDENTITY_INSERT [dbo].[Order] OFF
/****** Object:  View [dbo].[View_2]    Script Date: 07/18/2017 21:39:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_2]
AS
SELECT     s.UserID, s.Email, s.NickName, s.UserName, s.PassWord, s.Sex, s.Birthday, u.Tel, s.RegisterTime, s.LastLogin, s.LastIp, u.BestTimt
FROM         dbo.Users AS s INNER JOIN
                      dbo.UserAddress AS u ON s.AddressID = u.AddressId
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "s"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 268
               Right = 180
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "u"
            Begin Extent = 
               Top = 6
               Left = 218
               Bottom = 274
               Right = 351
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_2'
GO
/****** Object:  View [dbo].[View_1]    Script Date: 07/18/2017 21:39:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_1]
AS
SELECT     o.OrderId, o.OrderSN, u.NickName, o.OrderStatus, o.ShippingStatus, o.PayStatus, o.OrderMsg, s.ShippingName, p.PayName, o.GoodsAmout, o.ShippingMoney, 
                      o.OrderAmount, o.Payment, o.CreateTime, o.ConfirmTime, o.PayTime, o.ShippingTime, o.ReceiptTime
FROM         dbo.Users AS u INNER JOIN
                      dbo.UserAddress AS a ON u.AddressID = a.AddressId INNER JOIN
                      dbo.[Order] AS o ON u.UserID = o.UserId INNER JOIN
                      dbo.Shipping AS s ON o.ShippingMethod = s.ShippingId INNER JOIN
                      dbo.PayMent AS p ON o.PayId = p.PayId
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "u"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 241
               Right = 180
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "a"
            Begin Extent = 
               Top = 6
               Left = 218
               Bottom = 236
               Right = 351
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "s"
            Begin Extent = 
               Top = 6
               Left = 389
               Bottom = 182
               Right = 536
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "p"
            Begin Extent = 
               Top = 6
               Left = 574
               Bottom = 189
               Right = 707
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "o"
            Begin Extent = 
               Top = 6
               Left = 745
               Bottom = 278
               Right = 901
            End
            DisplayFlags = 280
            TopColumn = 3
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
/****** Object:  Default [DF_Goods_IsSale]    Script Date: 07/18/2017 21:39:08 ******/
ALTER TABLE [dbo].[Goods] ADD  CONSTRAINT [DF_Goods_IsSale]  DEFAULT ((1)) FOR [IsSale]
GO
/****** Object:  Default [DF_Goods_CreateTime]    Script Date: 07/18/2017 21:39:08 ******/
ALTER TABLE [dbo].[Goods] ADD  CONSTRAINT [DF_Goods_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_Goods_ShowOrder]    Script Date: 07/18/2017 21:39:08 ******/
ALTER TABLE [dbo].[Goods] ADD  CONSTRAINT [DF_Goods_ShowOrder]  DEFAULT ((0)) FOR [ShowOrder]
GO
/****** Object:  Default [DF_Goods_IsDelete]    Script Date: 07/18/2017 21:39:08 ******/
ALTER TABLE [dbo].[Goods] ADD  CONSTRAINT [DF_Goods_IsDelete]  DEFAULT ((0)) FOR [IsDelete]
GO
/****** Object:  Default [DF_Category_IsShow]    Script Date: 07/18/2017 21:39:08 ******/
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_IsShow]  DEFAULT ((1)) FOR [IsShow]
GO
/****** Object:  Default [DF_Brand_IsShow]    Script Date: 07/18/2017 21:39:08 ******/
ALTER TABLE [dbo].[Brand] ADD  CONSTRAINT [DF_Brand_IsShow]  DEFAULT ((1)) FOR [IsShow]
GO
/****** Object:  ForeignKey [FK_Users_UserAddress]    Script Date: 07/18/2017 21:39:08 ******/
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_UserAddress] FOREIGN KEY([AddressID])
REFERENCES [dbo].[UserAddress] ([AddressId])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_UserAddress]
GO
/****** Object:  ForeignKey [FK_Attribute_Category]    Script Date: 07/18/2017 21:39:08 ******/
ALTER TABLE [dbo].[Attribute]  WITH CHECK ADD  CONSTRAINT [FK_Attribute_Category] FOREIGN KEY([AttrID])
REFERENCES [dbo].[Category] ([CatID])
GO
ALTER TABLE [dbo].[Attribute] CHECK CONSTRAINT [FK_Attribute_Category]
GO
/****** Object:  ForeignKey [FK_Order_PayMent]    Script Date: 07/18/2017 21:39:08 ******/
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_PayMent] FOREIGN KEY([PayId])
REFERENCES [dbo].[PayMent] ([PayId])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_PayMent]
GO
/****** Object:  ForeignKey [FK_Order_Shipping]    Script Date: 07/18/2017 21:39:08 ******/
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Shipping] FOREIGN KEY([ShippingMethod])
REFERENCES [dbo].[Shipping] ([ShippingId])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Shipping]
GO
/****** Object:  ForeignKey [FK_Order_Users]    Script Date: 07/18/2017 21:39:08 ******/
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Users]
GO
