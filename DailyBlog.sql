USE [master]
GO

DROP DATABASE [DailyBlogProject]
GO

CREATE DATABASE [DailyBlogProject]
GO

USE [DailyBlogProject]
GO

CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1)  NOT NULL,        -- Primary key, auto-increment
	[UserName] NVARCHAR(50) NOT NULL,            -- User name, required
	[Password] NVARCHAR(100) NOT NULL,           -- Password, required
	CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED ([UserId] ASC) -- Define primary key
)
GO

-- Create the Blog table with a foreign key
CREATE TABLE [dbo].[Blog](
	[BlogId] [int] IDENTITY(1,1) NOT NULL, -- Primary key, auto-increment
	[BlogName] NVARCHAR(100) NOT NULL,     -- Blog name, required
	[UserId] [int] NOT NULL,               -- Foreign key
	CONSTRAINT [PK_Blog] PRIMARY KEY CLUSTERED ([BlogId] ASC), -- Define primary key
	CONSTRAINT [FK_Blog_User] FOREIGN KEY ([UserId]) REFERENCES [dbo].[User]([UserId]) -- Define foreign key
)
GO

-- Insert sample users, including an admin user
INSERT INTO [dbo].[User] ([UserName], [Password])
VALUES 
('admin', '1'),        -- Admin user
('test1', 'password123'),    -- Regular user
('test2', 'securePassword'); -- Regular user

-- Insert sample blogs
INSERT INTO [dbo].[Blog] ([BlogName], [UserId])
VALUES 
('Tech Tips Blog', 2),         -- Blog owned by JohnDoe
('Travel Diaries', 3),         -- Blog owned by JaneSmith
('Admin Blog', 1);             -- Blog owned by admin


SELECT *
FROM [dbo].[Blog] b, [dbo].[User] u where b.UserID = u.UserId

