create database ims;
use ims;
set autocommit = 1;
# *************************************************************  Roles Table  ******************************************************************************************************************* #
create table roles(role_id int primary key auto_increment,Role_name varchar(50) not null,created_at timestamp);
insert into roles(Role_name,created_at) values
('Admin',"2025-04-30 10:15:00"),
('Manager',"2025-04-26 11:45:00"),
('Salesperson',"2025-04-14 15:10:00"),
('Technician',"2025-04-14 13:30:00"),
('Customer Support',"2025-04-14 13:30:00"),
('HR',"2025-04-06 09:20:00"),
('Accountant',"2025-04-06 12:00:00"),
('Marketing',"2025-04-06 14:50:00"),
('Security Officer',"2025-02-22 16:45:00"),
('Supplier',"2025-03-30 18:30:00"),
('Project Coordinator',"2025-02-14 14:30:00"),
('Intern',"2025-02-22 10:25:00");
drop table roles;
select * from roles;
# *************************************************************  User Table  ******************************************************************************************************************* #
create table User(User_id int primary key auto_increment,User_name varchar(50) not null,User_pass varchar(50)not null,User_no bigint not null,
r_id int not null,created_at TIMESTAMP,foreign key (r_id) references roles(role_id)on update cascade on delete cascade);
insert into user(user_id,user_name,user_pass,user_no,r_id,created_at) values
(101,'Aarav Sharma','Aarav@125',9876543210,1,"2025-04-30 10:15:00"),
(102,'Ananya Verma','Ananya@452',9123456780,2,"2025-04-26 11:45:00"),
(103,'Raj Gupta','Raj@785',9765432101,3,"2025-04-14 15:10:00"),
(104,'Ishita Patel', 'Ishita@896', 9876123456,4,"2025-04-14 13:30:00"),
(105,'Kabir Mehta',  'Kabir@675', 9987654321,5,"2025-04-06 09:20:00"),
(106,'Diya Rao', 'Diya@905', 9112345678,6,"2025-04-06 12:00:00"),
(107,'Arjun Singh', 'Arjun@638', 9876789012,7,"2025-04-06 12:00:00"),
(108,'Priya Iyer', 'Priya@5696', 9765432102,8,"2025-04-06 14:50:00"),
(109,'Aditya Das', 'AdityaDas@876', 9998765432,9,"2025-02-22 16:45:00"),
(110,'Sanya Khan', 'Sanyakhan@4521', 9115678901,10,"2025-02-22 16:45:00"),
(111,'Viraj Malhotra', 'Viraj@521', 9887654320,11,"2025-02-14 14:30:00"),
(112,'Nisha Chopra', 'Nisha@8965', 9765123450,12,"2025-02-22 10:25:00");
# **************************************************************  Fuel_Types Table  ****************************************************************************************************************** #
create table Fuel_types(Fuel_id int primary key auto_increment,Fueltype_name varchar(50),created_at timestamp);
insert into Fuel_types(Fueltype_name,created_at) values
('Petrol',"2025-04-30 10:15:00"),
('Diesel',"2025-04-26 11:45:00"),
('CNG',"2025-04-14 15:10:00"),
('LPG',"2025-04-14 13:30:00"),
('Electric',"2025-04-06 12:00:00"),
('Hydrogen',"2025-04-06 12:00:00"),
('Biofuel',"2025-04-06 14:50:00"),
('Ethanol',"2025-02-22 16:45:00"),
('Methanol',"2025-02-22 16:45:00"),
('Hybrid',"2025-02-14 14:30:00"),
('Solar Fuel',"2025-02-22 10:25:00"),
('Kerosene',"2025-02-22 10:25:00");
# ******************************************************************  Vechichles Table  ************************************************************************************************************** #
create table vehichles(vehicle_id int primary key auto_increment,Model_name varchar(25)not null, Brand varchar(25)not null, Varient varchar (25)not null,
Fuel_id int not null,Price decimal(10,2)not null,Stock_quantity int not null,created_at timestamp,foreign key (Fuel_id) references Fuel_types(Fuel_id)on update cascade on delete cascade); 
INSERT INTO vehichles (vehicle_id, Model_name, Brand, Varient, Fuel_id, price, stock_quantity,created_at) VALUES
(101, 'XUV700', 'Mahindra', 'AX7', 1, 1399000.00, 10,"2025-04-30 10:15:00"),
(102, 'Creta', 'Hyundai', 'SX', 2, 1111000.00, 15,"2025-04-26 11:45:00"),
(103, 'Nexon', 'Tata', 'XZ+', 3, 800000.00, 20,"2025-04-14 15:10:00"),
(104, 'Fronx', 'Maruti Suzuki', 'Delta', 4, 752000.00, 25,"2025-04-14 13:30:00"),
(105, 'Urban Cruiser Hyryder', 'Toyota', 'V', 5, 1114000.00, 12,"2025-04-14 13:30:00"),
(106, 'Punch', 'Tata', 'Adventure', 6, 620000.00, 18,"2025-04-06 09:20:00"),
(107, 'Brezza', 'Maruti Suzuki', 'ZXi', 7, 869000.00, 22,"2025-04-06 12:00:00"),
(108, 'Virtus', 'Volkswagen', 'Highline', 8, 1156000.00, 8,"2025-04-06 14:50:00"),
(109, 'Slavia', 'Skoda', 'Ambition', 9, 1034000.00, 10,"2025-02-22 16:45:00"),
(110, 'City', 'Honda', 'VX', 10, 1186000.00, 6,"2025-03-30 18:30:00"),
(111, 'Compass', 'Jeep', 'Limited', 11, 1899000.00, 5,"2025-02-14 14:30:00"),
(112, 'Taigun', 'Volkswagen', 'GT', 12, 1170000.00, 7,"2025-02-22 10:25:00");
# ***************************************************************  Suppliers Table  ***************************************************************************************************************** #
create table Suppliers(Supplier_id int primary key auto_increment,Supplier_name varchar(50) not null,Contact_person varchar(50)not null, Email varchar(100)not null,
Address varchar(50)not null, created_at timestamp);
insert into suppliers(Supplier_id,Supplier_name,Contact_person,Email,Address,created_at) values 
(101,'Ramesh Auto Parts', 'Ramesh Kumar', 'ramesh@autoparts.com', 'Mumbai, Maharashtra',"2025-04-30 10:15:00"),
(102,'Sharma Suppliers', 'Amit Sharma', 'amit@sharmasuppliers.com', 'Delhi, Delhi',"2025-04-26 11:45:00"),
(103,'Gupta Distributors', 'Rajiv Gupta', 'rajiv@guptadistributors.com', 'Pune, Maharashtra',"2025-04-14 15:10:00"),
(104,'Patel Traders', 'Hiren Patel', 'hiren@pateltraders.com', 'Ahmedabad, Gujarat',"2025-04-14 13:30:00"),
(105,'Singh Associates', 'Manjeet Singh', 'manjeet@singhassociates.com', 'Chandigarh, Punjab',"2025-04-14 13:30:00"),
(106,'Verma Components', 'Sunil Verma', 'sunil@vermacomponents.com', 'Lucknow, Uttar Pradesh',"2025-04-06 09:20:00"),
(107,'Nair Enterprises', 'Rahul Nair', 'rahul@nairenterprises.com', 'Kochi, Kerala',"2025-04-06 12:00:00"),
(108,'Das Auto Solutions', 'Subhash Das', 'subhash@dassolutions.com', 'Kolkata, West Bengal',"2025-04-06 14:50:00"),
(109,'Joshi Motors', 'Arvind Joshi', 'arvind@joshimotors.com', 'Jaipur, Rajasthan',"2025-02-22 16:45:00"),
(110,'Reddy Supplies', 'Prakash Reddy', 'prakash@reddysupplies.com', 'Hyderabad, Telangana',"2025-03-30 18:30:00"),
(111,'Bansal Parts Hub', 'Vivek Bansal', 'vivek@bansalparts.com', 'Bhopal, Madhya Pradesh',"2025-02-14 14:30:00"),
(112,'Pillai Distributors', 'Arjun Pillai', 'arjun@pillaidistributors.com', 'Chennai, Tamil Nadu',"2025-02-22 10:25:00");
# *************************************************************  Spare_Parts Table  ******************************************************************************************************************* #
create table Spare_parts(Part_id int primary key auto_increment,Part_name varchar(50)not null,Part_number varchar(50),Stock_quantity int not null,reorder_leval int not null,
Supplier_id int not null,created_at timestamp,foreign key (supplier_id) references suppliers(Supplier_id)on update cascade on delete cascade);
desc spare_parts; 
drop table spare_parts;
insert into Spare_parts(Part_name,Part_number,stock_quantity,Reorder_leval,Supplier_id,created_at) values
('Brake Pad', 'BP12345', 60, 15, 101,"2025-04-30 10:15:00"),
('Air Filter', 'AF56789', 50, 10, 102,"2025-04-26 11:45:00"),
('Oil Filter', 'OF90123', 40, 8, 103,"2025-04-14 15:10:00"),
('Spark Plug', 'SP34567', 80, 20, 104,"2025-04-14 13:30:00"),
('Timing Belt', 'TB78901', 25, 5, 105,"2025-04-14 13:30:00"),
('Clutch Plate', 'CP11223', 35, 12, 106,"2025-04-06 09:20:00"),
('Fuel Pump', 'FP33445', 45, 10, 107,"2025-04-06 12:00:00"),
('Headlight', 'HL55678', 30, 6, 108,"2025-04-06 14:50:00"),
('Battery', 'BT77890', 20, 4, 109,"2025-02-22 16:45:00"),
('Radiator', 'RD99012', 15, 3, 110,"2025-03-30 18:30:00"),
('Alternator', 'AL22334', 25, 7, 111,"2025-02-14 14:30:00"),
('Starter Motor', 'SM44556', 10, 2, 112,"2025-02-22 10:25:00");
# *****************************************************************  Customers Table  *************************************************************************************************************** #
Create table Customers(Customer_id int primary key auto_increment,Name varchar(50) not null, Contact bigint not null,Email varchar(50) not null,address varchar(50) not null,
created_at timestamp);
desc Customers;
INSERT INTO Customers (Name, Contact, Email, Address,created_at)
VALUES 
('Rajesh Sharma', 9876543210, 'rajesh.sharma@gmail.com', 'Mumbai, India',"2025-04-30 10:15:00"),
('Anjali Mehta', 9823567890, 'anjali.mehta@gmail.com', 'Delhi, India',"2025-04-26 11:45:00"),
('Vikas Patel', 9867123456, 'vikas.patel@gmail.com', 'Ahmedabad, India',"2025-04-14 15:10:00"),
('Priya Singh', 9978987654, 'priya.singh@gmail.com', 'Kolkata, India',"2025-04-14 13:30:00"),
('Arun Kumar', 9876543345, 'arun.kumar@gmail.com', 'Chennai, India',"2025-04-14 13:30:00"),
('Sneha Gupta', 9867234512, 'sneha.gupta@gmail.com', 'Pune, India',"2025-04-06 09:20:00"),
('Ravi Verma', 9923456789, 'ravi.verma@gmail.com', 'Lucknow, India',"2025-04-06 12:00:00"),
('Divya Malhotra', 9845634210, 'divya.malhotra@gmail.com', 'Jaipur, India',"2025-04-06 14:50:00"),
('Manoj Joshi', 9856743210, 'manoj.joshi@gmail.com', 'Nagpur, India',"2025-02-22 16:45:00"),
('Pooja Desai', 9832145678, 'pooja.desai@gmail.com', 'Surat, India',"2025-03-30 18:30:00"),
('Sanjay Sharma', 9912345678, 'sanjay.sharma@gmail.com', 'Noida, India',"2025-02-14 14:30:00"),
('Ritika Kapoor', 9898876543, 'ritika.kapoor@gmail.com', 'Thane, India',"2025-02-22 10:25:00");
# ************************************************************  Spare_parts_sales Table  ******************************************************************************************************************** #
create table Spare_parts_sales(Sale_id int primary key auto_increment,Customer_id int not null, Part_id int ,Quantity int not null, Total_price float not null,Sale_date timestamp,
foreign key (Part_id) references spare_parts(Part_id)on update cascade on delete cascade,
foreign key (Customer_id) references Customers(Customer_id)on update cascade on delete cascade);
insert into Spare_parts_sales(Sale_id,Customer_id,Part_id,Quantity,Total_price,sale_date) values
(101, 1, 12, 12,1500.50, "2025-04-30 10:15:00"),
(102, 5, 11, 10,500.00, "2025-04-26 11:45:00"),
(103, 3, 8, 5,2200.00, "2025-04-14 15:10:00"),
(104, 2, 6, 8,1350.75, "2025-04-14 13:30:00"),
(105, 4, 9, 20,3750.00, "2025-04-14 13:30:00"),
(106, 10,7, 3,1000.00, "2025-04-06 09:20:00"),
(107, 6, 10, 9,550.25, "2025-04-06 12:00:00"),
(108, 8, 1, 6,1450.75, "2025-04-06 14:50:00"),
(109, 7, 5, 2,3000.00, "2025-02-22 16:45:00"),
(110, 9, 3, 15,950.00, "2025-03-30 18:30:00"),
(111, 12, 2, 9,2750.00, "2025-02-14 14:30:00"),
(112, 11, 4, 4,480.00, "2025-02-22 10:25:00");
drop table Spare_parts_sales;
# **************************************************************  Payments Table  ****************************************************************************************************************** #
create table Payments(Payment_id int primary key auto_increment,Payment_type varchar(50)not null,Created_at timestamp);
insert into Payments(payment_type,Created_at) values
('Credit Card', "2025-04-30 10:15:00"),
('Debit Card', "2025-04-26 11:45:00"),
('UPI', "2025-04-14 15:10:00"),
('Cash', "2025-04-14 13:30:00"),
('Net Banking', "2025-04-14 13:30:00"),
('Credit Card', "2025-04-06 09:20:00"),
('Debit Card', "2025-04-06 14:50:00"),
('UPI', "2025-04-06 14:50:00"),
('Cash', "2025-02-22 16:45:00"),
('Net Banking', "2025-03-30 18:30:00"),
('Credit Card', "2025-02-14 14:30:00"),
('UPI', "2025-02-22 10:25:00");
# **************************************************************  Sales Table  ******************************************************************************************************************* #
create table sales(Sale_id int primary key auto_increment,Customer_id int not null,Vechicle_id int not null,Sale_date timestamp,Quantity int not null,
Total_Price float not null,Payment_id int,
foreign key (Customer_id) references Customers(Customer_id)on update cascade on delete cascade,
foreign key (Vechicle_id) references vehichles(vehicle_id)on update cascade on delete cascade,
foreign key (Payment_id) references Payments(Payment_id)on update cascade on delete cascade);

