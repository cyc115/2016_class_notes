
#Thur Jan 14
### large scale data management 
 - data distribution 
 - data consistency 
 - fault tolerance 
 - load distribution 
###Entity Relationship model (ER)
- what data to store and how to store them.
- what operation ? 
- use semantic schema

####requirement analysis 
- what are the entities and relationship in the enterprise ? 
- what are the constraints between them ? ( 1 to 1 mapping ? or 1 to many ?)

> ####eg. minerva database requirement 
> **data**
> 
> - email 
> - name
> - password 
> - id
> 
> **functions** 
> 
> - input and change 
> 
> **students** 
> 
> -  home address (data) 
> - "transcript" -> maybe its own entity set ?  (data)
> - register for courses (actions)
> - pay for tuition (actions)
> 
> **courses** 
>  data *
> 
> - course id 
> - instructor 
> - time

####Entity 

Objects distinguished from other objects, has **Attributes** . eg. name of company

**Entity set** : a collection of similar entities (similar to a class) . eg. all students in McGill.

**Hierarchies** : subclasses (is a) (ISA) 

**Relationship** : association among two or more *entity*

- only one edge is possible between two *entities*

eg. company x has sponsored the Liberal Party 

**Relationship set** : collection of similar relationships 


