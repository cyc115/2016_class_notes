

#SQL 

**candidate key** : any column or a combination of columns that can qualify as unique key in database. 

 1. there can be multiple CK in one table 
 2. each CK can qualify as **primary key**

**Primary key** : a column or a combination of columns that **uniquely identify a record**. **Not null**


```sql
create table students 
(
sid char(9) primary key, 
login varchar (30) not null unique, 
name varchar (20)
)
```

login and sid are both CK, but sid is the primary key, 

```sql
create table location 
(
building varchar(20),
roomN int , 
capacity int , 
primary key (building, roomN)
)
```
**foreign key** : a column that references to a column of another table. 

 1. allows null, unlike the primary key
 2. can also reference a column that has the `unique` constraint

```sql 
create table orders
(
oid int, 
oDate date ,
sid int , 
amount double,
primary key (oid) , 
foreign key (sid) 
	references customer(sid)
);

create table customer (
	sid int, 
	... 
)

```

 Actions that violates the referential integrity will not be allowed:

 1. insert a new row in `orders` where `sid` does not appear in `customer` table 
 2.  Deleting a row in `customer` whose `sid` is still in reference. 


##ER to Relational model translation 

many to many relationship always translates to an individual table. 
![enter image description here](https://lh3.googleusercontent.com/-yYKn3O1aeW0/Vq6_MpL-eYI/AAAAAAAACVE/nRB1D7yNxcg/s0/Selection_115.jpg "Selection_115.jpg")