insert into Sales(Sale_id,Customer_id,Vechicle_id,Sale_date,Quantity,Total_price,Payment_id) values
(1,1, 101, "2025-04-30 10:15:00", 2, 200000.00, 1),
(2,2, 102, "2025-04-26 11:45:00", 11, 120000.00, 2),
(3,3, 103, "2025-04-14 15:10:00", 3, 450000.00, 3),
(4,4, 104, "2025-04-14 13:30:00", 5, 150000.00, 4),
(5,5, 105, "2025-04-14 13:30:00", 4, 600000.00, 5),
(6,6, 106, "2025-04-06 09:20:00", 10, 140000.00, 6),
(7,7, 107, "2025-04-06 14:50:00", 7, 260000.00, 7),
(8,8, 108, "2025-04-06 14:50:00", 9, 190000.00, 8),
(9,9, 109, "2025-02-22 16:45:00",5, 850000.00, 9),
(10,10, 110, "2025-03-30 18:30:00", 13, 420000.00, 10),
(11,11, 111, "2025-02-14 14:30:00", 9, 300000.00, 11),
(12,12, 112, "2025-02-22 10:25:00", 5, 620000.00, 12);
drop table sales;
# ***************************************************************   Purchase_orders Table  ****************************************************************************************************************** #
create table Purchase_orders(Order_id int primary key auto_increment,Supplier_id int not null,Order_date timestamp,Total_amount float,Order_status varchar(50)not null,
foreign key (supplier_id) references suppliers(Supplier_id)on update cascade on delete cascade);
desc Purchase_orders;
insert into Purchase_orders(Supplier_id,Order_date,Total_amount,Order_status) values
(101, "2025-04-30 10:15:00", 25000.00, 'Pending'),
(102, "2025-04-26 11:45:00", 30000.00, 'cancelled'),
(103, "2025-04-14 15:10:00", 18000.00, 'Pending'),
(104, "2025-04-14 13:30:00", 40000.00, 'Shipped'),
(105, "2025-04-14 13:30:00", 22000.00, 'shipped'),
(106, "2025-04-06 09:20:00", 27000.00, 'Pending'),
(107, "2025-04-06 14:50:00", 19000.00, 'shipped'),
(108, "2025-04-06 14:50:00", 35000.00, 'Pending'),
(109, "2025-03-30 18:30:00", 40000.00, 'Shipped'),
(110, "2025-02-14 14:30:00", 30000.00, 'pending'),
(111, "2025-02-22 10:25:00", 25000.00, 'Shipped'),
(112, "2025-02-22 10:25:00", 25000.00, 'Shipped');
drop table purchase_orders;
# ****************************************************************  Incoices Table  ***************************************************************************************************************** #
Create table invoices(Invoice_id int primary key auto_increment,Order_id int not null,Sale_id int not null,Issue_date timestamp,Amount float not null,
Payment_status varchar(50)not null,
foreign key (order_id) references Purchase_orders(Order_id)on update cascade on delete cascade,
foreign key (Sale_id) references sales(Sale_id)on update cascade on delete cascade);
insert into Invoices(Order_id,Sale_id,Issue_date,Amount,Payment_status) values
(1, 1, "2025-04-30 10:15:00", 50000.00, 'pending'),
(2, 2, "2025-04-26 11:45:00", 75000.00, 'Pending'),
(3, 3, "2025-04-14 15:10:00", 100000.00, 'Paid'),
(4, 4, "2025-04-14 13:30:00", 125000.00, 'Failed'),
(5, 5, '2025-04-05 14:20:00', 60000.00, 'Paid'),
(6, 6, "2025-04-14 13:30:00", 80000.00, 'Pending'),
(7, 7, "2025-04-06 14:50:00", 95000.00, 'Paid'),
(8, 8, '2025-04-08 13:25:00', 110000.00, 'Failed'),
(9, 9, "2025-04-06 14:50:00", 90000.00, 'Paid'),
(10, 10, "2025-02-14 14:30:00", 67000.00, 'Pending'),
(11, 11, "2025-02-14 14:30:00", 85000.00, 'Paid'),
(12, 12, "2025-02-22 10:25:00", 99000.00, 'Pending');
# ********************************************************************************************************************************************************************************************* #
# Data Visualization and Report Analytics:-
#1.Generate Monthly Sales Report (Find the best-selling months for vehicles.)
select model_name,sale_date,sum(v.price * quantity) as total_price from vehichles as v join sales as s on v.vehicle_id = s.Vechicle_id group by model_name,sale_date order by total_price desc limit 5;

