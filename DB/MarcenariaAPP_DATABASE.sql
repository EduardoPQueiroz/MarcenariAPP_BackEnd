CREATE TABLE Material (
nome_material varchar(50) PRIMARY KEY,
cor varchar(50),
quantidade numeric(4)
)

CREATE TABLE Pedidos (
Nome_Cliente varchar(50),
data_pedido date,
valor_pedido numeric(10,2),
Id_pedido varchar(5) PRIMARY KEY,
Tipo_Pedido varchar(50)
)

CREATE TABLE tblr_material_pedidos (
Id_pedido varchar(5),
nome_material varchar(50),
FOREIGN KEY(Id_pedido) REFERENCES Pedidos (Id_pedido),
FOREIGN KEY(nome_material) REFERENCES Material(nome_material) 
)

