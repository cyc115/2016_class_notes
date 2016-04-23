
##complexity

$$ f = \Omega (g) \text{ if  $g = O(f)$} $$ 
$$ f = o(g) \ \text {. iff $\lim_{n \rightarrow \infty  } {\cfrac{f(n)}{g(n)}} = 0$} $$
$$g = \omega (g) \text{. iff g = o(f) }$$ 

##Ford-Fulkerson algorithm 
```
build a residual graph G_r

while s-t flow exist:
	augment G_r
	update G_r with the new augmentation
```
**run time** : $O(m^2k)$ ,where m is # of edges, k is max capacity E of all edges. 

##Augmenting path 
### fastest path 

```
while has s-t path 
	find fattest path p //large bottleneck
	agument with p 
return 
```

###capacity scaling 
```
set D to be max capacity c rounded down to a power of 2. 
While D > 1 : 
	 while there is a s-t path p :
		 augment flow with p
	 D = D/2
End 
```
\# augmentations at most $\bf{2m \lceil {log_2k} \rceil}$ ,k is the max capacity of an edge, m is the number of edges.

> **key edge** : an edge whose deletion causes the largest drop in the value of the maximum flow. 
> **cut** : ![enter image description here](https://lh3.googleusercontent.com/-QoCsmNignRA/Vxrkp4hAqsI/AAAAAAAAC70/3Rq2JhtA_LMJ7PMikdATPVUJhzziCpw4QCKgB/s0/220px-Min-cut.svg.png "220px-Min-cut.svg.png")


##max flow min cut 
**maximum flow** passing from the source to the sink is equal to the **minimum capacity** that, when removed in a specific way prevents any flow from source to sink.

any edge in the min cut must be **saturated** ie. $c(e) = f(e)$ 


#assignment 1 


##Question 1
c) 
n! = 1 * ... * n 
n^n = n * ... * n 