#2.Top Selling Vehicles Report (Find the most popular vehicle models.)
select model_name,sum(quantity) as total_quantity from vehichles as v join sales as s on v.vehicle_id = s.Vechicle_id group by model_name order by total_quantity desc limit 5;

#3.Low Stock Alert for Spare Parts(Avoid outofstocks and ensure timely reorders.)
delimiter %%
create trigger Update_stock
before update on spare_parts
for each row
begin
if new.stock_quantity < 20 then
SIGNAL SQLSTATE '45000'
set MESSAGE_TEXT = 'Re-order Stock';
end if;
end %%
delimiter ;
update spare_parts set stock_quantity = 25 where part_id = 11;

#4.Sales Trends Over Time (For Growth Analysis for Track daily sales trends).
# Daily Sales trends over time
create view Daily_sales_trends as select sale_date,sum(quantity) as total_quant,sum(total_price) from sales group by sale_date order by sale_date;

# Montly Sales Trends over time
create view monthly_sales_trends as select DATE_FORMAT(sale_date, '%Y-%m') AS month, SUM(total_price) as monthly_sales
from sales
group by month
order by month;

#5.Vehicle Stock Overview (Current Inventory  for Quick dashboard to see how many vehicles are in stock.)
select * from vehichles; 
# First Method
select model_name,sum(stock_quantity) from vehichles group by model_name;

