/*
   INFO 321 - Database Systems
   
   Schema definition for order processing and stock control database for Lab exercises.
   
   Used in Labs 2, 3, 4 and 5.
   
   Oracle SQL DDL
*/


-- PL/SQL routine to drop existing tables:
declare
	type Table_Names_T is table of varchar2(32);
	Table_Names Table_Names_T := Table_Names_T(
		'Order_Line',
		'Order_Head',
		'Supply',
		'Supplier',
		'City',
		'Product'
	);
begin
	for T in Table_Names.FIRST..Table_Names.LAST loop
		begin
			execute immediate 'drop table ' || Table_Names(T) || ' cascade constraints';
		exception
			when others then
				null;
		end;
	end loop;
end;
/



create table City
(
	City_Code	char(3),
	City_Name	varchar2(16),
	--
	constraint City_PK primary key (City_Code)
);


create table Supplier
(
	Supplier_Number	number(6),
	Supplier_Name	varchar2(64),
	Address_Number	number(5),
	Street		varchar2(32),
	City		char(3),
	Discount	char(1),
	--
	constraint Supplier_PK primary key (Supplier_Number),
	constraint Supplier_City_Null check (City is not null),
	constraint Supplier_City_FK
		foreign key (City) references City (City_Code),
	constraint Supplier_Discount_Null check (Discount is not null),
	constraint Supplier_Discount_Invalid check (Discount in ('Y', 'N'))
);


create table Product
(
	Product_Number	number(6),
	Product_Name	varchar2(64),
	Stock_Level	number(5),
	Reorder_Level	number(5),
	Desired_Level	number(5),
	--
	constraint Product_PK primary key (Product_Number)
);


create table Supply
(
	Supplier_Number	number(6),
	Product_Number	number(6),
	Unit_Price	number(5,2),
	--
	constraint Supply_PK
		primary key (Supplier_Number, Product_Number),
	constraint Supply_Supplier_FK
		foreign key (Supplier_Number) references Supplier,
	constraint Supply_Product_FK
		foreign key (Product_Number) references Product
);


create table Order_Head
(
	Order_Number	number(12),
	Order_Date	date,
	Supplier_Number	number(6),
	--
	constraint Order_Head_PK
		primary key (Order_Number),
	constraint Order_Head_Supplier_FK
		foreign key (Supplier_Number) references Supplier
);


create table Order_Line
(
	Order_Number	number(12),
	Product_Number	number(6),
	Quantity	number(4),
	--
	constraint Order_Line_PK
		primary key (Order_Number, Product_Number),
	constraint Order_Line_Order_Head_FK
		foreign key (Order_Number) references Order_Head,
	constraint Order_Line_Product_FK
		foreign key (Product_Number) references Product
);

