create database store_procedures_sql;

use store_procedures_sql;

print('Se pondra en uso la base store_procedures_sql'); 
use store_procedures_sql;
print('Se puso en uso la base de datos exitosamente');


declare @PorcentajeGanancia decimal(4, 2) = 10.99;

declare @TotalBruto INT = 4000;
declare @TotalFinal INT = @TotalBruto + 500;
print(@TotalFinal)

declare @TotalSinDescuento decimal(6, 2) = 9000;
declare @Descuento decimal(5, 3) = 0.15;
declare @TotalConDescuento decimal(10, 3) = @TotalSinDescuento - (@TotalSinDescuento * @Descuento);
print(@TotalConDescuento);

declare @SalesTotal int = 500;
declare @Target int = 2000;
declare @Difference int;


BEGIN
	set @Difference = @Target - @SalesTotal;
	print (@Difference)
	
	set @SalesTotal = 15000;
	set @Target = 20000;
	set @Difference = @Target - @SalesTotal;
	print(@Difference)

END

CREATE FUNCTION fn_calculateDiscount(
	@Total decimal(6, 2), 
	@Discount decimal(3, 2) -- 0.12
) RETURNS decimal(6, 2) AS
begin 
	-- print('Se calculara el descuento');
	Declare @TotalDiscount decimal(6, 2) = @Total - (@Total * @Discount);
	
	return @TotalDiscount;
end;

select dbo.fn_calculateDiscount(80, 0.5) as precio_descuento;



--Realizar 4 funciones que hagan la suma, resta, el promedio de tres números y la multiplicación
--Suma

CREATE FUNCTION fn_calculateDiscount(
	@Total decimal(6, 2), 
	@Discount decimal(3, 2) -- 0.12
) RETURNS decimal(6, 2) AS
begin 
	-- print('Se calculara el descuento');
	Declare @TotalDiscount decimal(6, 2) = @Total - (@Total * @Discount);
	
	return @TotalDiscount;
end;

select dbo.fn_calculateDiscount(80, 0.5) as precio_descuento;





--Resta


--Promedio


--Multiplicación