# Second Method
Delimiter %%
create procedure available_stock(in m varchar(25))
begin
select model_name,sum(stock_quantity) from vehichles where model_name = m group by model_name;
end %%
delimiter ;
call available_stock('creta');

#6.Spare Parts Sales Analysis.
#Daily Spare_parts_sales
select ss.sale_date,sum(sp.stock_quantity) as total_quantity,sum(ss.total_price)as total_price from 
spare_parts_sales as ss join spare_parts as sp on ss.part_id = sp.part_id group by sale_date;

#Monthly Spare_parts_sales
select date_format(sale_date,'%Y - %m'),sum(stock_quantity) as total_quantity,sum(total_price) from 
spare_parts_sales as ss join spare_parts as sp on ss.part_id = sp.part_id group by sale_date;

#Total Revenue from spare_part_sales
select sp.part_id,sp.part_name,sum(stock_quantity * total_price)as total_revenue from spare_parts_sales as ss join spare_parts as sp on ss.part_id = sp.part_id 
group by sp.part_id,sp.part_name order by total_revenue desc;

#7.Revenue by Salesperson(Recognize top-performing sales)
select sale_id,sum(quantity * total_price)as total_revenue from sales group by sale_id order by total_revenue desc limit 5;

#8.Update Vehicle Stock After Sale.
select * from vehichles;
create table vehichles1 like vehichles;
alter table  vehichles1 add  Stock_Record int ;
delimiter %%
create trigger upd_stock
before update on vehichles
for each row
begin
if new.stock_quantity != old.stock_quantity then
insert into vehichles1(vehicle_id,Model_name,Brand,Varient,Fuel_id,Price,Stock_quantity,created_at,stock_record) values 
(old.vehicle_id,old.Model_name,old.Brand,old.Varient,old.Fuel_id,old.Price,old.Stock_quantity,old.created_at,new.stock_quantity);
end if;
end %%
delimiter ;
update vehichles set stock_quantity = 20 where vehicle_id = 104;

