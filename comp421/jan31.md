

#SQL 

**candidate key** : any column or a combination of columns that can qualify as unique key in database. 

 1. there can be multiple CK in one table 
 2. each CK can qualify as **primary key**

**Primary key** : a column or a combination of columns that **uniquely identify a record** 

1. may not be null 

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