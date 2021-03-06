USE [master]
GO
/****** Object:  Database [ShoppingCart]    Script Date: 3/8/2018 4:37:41 PM ******/
CREATE DATABASE [ShoppingCart]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShoppingCart', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ShoppingCart.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ShoppingCart_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ShoppingCart_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ShoppingCart] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShoppingCart].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShoppingCart] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShoppingCart] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShoppingCart] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShoppingCart] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShoppingCart] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShoppingCart] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShoppingCart] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShoppingCart] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShoppingCart] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShoppingCart] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShoppingCart] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShoppingCart] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShoppingCart] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShoppingCart] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShoppingCart] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ShoppingCart] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShoppingCart] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShoppingCart] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShoppingCart] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShoppingCart] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShoppingCart] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShoppingCart] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShoppingCart] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ShoppingCart] SET  MULTI_USER 
GO
ALTER DATABASE [ShoppingCart] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShoppingCart] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShoppingCart] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShoppingCart] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ShoppingCart] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ShoppingCart]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 3/8/2018 4:37:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[CartId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NULL,
	[Paid] [bit] NULL,
	[Purchasedate] [datetime] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[CartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 3/8/2018 4:37:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](50) NULL,
	[ProductPrice] [decimal](18, 0) NULL,
	[ProductImage] [varchar](50) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 3/8/2018 4:37:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_dbo.User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Cart] ON 

INSERT [dbo].[Cart] ([CartId], [UserId], [ProductId], [Quantity], [Paid], [Purchasedate]) VALUES (1, 1, 1, 2, 1, CAST(N'2018-03-08 11:47:28.617' AS DateTime))
INSERT [dbo].[Cart] ([CartId], [UserId], [ProductId], [Quantity], [Paid], [Purchasedate]) VALUES (2, 1, 2, 7, 1, CAST(N'2018-03-08 11:47:28.617' AS DateTime))
INSERT [dbo].[Cart] ([CartId], [UserId], [ProductId], [Quantity], [Paid], [Purchasedate]) VALUES (3, 1, 3, 3, 1, CAST(N'2018-03-08 11:47:28.617' AS DateTime))
INSERT [dbo].[Cart] ([CartId], [UserId], [ProductId], [Quantity], [Paid], [Purchasedate]) VALUES (4, 1, 6, 2, 1, CAST(N'2018-03-08 11:47:28.617' AS DateTime))
INSERT [dbo].[Cart] ([CartId], [UserId], [ProductId], [Quantity], [Paid], [Purchasedate]) VALUES (5, 1, 5, 8, 1, CAST(N'2018-03-08 11:47:28.617' AS DateTime))
INSERT [dbo].[Cart] ([CartId], [UserId], [ProductId], [Quantity], [Paid], [Purchasedate]) VALUES (6, 1, 10, 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Cart] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductPrice], [ProductImage]) VALUES (1, N'Kurung', CAST(180 AS Decimal(18, 0)), N'images/d.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductPrice], [ProductImage]) VALUES (2, N'Jubah', CAST(100 AS Decimal(18, 0)), N'images/g.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductPrice], [ProductImage]) VALUES (3, N'Floral', CAST(150 AS Decimal(18, 0)), N'images/s.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductPrice], [ProductImage]) VALUES (4, N'White Dress', CAST(200 AS Decimal(18, 0)), N'images/b.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductPrice], [ProductImage]) VALUES (5, N'Plain Jubah', CAST(120 AS Decimal(18, 0)), N'images/v.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductPrice], [ProductImage]) VALUES (6, N'Dress', CAST(60 AS Decimal(18, 0)), N'images/f.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductPrice], [ProductImage]) VALUES (7, N'CalaRaya', CAST(100 AS Decimal(18, 0)), N'images/h.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductPrice], [ProductImage]) VALUES (8, N'Abaya', CAST(120 AS Decimal(18, 0)), N'images/x.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductPrice], [ProductImage]) VALUES (9, N'Floral Kurung', CAST(80 AS Decimal(18, 0)), N'images/e.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductPrice], [ProductImage]) VALUES (10, N' Emerald Peplum', CAST(130 AS Decimal(18, 0)), N'images/z.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductPrice], [ProductImage]) VALUES (11, N'Flowy Blause', CAST(75 AS Decimal(18, 0)), N'images/c.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductPrice], [ProductImage]) VALUES (12, N'Ladies Shirt', CAST(95 AS Decimal(18, 0)), N'images/j.jpg')
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserId], [Username], [Password]) VALUES (1, N'wawa', N'wawa1995')
INSERT [dbo].[User] ([UserId], [Username], [Password]) VALUES (2, N'harith', N'harith63')
SET IDENTITY_INSERT [dbo].[User] OFF
/****** Object:  StoredProcedure [dbo].[AddToCart]    Script Date: 3/8/2018 4:37:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddToCart]
	-- Add the parameters for the stored procedure here
		@UserId int,
		@ProductId int

AS

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
IF EXISTS(select * from Cart where  UserId=@UserId and ProductId=@ProductId and Paid is null)
BEGIN

UPDATE [dbo].[Cart]
   SET [Quantity] = (select Quantity from Cart where UserId=@UserId and ProductId=@ProductId and Paid is null)+1
 WHERE UserId=@UserId and ProductId=@ProductId and Paid is null

END

Else
Begin

INSERT INTO [dbo].[Cart]
           ([UserId]
           ,[ProductId]
           ,[Quantity])
     VALUES
           (@UserId
           ,@ProductId
           ,1)
END

GO
/****** Object:  StoredProcedure [dbo].[Authentication]    Script Date: 3/8/2018 4:37:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Authentication]
	-- Add the parameters for the stored procedure here
	@Username varchar(50),
	@Password varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here


SELECT [UserId]
      ,[Username]
      ,[Password]
  FROM [dbo].[User] where Username=@Username and [Password]=@Password



END

GO
/****** Object:  StoredProcedure [dbo].[CartItem]    Script Date: 3/8/2018 4:37:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CartItem]
	-- Add the parameters for the stored procedure here
	@UserId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	
SELECT P.ProductImage,P.ProductName,P.ProductPrice,C.Quantity,(P.ProductPrice*C.Quantity) as Total 

From Product P inner join Cart C on C.CartId= P.ProductId

Where C.UserId=UserId and C.Paid is null

END



GO
/****** Object:  StoredProcedure [dbo].[Checkout]    Script Date: 3/8/2018 4:37:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Checkout]
	-- Add the parameters for the stored procedure here
	@UserId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here


UPDATE [dbo].[Cart]
   SET[Paid] = 'TRUE',
      [Purchasedate] = GETDATE()

 WHERE UserId=@UserId and Paid is null


END


GO
/****** Object:  StoredProcedure [dbo].[ProductSelectAll]    Script Date: 3/8/2018 4:37:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ProductSelectAll] 
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

SELECT [ProductId]
      ,[ProductName]
      ,[ProductPrice]
      ,[ProductImage]
  FROM [dbo].[Product]


END

GO
USE [master]
GO
ALTER DATABASE [ShoppingCart] SET  READ_WRITE 
GO
