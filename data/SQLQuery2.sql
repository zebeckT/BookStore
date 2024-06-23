USE [master]
GO
/****** Object:  Database [BACDEPZAI_PRJ301]    Script Date: 6/16/2024 7:02:20 PM ******/
CREATE DATABASE [BACDEPZAI_PRJ301]
GO
USE [BACDEPZAI_PRJ301]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 6/16/2024 7:02:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 6/16/2024 7:02:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NOT NULL,
	[image] [nvarchar](max) NULL,
	[quantity] [int] NOT NULL,
	[price] [float] NOT NULL,
	[description] [nvarchar](max) NULL,
	[categoryid] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 
GO
INSERT [dbo].[Category] ([id], [name]) VALUES (1, N'văn học')
GO
INSERT [dbo].[Category] ([id], [name]) VALUES (2, N'khoa học')
GO
INSERT [dbo].[Category] ([id], [name]) VALUES (3, N'kinh tế')
GO
INSERT [dbo].[Category] ([id], [name]) VALUES (4, N'anime')
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (1, N'Short Circuit', N'http://dummyimage.com/197x135.png/cc0000/ffffff', 75, 66, N'PO Box 51020', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (2, N'Dogs in Space', N'http://dummyimage.com/188x179.png/cc0000/ffffff', 72, 11, N'Room 1830', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (3, N'Letter to Three Wives, A', N'http://dummyimage.com/217x132.png/dddddd/000000', 74, 31, N'13th Floor', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (4, N'Marilena de la P7', N'http://dummyimage.com/209x176.png/5fa2dd/ffffff', 29, 7, N'Suite 86', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (5, N'Frankenfish', N'http://dummyimage.com/120x191.png/cc0000/ffffff', 45, 17, N'2nd Floor', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (6, N'Matrix Reloaded, The', N'http://dummyimage.com/238x127.png/ff4444/ffffff', 31, 78, N'17th Floor', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (7, N'Babysitter, The', N'http://dummyimage.com/244x123.png/dddddd/000000', 57, 100, N'Room 1383', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (8, N'Weekend at Bernie''s II', N'http://dummyimage.com/140x218.png/ff4444/ffffff', 41, 79, N'11th Floor', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (9, N'Maleficent', N'http://dummyimage.com/120x152.png/cc0000/ffffff', 94, 68, N'Apt 125', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (10, N'Lonely Wife, The (Charulata)', N'http://dummyimage.com/126x178.png/5fa2dd/ffffff', 75, 14, N'PO Box 27825', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (11, N'Beautiful Losers', N'http://dummyimage.com/107x131.png/ff4444/ffffff', 30, 77, N'Apt 256', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (12, N'Big, Large and Verdone', N'http://dummyimage.com/212x240.png/5fa2dd/ffffff', 84, 91, N'Suite 39', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (13, N'Assault on Wall Street ', N'http://dummyimage.com/169x250.png/dddddd/000000', 40, 96, N'PO Box 45843', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (14, N'Hairspray', N'http://dummyimage.com/171x234.png/5fa2dd/ffffff', 37, 64, N'Apt 522', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (15, N'Limit (Limite)', N'http://dummyimage.com/243x192.png/cc0000/ffffff', 41, 78, N'Room 1782', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (16, N'Sugarbaby', N'http://dummyimage.com/242x147.png/dddddd/000000', 27, 28, N'Suite 16', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (17, N'Inconvenient Truth, An', N'http://dummyimage.com/158x103.png/dddddd/000000', 56, 8, N'Room 1736', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (18, N'Bridge Too Far, A', N'http://dummyimage.com/140x233.png/dddddd/000000', 18, 10, N'2nd Floor', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (19, N'Miss You Can Do It', N'http://dummyimage.com/232x121.png/cc0000/ffffff', 1, 3, N'Suite 14', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (20, N'Yol (a.k.a. The Way)', N'http://dummyimage.com/172x233.png/cc0000/ffffff', 72, 26, N'Room 180', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (21, N'El Escarabajo de Oro', N'http://dummyimage.com/225x217.png/dddddd/000000', 81, 69, N'Room 522', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (22, N'Final Destination', N'http://dummyimage.com/249x153.png/5fa2dd/ffffff', 12, 52, N'Suite 36', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (23, N'I Was Monty''s Double', N'http://dummyimage.com/142x150.png/ff4444/ffffff', 3, 3, N'Room 1859', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (24, N'The Fox and the Hound 2', N'http://dummyimage.com/133x149.png/dddddd/000000', 41, 6, N'Suite 2', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (25, N'Dead Calm', N'http://dummyimage.com/152x128.png/cc0000/ffffff', 32, 64, N'Suite 88', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (26, N'Woman Is a Woman, A (femme est une femme, Une)', N'http://dummyimage.com/164x247.png/dddddd/000000', 6, 30, N'Apt 736', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (27, N'Time Code', N'http://dummyimage.com/164x148.png/ff4444/ffffff', 86, 81, N'17th Floor', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (28, N'Gentlemen', N'http://dummyimage.com/113x157.png/cc0000/ffffff', 50, 83, N'PO Box 73411', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (29, N'Puff, Puff, Pass', N'http://dummyimage.com/143x221.png/dddddd/000000', 81, 69, N'1st Floor', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (30, N'Postcards From the Edge', N'http://dummyimage.com/207x148.png/cc0000/ffffff', 97, 81, N'Apt 235', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (31, N'Last Night', N'http://dummyimage.com/180x171.png/5fa2dd/ffffff', 66, 72, N'Suite 23', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (32, N'Numb', N'http://dummyimage.com/239x196.png/ff4444/ffffff', 20, 90, N'Apt 1575', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (33, N'Cats', N'http://dummyimage.com/100x100.png/ff4444/ffffff', 44, 42, N'8th Floor', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (34, N'Planes, Trains & Automobiles', N'http://dummyimage.com/181x216.png/cc0000/ffffff', 13, 85, N'Suite 96', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (35, N'Madison Avenue', N'http://dummyimage.com/229x173.png/cc0000/ffffff', 49, 87, N'Apt 1199', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (36, N'Well Digger''s Daughter, The (La fille du puisatier)', N'http://dummyimage.com/122x222.png/ff4444/ffffff', 91, 50, N'Room 590', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (37, N'Dallas Buyers Club', N'http://dummyimage.com/113x233.png/cc0000/ffffff', 26, 69, N'Room 35', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (38, N'Bonnie and Clyde', N'http://dummyimage.com/149x164.png/cc0000/ffffff', 99, 30, N'PO Box 99517', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (39, N'24 Hour Party People', N'http://dummyimage.com/230x167.png/cc0000/ffffff', 50, 28, N'Suite 51', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (40, N'Diva', N'http://dummyimage.com/116x165.png/cc0000/ffffff', 44, 99, N'PO Box 86103', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (41, N'Misérables, Les', N'http://dummyimage.com/148x127.png/dddddd/000000', 72, 33, N'Room 500', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (42, N'Claim, The', N'http://dummyimage.com/145x234.png/dddddd/000000', 75, 50, N'14th Floor', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (43, N'Ambushers, The', N'http://dummyimage.com/112x211.png/dddddd/000000', 85, 30, N'Apt 230', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (44, N'Ghost Writer, The', N'http://dummyimage.com/142x229.png/ff4444/ffffff', 39, 52, N'Room 1578', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (45, N'Like Dandelion Dust', N'http://dummyimage.com/143x236.png/5fa2dd/ffffff', 17, 83, N'Suite 51', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (46, N'Hurricane, The', N'http://dummyimage.com/122x118.png/cc0000/ffffff', 53, 23, N'Apt 114', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (47, N'Shoot First, Die Later', N'http://dummyimage.com/215x235.png/dddddd/000000', 71, 8, N'PO Box 21972', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (48, N'Repentance', N'http://dummyimage.com/101x175.png/5fa2dd/ffffff', 68, 87, N'PO Box 95539', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (49, N'Trust the Man', N'http://dummyimage.com/235x152.png/cc0000/ffffff', 13, 15, N'Suite 84', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (50, N'Frankenstein Meets the Wolf Man', N'http://dummyimage.com/167x238.png/dddddd/000000', 19, 57, N'Room 1195', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (51, N'Pepe', N'http://dummyimage.com/195x109.png/ff4444/ffffff', 47, 81, N'Suite 3', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (52, N'How Wang-Fo Was Saved (Comment Wang-Fo fut sauvé)', N'http://dummyimage.com/158x186.png/dddddd/000000', 29, 34, N'Apt 528', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (53, N'Route Irish', N'http://dummyimage.com/163x161.png/cc0000/ffffff', 84, 6, N'PO Box 49311', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (54, N'Like Minds (Murderous Intent)', N'http://dummyimage.com/116x185.png/ff4444/ffffff', 8, 74, N'2nd Floor', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (55, N'Out of Towners, The', N'http://dummyimage.com/221x225.png/dddddd/000000', 3, 45, N'PO Box 79828', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (56, N'Comfort and Joy', N'http://dummyimage.com/176x179.png/ff4444/ffffff', 7, 62, N'Apt 195', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (57, N'One-Eyed Monster', N'http://dummyimage.com/213x128.png/cc0000/ffffff', 7, 60, N'2nd Floor', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (58, N'Barbie: A Fashion Fairytale', N'http://dummyimage.com/136x130.png/dddddd/000000', 1, 29, N'Room 1360', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (59, N'Interrupted Melody', N'http://dummyimage.com/142x127.png/cc0000/ffffff', 17, 15, N'Apt 1963', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (60, N'Star Trek: Nemesis', N'http://dummyimage.com/218x133.png/ff4444/ffffff', 18, 10, N'Apt 935', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (61, N'Shake Hands with the Devil', N'http://dummyimage.com/109x147.png/5fa2dd/ffffff', 86, 37, N'Suite 17', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (62, N'Pest, The', N'http://dummyimage.com/244x151.png/5fa2dd/ffffff', 62, 63, N'PO Box 25956', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (63, N'Home Before Dark', N'http://dummyimage.com/102x139.png/cc0000/ffffff', 49, 75, N'Room 531', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (64, N'Frontière(s)', N'http://dummyimage.com/101x188.png/ff4444/ffffff', 56, 11, N'Suite 41', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (65, N'Young in Heart, The', N'http://dummyimage.com/228x137.png/ff4444/ffffff', 48, 76, N'Suite 24', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (66, N'Shoot First, Die Later', N'http://dummyimage.com/128x162.png/cc0000/ffffff', 38, 12, N'Apt 1466', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (67, N'Batman', N'http://dummyimage.com/238x113.png/cc0000/ffffff', 16, 39, N'PO Box 60582', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (68, N'Warrendale', N'http://dummyimage.com/243x177.png/ff4444/ffffff', 3, 68, N'4th Floor', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (69, N'Warlock', N'http://dummyimage.com/169x239.png/dddddd/000000', 88, 91, N'Room 409', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (70, N'Fat Kid Rules the World', N'http://dummyimage.com/210x148.png/cc0000/ffffff', 62, 19, N'Suite 48', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (71, N'Nine Lives', N'http://dummyimage.com/186x167.png/cc0000/ffffff', 16, 90, N'Apt 701', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (72, N'Free The Mind', N'http://dummyimage.com/121x207.png/5fa2dd/ffffff', 3, 40, N'Suite 70', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (73, N'Member of the Wedding, The', N'http://dummyimage.com/181x200.png/5fa2dd/ffffff', 29, 36, N'5th Floor', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (74, N'Foolish Wives', N'http://dummyimage.com/224x127.png/dddddd/000000', 75, 72, N'Apt 1249', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (75, N'Last Seven, The', N'http://dummyimage.com/243x137.png/5fa2dd/ffffff', 41, 71, N'PO Box 83244', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (76, N'Dragonslayer', N'http://dummyimage.com/159x139.png/dddddd/000000', 57, 69, N'PO Box 91090', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (77, N'Secretariat', N'http://dummyimage.com/131x180.png/ff4444/ffffff', 69, 11, N'Suite 97', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (78, N'I Became a Criminal (They Made Me a Fugitive)', N'http://dummyimage.com/162x133.png/5fa2dd/ffffff', 38, 96, N'3rd Floor', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (79, N'Sister Act', N'http://dummyimage.com/220x130.png/cc0000/ffffff', 18, 56, N'Room 885', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (80, N'''night Mother', N'http://dummyimage.com/180x168.png/cc0000/ffffff', 24, 98, N'6th Floor', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (81, N'Carried Away', N'http://dummyimage.com/221x144.png/dddddd/000000', 81, 66, N'12th Floor', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (82, N'Olympian Holiday (Loma) ', N'http://dummyimage.com/206x220.png/ff4444/ffffff', 90, 84, N'19th Floor', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (83, N'Star Witness, The', N'http://dummyimage.com/116x248.png/dddddd/000000', 33, 89, N'PO Box 80980', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (84, N'Let Him Have It', N'http://dummyimage.com/167x103.png/ff4444/ffffff', 57, 76, N'10th Floor', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (85, N'Breaking Up', N'http://dummyimage.com/159x220.png/cc0000/ffffff', 72, 85, N'PO Box 57027', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (86, N'Rita, Sue and Bob Too!', N'http://dummyimage.com/172x198.png/ff4444/ffffff', 43, 42, N'PO Box 21607', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (87, N'Big Kahuna, The', N'http://dummyimage.com/210x126.png/ff4444/ffffff', 28, 64, N'Room 1319', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (88, N'Chinese Ghost Story, A (Sinnui yauwan)', N'http://dummyimage.com/135x229.png/cc0000/ffffff', 98, 11, N'14th Floor', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (89, N'Widows'' Peak', N'http://dummyimage.com/172x241.png/cc0000/ffffff', 57, 51, N'Apt 605', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (90, N'Seven Thieves', N'http://dummyimage.com/188x136.png/dddddd/000000', 92, 75, N'Suite 91', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (91, N'Whisper of the Heart (Mimi wo sumaseba)', N'http://dummyimage.com/150x128.png/cc0000/ffffff', 24, 100, N'PO Box 4911', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (92, N'Gamera vs. Jiger', N'http://dummyimage.com/197x200.png/dddddd/000000', 58, 3, N'9th Floor', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (93, N'Author! Author!', N'http://dummyimage.com/125x239.png/ff4444/ffffff', 46, 47, N'Suite 29', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (94, N'Beach Boys: An American Family, The', N'http://dummyimage.com/111x156.png/5fa2dd/ffffff', 32, 3, N'Room 1778', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (95, N'Glass Web, The', N'http://dummyimage.com/154x233.png/cc0000/ffffff', 23, 13, N'8th Floor', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (96, N'Black Dog', N'http://dummyimage.com/152x160.png/5fa2dd/ffffff', 21, 60, N'Room 65', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (97, N'National Treasure: Book of Secrets', N'http://dummyimage.com/189x158.png/5fa2dd/ffffff', 22, 35, N'PO Box 18791', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (98, N'King of Marvin Gardens, The', N'http://dummyimage.com/134x157.png/dddddd/000000', 61, 88, N'Suite 60', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (99, N'Bulletproof Monk', N'http://dummyimage.com/201x140.png/dddddd/000000', 91, 25, N'Room 243', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryid]) VALUES (100, N'Kings of Recycling (Kierrätyksen kuninkaat)', N'http://dummyimage.com/124x114.png/ff4444/ffffff', 61, 80, N'Apt 128', 1)
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([categoryid])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
USE [master]
GO
ALTER DATABASE [BACDEPZAI_PRJ301] SET  READ_WRITE 
GO
