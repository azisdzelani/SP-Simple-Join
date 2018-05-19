USE [NorthWind]
GO
/****** Object:  StoredProcedure [dbo].[SP_View]    Script Date: 5/19/2018 9:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[SP_View]
as

begin
	select p.ProductName, c.CategoryName, p.QuantityPerUnit, p.UnitPrice, c.Description  
	from Products p inner join Categories c
	on p.CategoryID = c.CategoryID
end