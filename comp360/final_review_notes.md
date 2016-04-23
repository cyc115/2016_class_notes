[TOC]

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
**runtime** : $O(m^2k)$ ,where m is # of edges, k is max capacity E of all edges. 
**space** : $O(m\log_2 k) $

##solution to performance problems : find alternative Augmenting path  

### shortest path 
choose the shortest path always 
runtime : $O(E^2V)$ , E = number of edges , V = number of vertices. 

### fattest path 
```
while has s-t path 
	find fattest path p //large bottleneck
	agument with p 
return 
```

Runtime : $O(|E|^2 \log k) $
at most $O(|E| \log k) $ augmentations.	1``	 

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

**proof** : skipped 

> **key edge** : an edge whose deletion causes the largest drop in the value of the maximum flow. 
> 
> **cut** : ![enter image description here](https://lh3.googleusercontent.com/-QoCsmNignRA/Vxrkp4hAqsI/AAAAAAAAC70/3Rq2JhtA_LMJ7PMikdATPVUJhzziCpw4QCKgB/s0/220px-Min-cut.svg.png "220px-Min-cut.svg.png")
> a **partition** of the vertices into two set A and B s.t. $s \in A$ and $t \in B$.
> 
> **capacity of cut** : $cap(A,B) = \sum_{u \in A, v \in B , uv \in E} {C_{uv}} $


##max flow min cut 
**maximum flow** passing from the source to the sink is equal to the **minimum capacity** that, when removed in a specific way prevents any flow from source to sink.

any edge in the min cut must be **saturated** ie. $\bf c(e) = f(e)$ 

**claim** : $\forall cut(A,B). MaxFlow \leq cap(A,B) $ 

**claim** : $ f^{out} (A) - f^{in} (A) = val(sink) \leq f^{out}(A) \leq cap(A,B)$


##bipartide matching
given G, what's the largest matching ?

	construct flow network G
	let X := Blue side 
	let Y := Red side
	add edges from S-X , T-Y with infinite edge capacities 
	connect X Y cut with edges of cap = 1 
	return max flow 

##vertex cover S 
**definition** : S is a vertex cover s.t. removing S will remove all edges in the graph. 

$$\bf  \text{ max S = max cut  $\in$ G  } $$

##disjointed path 
path that shares no edges. 

**Max flow = # of disjointed path**

** max # of disjointed edges = min # esges needed to eliminate all the s-t path** 

##multiple sources and sinks 
connect a master source to all s and master sink to all t, and run max flow 

##baseball elimination 

can `A` win the game ?  

![enter image description here](https://lh3.googleusercontent.com/-V1iESabLRZA/Vxurb3B0-dI/AAAAAAAAC8U/irJ3L5T9UEoQHc_feVkweyAgie3Kvu5MACKgB/s0/Selection_205.jpg "Selection_205.jpg")
> correction B -- C is 6 
> assume A wins all connected matches : A will have a max score of **91**

![enter image description here](https://lh3.googleusercontent.com/-ck5DPQ_HZYQ/Vxur-Xi_vMI/AAAAAAAAC8o/WQhSvcyiCTEvivrTk1FxfvDiou08PAXuACKgB/s0/Selection_206.jpg "Selection_206.jpg")

construct a flow network. 
- add source s and sink t
- add a vertex for each match (edge in the original graph) 
- add a vertex for each team

![enter image description here](https://lh3.googleusercontent.com/-9Dg-LtSpI3E/VxutcNIPH9I/AAAAAAAAC9A/_juyCGmvxa0BBhlaxQZvuBZBP1_-C6mPACKgB/s0/Selection_207.jpg "Selection_207.jpg")

> S -- node : edge is the number of game to play 
> node -- T : games to play without eliminating A 

$\text{if max flow =  $f^{out}(s)$ then all matches can be played without eliminating A, otherwise it is impossible.}$

