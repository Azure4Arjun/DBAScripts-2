USE [SystemsHelpDesk]
GO

--IF EXISTS (SELECT *
--           FROM   sys.objects
--           WHERE  object_id = OBJECT_ID(N'[dbo].[IndexUsageStats]')
--                  AND TYPE IN (N'U'))
--  DROP TABLE [dbo].[IndexUsageStats]
--GO

/****** Object:  Table [dbo].[IndexUsageStats]    Script Date: 09/30/2011 15:32:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IndexUsageStats](
	[DbID] [int] NOT NULL,
	[TblID] [int] NOT NULL,
	[IdxID] [int] NULL,
	[DbName] [nvarchar](255) NOT NULL,
	[TblName] [nvarchar](255) NOT NULL,
	[IdxName] [nvarchar](255) NULL,
	[ServiceStartTime] [datetime] NOT NULL,
	[StatTime] [datetime] NOT NULL,
	[UserSeeks] [bigint] NOT NULL,
	[UserScans] [bigint] NOT NULL,
	[UserLookUps] [bigint] NOT NULL,
	[UserUpdates] [bigint] NOT NULL
) ON [PRIMARY]