#9.Update Spare Parts Stock After Sale.
select * from spare_parts1;
desc spare_parts;
create table spare_parts1 like spare_parts;
alter table  spare_parts1 add  Stock_Record int ;
Delimiter %%
create trigger stock_count
after update on spare_parts
for each row
begin
if new.stock_quantity != old.stock_quantity then
insert into spare_parts1(Part_id,Part_name,Part_number,Stock_quantity,reorder_leval,Supplier_id,created_at,Stock_Record) values
(old.Part_id,old.Part_name,old.Part_number,old.Stock_quantity,old.reorder_leval,old.Supplier_id,old.created_at,new.Stock_quantity);
end if;
end %%
delimiter ;
update spare_parts set stock_quantity = 70 where part_id = 4;

#10.Generate Invoices for Completed Sales.
create table invoices1 like invoices;
delimiter %%
create trigger genrated_invoice
after update on invoices
for each row
begin
if new.payment_status = 'completed' then
insert into invoices1(Invoice_id,Order_id,Sale_id,Issue_date,Amount,Payment_status) values 
(old.Invoice_id,old.Order_id,old.Sale_id,old.Issue_date,old.Amount,new.Payment_status);
end if;
end %%
delimiter ;
update invoices set payment_status = 'completed' where invoice_id = 9;
select * from invoices;

#11.Mark Overdue Invoices for Follow-Up.
create view Follow_up as select * from invoices where payment_status in('pending','failed');
select * from follow_up;



