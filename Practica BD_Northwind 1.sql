restore headeronly from disk =
'D:\Base de datos\Respaldos\Northwind.bak'

restore filelistonly from disk = 
'D:\Base de datos\Respaldos\Northwind.bak'
with file =1

--Restaurar la BD Northwind
restore database Northwind 
from disk ='D:\Base de datos\Respaldos\Northwind.bak'
with file =1,
move 'Northwind' to 'D:\Base de datos\Archivos BD\MDF\Northwind.mdf',
move 'Northwind_1' to 'D:\Base de datos\Archivos BD\NDF\Northwind_1.ndf',
move 'Northwind_2' to 'D:\Base de datos\Archivos BD\NDF\Northwind_2.ndf',
move 'Northwind_log' to 'D:\Base de datos\Archivos BD\LDF\northwind.ldf'

--respaldo bd Northwind con nueva ubicacion
backup database Northwind to disk =
'D:\Base de datos\Respaldos\NorthwindRespaldo.bak'