/****

 Script Created by: Yoel Sharf
 This SQL script inserts 1M identical strings + 1 another different string to Table_1

 Texts from http://insider.foxnews.com/2018/02/18/behar-mike-pence-comment-christianity-trump-advisor-says-abc-should-apologize 

****/

USE [PerfDemo]
GO

DECLARE @cnt INT = 0;
DECLARE @total INT = 500000;

WHILE @cnt < @total
BEGIN
   INSERT INTO [dbo].[Table_1]
           ([Text])
     VALUES
           ('He said comedian Joy Behar was hypocritical when she attacked Vice President Mike Pence as potentially mentally ill when the former Indiana governor claimed to have heard Jesus Christ speak to him.');
   SET @cnt = @cnt + 1;
END;

INSERT INTO [dbo].[Table_1]
           ([Text])
     VALUES
           ('adding that we all know what would have happened if she said the same thing about Islam');

set @cnt = 0;
WHILE @cnt < @total
BEGIN
   INSERT INTO [dbo].[Table_1]
           ([Text])
     VALUES
           ('He said comedian Joy Behar was hypocritical when she attacked Vice President Mike Pence as potentially mentally ill when the former Indiana governor claimed to have heard Jesus Christ speak to him.');
   SET @cnt = @cnt + 1;
END;

USE [PerfDemo]
GO

/****** Object:  FullTextCatalog [Perfs Catalog]   0 ******/
CREATE FULLTEXT CATALOG [Perfs Catalog] WITH ACCENT_SENSITIVITY = ON
GO


