/*
   INFO 321 - Database Systems
   
   Small test data set for order processing and stock control database for Lab exercises.
   
   Used in Labs 2 and 3.

   Oracle SQL DML
*/


/*
-- Uncomment this block if you want to remove any existing data.
delete from Order_Line;
delete from Order_Head;
delete from Supply;
delete from Supplier;
delete from City;
delete from Product;
*/


insert into City values ('DUD', 'Dunedin');
insert into City values ('CHC', 'Christchurch');
insert into City values ('WLG', 'Wellington');
insert into City values ('AKL', 'Auckland');
commit;


insert into Supplier values (1, 'Stuff Ltd.', 38, 'Grange Street', 'DUD', 'Y');
insert into Supplier values (2, 'Things Co.', 128, 'Technology Way', 'DUD', 'N');
insert into Supplier values (3, 'Zillions Corp.', 8080, 'Wormwood Industrial Plaza', 'CHC', 'Y');
insert into Supplier values (4, 'Capital Ventures', 312, 'Rockefeller Avenue', 'WLG', 'N');
insert into Supplier values (5, 'Megamondo Corp.', 1929, 'Langford Lane', 'AKL', 'N');
commit;


insert into Product values (1, 'Widget',	130,	50,	200);
insert into Product values (2, 'Sprocket',	85,	75,	100);
insert into Product values (3, 'Grommet',	412,	250, 	500);
insert into Product values (4, 'Ratchet',	29,	10, 	50);
insert into Product values (5, 'Wingnut',	865,	300, 	1000);
insert into Product values (6, 'Lug',		60,	20, 	200);
commit;


insert into Supply values (1, 1, 1.20);
insert into Supply values (1, 2, 1.15);
insert into Supply values (1, 5, 1.50);

insert into Supply values (2, 4, 3.00);

insert into Supply values (3, 2, 2.50);
insert into Supply values (3, 3, 2.95);
insert into Supply values (3, 4, 2.30);

insert into Supply values (4, 2, 0.95);
insert into Supply values (4, 4, 0.99);
insert into Supply values (4, 5, 0.90);
insert into Supply values (4, 6, 1.00);

insert into Supply values (5, 2, 0.50);
insert into Supply values (5, 4, 0.45);
insert into Supply values (5, 5, 0.60);
commit;


insert into Order_Head values (3711, '27-FEB-2002', 5); 
insert into Order_Line values (3711, 2, 1); 
commit; 

insert into Order_Head values (4467, '6-NOV-2002', 5); 
insert into Order_Line values (4467, 5, 2); 
insert into Order_Line values (4467, 2, 1); 
insert into Order_Line values (4467, 4, 1); 
commit; 

insert into Order_Head values (4749, '8-FEB-2003', 1); 
insert into Order_Line values (4749, 1, 5); 
commit; 

insert into Order_Head values (5280, '3-AUG-2003', 5); 
insert into Order_Line values (5280, 3, 1); 
insert into Order_Line values (5280, 4, 1); 
insert into Order_Line values (5280, 5, 2); 
commit; 

insert into Order_Head values (5679, '14-DEC-2003', 4); 
insert into Order_Line values (5679, 3, 50); 
insert into Order_Line values (5679, 5, 1); 
insert into Order_Line values (5679, 4, 2); 
commit; 

insert into Order_Head values (6057, '19-APR-2004', 1); 
insert into Order_Line values (6057, 5, 1); 
insert into Order_Line values (6057, 2, 1); 
insert into Order_Line values (6057, 1, 1); 
insert into Order_Line values (6057, 3, 1); 
commit; 

insert into Order_Head values (6108, '6-MAY-2004', 3); 
insert into Order_Line values (6108, 2, 3); 
insert into Order_Line values (6108, 1, 1); 
commit; 

insert into Order_Head values (6540, '27-SEP-2004', 5); 
insert into Order_Line values (6540, 3, 2); 
commit; 

insert into Order_Head values (6744, '4-DEC-2004', 3); 
insert into Order_Line values (6744, 3, 1); 
commit; 

insert into Order_Head values (7026, '8-MAR-2005', 2); 
insert into Order_Line values (7026, 4, 1); 
insert into Order_Line values (7026, 5, 1); 
insert into Order_Line values (7026, 2, 10); 
commit; 

insert into Order_Head values (7968, '16-JAN-2006', 4); 
insert into Order_Line values (7968, 1, 1); 
commit; 

insert into Order_Head values (8436, '21-JUN-2006', 5); 
insert into Order_Line values (8436, 1, 50); 
insert into Order_Line values (8436, 5, 5); 
commit; 

insert into Order_Head values (9174, '22-FEB-2007', 1); 
insert into Order_Line values (9174, 3, 1); 
commit; 

insert into Order_Head values (9258, '21-MAR-2007', 2); 
insert into Order_Line values (9258, 5, 2); 
commit; 

insert into Order_Head values (9981, '17-NOV-2007', 1); 
insert into Order_Line values (9981, 5, 1); 
insert into Order_Line values (9981, 3, 1); 
insert into Order_Line values (9981, 2, 2); 
commit; 

insert into Order_Head values (10251, '15-FEB-2008', 3); 
insert into Order_Line values (10251, 3, 1); 
insert into Order_Line values (10251, 2, 1); 
insert into Order_Line values (10251, 1, 1); 
commit; 

insert into Order_Head values (10584, '6-JUN-2008', 2); 
insert into Order_Line values (10584, 4, 2); 
insert into Order_Line values (10584, 5, 1); 
insert into Order_Line values (10584, 3, 1); 
insert into Order_Line values (10584, 2, 1); 
commit; 

insert into Order_Head values (10659, '1-JUL-2008', 2); 
insert into Order_Line values (10659, 4, 1); 
commit; 

insert into Order_Head values (10668, '4-JUL-2008', 4); 
insert into Order_Line values (10668, 3, 3); 
commit; 

insert into Order_Head values (10704, '16-JUL-2008', 2); 
insert into Order_Line values (10704, 5, 1); 
insert into Order_Line values (10704, 2, 1); 
insert into Order_Line values (10704, 3, 10); 
insert into Order_Line values (10704, 1, 1); 
commit; 

