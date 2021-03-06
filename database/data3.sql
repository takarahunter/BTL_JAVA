USE [spring_security_demo_encrypted]
GO
/****** Object:  Table [dbo].[authorities]    Script Date: 5/9/2022 4:28:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[authorities](
	[username] [varchar](50) NULL,
	[authority] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 5/9/2022 4:28:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[username] [varchar](50) NOT NULL,
	[password] [varchar](68) NULL,
	[enabled] [tinyint] NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[authorities] ([username], [authority]) VALUES (N'john', N'ROLE_EMPLOYEE')
INSERT [dbo].[authorities] ([username], [authority]) VALUES (N'mary', N'ROLE_EMPLOYEE')
INSERT [dbo].[authorities] ([username], [authority]) VALUES (N'mary', N'ROLE_MANAGER')
INSERT [dbo].[authorities] ([username], [authority]) VALUES (N'susan', N'ROLE_EMPLOYEE')
INSERT [dbo].[authorities] ([username], [authority]) VALUES (N'susan', N'ROLE_ADMIN')
INSERT [dbo].[authorities] ([username], [authority]) VALUES (N'nguyen', N'ROLE_EMPLOYEE')
INSERT [dbo].[authorities] ([username], [authority]) VALUES (N'ADMIN', NULL)
INSERT [dbo].[authorities] ([username], [authority]) VALUES (N'nhatrang', N'ROLE_EMPLOYEE')
INSERT [dbo].[authorities] ([username], [authority]) VALUES (N'nguyen123', N'ROLE_EMPLOYEE')
GO
INSERT [dbo].[users] ([username], [password], [enabled]) VALUES (N'ADMIN', N'{bcrypt}$2a$10$12tNGY/2mOywEOYufGcLnuICjFl/Z3F/FWl4UAq2zcqUwZbFm/mdW', 1)
INSERT [dbo].[users] ([username], [password], [enabled]) VALUES (N'john', N'{bcrypt}$2a$10$12tNGY/2mOywEOYufGcLnuICjFl/Z3F/FWl4UAq2zcqUwZbFm/mdW', 1)
INSERT [dbo].[users] ([username], [password], [enabled]) VALUES (N'mary', N'{bcrypt}$2a$10$9bWMlwdxwB.y6cUMSNjXTe4sFqkhWqXZSQpsKs6Pz6BbXklMggEl6', 1)
INSERT [dbo].[users] ([username], [password], [enabled]) VALUES (N'nguyen', N'{bcrypt}$2a$10$6gIH.bGHnF2nFLQp8tusXuHT9NgKnRg9orHKyhQLBiSEW75ctqoce', 1)
INSERT [dbo].[users] ([username], [password], [enabled]) VALUES (N'nguyen123', N'{bcrypt}$2a$10$hD/KpwlMS2FgxD0dH8jIZuFtTdS3WDrhB8ffBhaI33pm3gZdOr9jy', 1)
INSERT [dbo].[users] ([username], [password], [enabled]) VALUES (N'nhatrang', N'{bcrypt}$2a$10$OJ0g6TMT4lZaE3wiA.G30.3eAcLQpteUFIAGQghA7pYOaSrdbXSaC', 1)
INSERT [dbo].[users] ([username], [password], [enabled]) VALUES (N'susan', N'{bcrypt}$2a$10$12tNGY/2mOywEOYufGcLnuICjFl/Z3F/FWl4UAq2zcqUwZbFm/mdW', 1)
GO
ALTER TABLE [dbo].[authorities]  WITH CHECK ADD  CONSTRAINT [FK_authorities_users] FOREIGN KEY([username])
REFERENCES [dbo].[users] ([username])
GO
ALTER TABLE [dbo].[authorities] CHECK CONSTRAINT [FK_authorities_users]
GO
