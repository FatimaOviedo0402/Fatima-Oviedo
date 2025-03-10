SELECT TOP (1000) [ID_CLIENTE]
      ,[NOMBRE]
      ,[CIUDAD]
      ,[ID_PROD]
      ,[ID_VENTA]
      ,[CANTIDAD]
      ,[NOMBREPROD]
      ,[PRECIOUNIT]
      ,[PRECIOTOTAL]
      ,[COD_PAIS]
  FROM [Desafio1].[dbo].[Ocasionales]


SELECT TOP 10
    NOMBREPROD AS Producto,
    COUNT(ID_VENTA) AS VecesComprado,
    SUM(CANTIDAD) AS TotalUnidadesVendidas,
    SUM(PRECIOTOTAL) AS TotalGenerado
FROM [Desafio1].[dbo].[Ocasionales]
GROUP BY NOMBREPROD
ORDER BY TotalUnidadesVendidas ASC;

SELECT 
    ID_CLIENTE,
    NOMBRE AS Cliente,
    CIUDAD,
    SUM(PRECIOTOTAL) AS TotalGastado,
    SUM(CANTIDAD) AS TotalProductosComprados,
    COUNT(ID_VENTA) AS NumeroDeCompras
FROM [Desafio1].[dbo].[Ocasionales]
GROUP BY ID_CLIENTE, NOMBRE, CIUDAD
ORDER BY TotalGastado DESC;


SELECT TOP 10
    ID_CLIENTE,
    NOMBRE AS Cliente,
    CIUDAD,
    SUM(PRECIOTOTAL) AS TotalGastado,
    COUNT(ID_VENTA) AS NumeroDeComprasRealizadas
FROM [Desafio1].[dbo].[Ocasionales]
GROUP BY ID_CLIENTE, NOMBRE, CIUDAD
ORDER BY TotalGastado ASC, NumeroDeComprasRealizadas ASC;


DELETE FROM Ocasionales
DELETE FROM Frecuentes