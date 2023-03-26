use pharmacy_db
create proc SP_MedicinesReport1
as
select m.medicine_id,
m.medicine_name,
m.medicine_sprice,
m.medicine_quantity
from Medicines m
join suppliers s on s.supplier_id=m.supplier_id
go

create proc SP_MedicinesReport2
as 
select s.supplier_name,
count (m.supplier_id) Total
from Medicines m 
join suppliers s on s.supplier_id=m.supplier_id
group by s.supplier_name
go

create proc SP_medicine_table
as 
select
m.medicine_id,
m.medicine_name,
m.medicine_bprice,
m.medicine_sprice,
s.Supplier_name,
m.supplier_id,
m.medicine_quantity,
m.exprition_time
from Medicines m
join suppliers s on s.supplier_id=m.supplier_id

go 
create proc SP_supplier_table
as
select * from suppliers

go

create proc SP_patient_table
as
select* from patients

go 
create proc SP_prescriptions_table
as
select*from prescriptions
go
create proc SP_purchases_table
as
select p.purchase_id,
p.patient_id,
p.supplier_id,
p.medicine_id,
p.quantity,
p.price,
p.date_purchased
from  purchases p
join suppliers s on s.supplier_id=p.supplier_id
join patients on  p.patient_id=patients.patient_id
join medicines on p.medicine_id= medicines.medicine_id
go
create proc SP_Employee_table
as 
select * from employee

create proc SP_medicine_table2
as 
select
m.medicine_id,
m.medicine_name,
m.medicine_bprice,
m.medicine_sprice,
s.Supplier_name,
m.supplier_id,
m.medicine_quantity,
m.exprition_time
from Medicines m
join suppliers s on s.supplier_id=m.supplier_id