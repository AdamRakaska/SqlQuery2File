﻿


USE [master]
GO

DROP TABLE [FileTable];

CREATE TABLE [dbo].[FileTable] (
    [FileId]     INT             NOT NULL,
    [FileType]   NVARCHAR (50)   NULL,
    [FileExt]    NVARCHAR (4)    NULL,
    [FileName]   NVARCHAR (50)   NULL,
    [FileFolder] NVARCHAR (50)   NULL,
	[FileData_VARBINARY]   VARBINARY (MAX) NULL,
    [FileData_IMAGE] IMAGE NULL, 
    [FileData_NVARCHAR] NVARCHAR(MAX) NULL, 
    [FileData_VARCHAR] VARCHAR(MAX) NULL, 
    [FileData_CHAR] CHAR(10) NULL, 
    [FileData_TEXT] TEXT NULL, 
    [FileData_NTEXT] NTEXT NULL, 
    [FileData_NCHAR] NCHAR(10) NULL, 
    PRIMARY KEY CLUSTERED ([FileId] ASC)
);




--TRUNCATE TABLE [FileTable];


INSERT INTO [dbo].[FileTable] 
([FileId], [FileData_VARBINARY], [FileType], [FileExt], [FileName], [FileFolder], [FileData_NVARCHAR], [FileData_VARCHAR], [FileData_CHAR], [FileData_TEXT], [FileData_NTEXT], [FileData_NCHAR])
 VALUES (0,  CAST('A0FACBB5851C1EF18307228FEE3CE911C704F2B44E40' AS VARBINARY (MAX)), N'SpreadSheet', N'XLS', N'1040EZ_RAK', N'Spreads', N'A0FACBB5851C1EF18307228FEE3CE911C704F2B44E40', N'A0FACBB5851C1EF18307228FEE3CE911C704F2B44E40', N'A', N'A0FACBB5851C1EF18307228FEE3CE911C704F2B44E40', N'A0FACBB5851C1EF18307228FEE3CE911C704F2B44E40', N'A')
INSERT INTO [dbo].[FileTable] 
([FileId], [FileData_VARBINARY], [FileType], [FileExt], [FileName], [FileFolder], [FileData_NVARCHAR], [FileData_VARCHAR], [FileData_CHAR], [FileData_TEXT], [FileData_NTEXT], [FileData_NCHAR]) 
VALUES (1,  CAST('304A6E80FA9C87C54DBBAD4C38' AS VARBINARY (MAX)), N'SpreadSheet', N'XLS', N'1040EZ_RAK', N'Spreads', N'304A6E80FA9C87C54DBBAD4C38', N'304A6E80FA9C87C54DBBAD4C38', N'A', N'304A6E80FA9C87C54DBBAD4C38', N'304A6E80FA9C87C54DBBAD4C38', N'A')


*/

USE [master]
GO


SELECT [FileType], [FileName], [FileExt], 
		[FileData_VARBINARY],[FileData_IMAGE],[FileData_NVARCHAR], [FileData_VARCHAR], [FileData_CHAR], [FileData_TEXT], [FileData_NTEXT],[FileData_NCHAR]
FROM [FileTable]
--WHERE [FileData] IS NOT NULL