> Yuechuan Chen 
> 
> 260504371 
> 
> Sat Apr. 02 2016 
> 
> Comp 421 Database 
> 
>**TOC**
>
>[TOC]



#Question 1
Assume data page is 4012 bytes in total : since $\cfrac{1003 \cdot 3} {0.75}  = 4012$ based on the last paragraph in question description. 

Each tuple of sample is of size $4 + 10 + 10 + 4 + 50 = 78\ bytes $.

10,000 tuples is 780,000 bytes. 

$$\cfrac{780,000}{0.75 * 4012} = 259.22 \approx 260\ pages$$
#Question 2 

##1
###A

```sql
select seq 
from sequences
where size > 700 and region = 'POL'
number of pages due to IO.
```
####1 No index 
All tuples needs to be scanned once for the two conditions. 10,000 data page reads : **260 IO**. 

####2 unclustered index on attribute `size`:

- size can take on 1000 different values, so index has 1000 elements. 
- each of the index elements contains 50 pointers to unclastered data pages.   
- the size condition (size > 700) covers 400 elements. 

$$50 \cdot 400 = 20,000 \ data\ tuple$$

20k tuple distributed evenly on 10k pages. there are 50 buffer pages. 
If a data page is not in buffer we have to perform an IO to fetch the page, the resulted page reads is the following :

$$Pr(read) * \#\ of\ tuples$$
$$(1 - (50 / 10,000) ) * 10,000 = 9,950\ reads $$

The check on 'region' can be done at the same time we perform the check on 'size' so no extra IO is required.

since 'size' is indexed we will also need to include the number of index page reads: 

- per index element we have : 
    - 50 rid : 10 bytes each 
    - index of type int : 4 bytes each 

$$50 * 10 + 4 = 504\ bytes\ per\ element$$

assume index is 75 % full and 4,012 bytes per page, we will have 

$$\cfrac{504}{0.75 * 4,012} = 5.97 ~ 6\ elements\ per\ page$$

since there are 1000 elements for the index on 'size' and 6 elements per index page. There will be 166.66 ~ 167 index pages. 

out of the 167 index pages we need to read 40 % of it = 66.8 ~ 67 index pages read. 

Final result is 67 index page reads + 9,950 data page reads = 10,017 reads in total.

####3 Unclustered index on 'region' :

Calculate the size of each element in the 'region' index.

$$3 + \cfrac{50,000}{500} \cdot ridSize = 1,003 bytes\ per\ element$$

Given 75 % full rate and 4012 bytes pages, we end up with 3 elements per page and 167 pages. ( as calculated in question 1).

To calculate the total number of IO pages we need to make 1 IO access to the 'region' index page containing pointers to all 'POL' data tuples. 

The tuple will contain 100 rids that we need to check for size > 700 condition. The chance of requesting an data page that is already in buffer is 50 / 10000, much too small to make a difference for only 100 accesses. We will need to make 100 data page IO for this step. 


In total, we will make 101 IO accesses, 1 to access the region index and 100 to access each of the corresponding data pages. 


####4. unclustred indices on both `size` and `region` :

the idea is to look up both `region` index and `size` index separately and then join the two on `rid`. 

As said before we need 1 IO access to obtain all tuples with `region = POL`containing 100 rids. Store this page in buffer and load the first 49 of the `(167*0.40) = 67` index pages on size. Find common rids that appears in both the `size` index as well as the `region`index,  and load in the next 18 `size` index page and do the same. This part will cause `1 + 67` IO accesses. After obtaining all `rid` we need to access the data page. Assuming 40% of `region=POL` have `size > 700` (equiprobability)  ,we will need 40 IO. 

The total number of IO would be `1 + 67 + 40 = 108`, which is slightly more than the io needed if there is only the index on `region`.


###B
In case `size > 200` : 90% of all tuple will fit the description. 

- i) no change  
- ii) $151\ index\ page\ read + (1-(50/10,000)) * 9,000 = 9106$ IO in total.
- iii) no change : 101 IO 
- iiii) 1 IO for index on `region` , 167*0.9 = 151 IO for index on `size`, 90% of tuple that has `region = POl` will satisfy `size > 200` so 90 IO to access each data page. `1 + 151 + 90 = 242` IO in total 

In case `size > 1000` : 10% of all tuple will fit the description. 

- i) no change, need to scan everything 
- ii) `167*0.1 = 17` idx page read + 995 data page read = 1012 total IO 
- iii) no change : 101 IO 
- iiii) 1 IO for idx `region` , 167 * 0.1 = 17 for idx `size` , 1 + 17 + 10 = 28 total IO 

###C

Yes clustering on size should improve performance especially when it comes to range queries, The majority of the query IO are caused by the random access pattern when checking for size. If we cluster by size, we will 1) access less data pages since all needed data are clustered and 2) we can process one data page after another without needing to reload them again. 

##2 

``` sql
select region , count (*) 
from sequences 
group by region 
having count(*) > 120 
```

###a) give an execution strategy that uses no index 

<img src="https://docs.google.com/drawings/d/1x50JysjXL6nlvtFeuHTusr3AnoPaY1_floHG1H7ucY8/pub?w=413&amp;h=546">

1. Project `region` from `sequence` table by iterating each tuple in `Sequence` as Temp1 
2. Sort by `region` (Grouping) as Temp2 
3. iterate through each tuple in Temp2 and `count(*)` for each `region` as Temp3 
4. Select tuples with `count > 120` from Temp3 by scanning. 

###b) execution plan with index on `region` 

	select region , count (*) 
	from sequences 
	group by region 
	having count(*) > 120 

> given index on region :  (reg1 , rid1 , rid2 , ... , ridn),(reg2,...)

1. for each tuple in index of `region` : count rids  -> `(reg1, count1) , (reg2, count2),...` as Temp1
2. for each tuple in Temp1 : select tuple if `count > 120`

###c) 
I would use a clustered index on `region` and an unclustered on `sampleid`

#Question 3

## 1 estimate the number of output tuples 

Worst case : 
$$|Sequence| \cdot |Samples| =500,000,000\ tuples$$ 
 
 Assume even distribution :  
 $$5 \cdot |Samples| =50,000 \ tuples$$ 
> 5 is the number of matches in Sequence per sampleid
##2 estimate IO 

### a) index nested loop join between Sample and Sequences 

	for each tuple s in Sequence : 
		find all matching tuples (where s.sampleid = g.sampleId) g in Samples using index_samples
		add <s , g> to result 

`sample` tuple size : $$4 + 10 + 10 + 4 + 50 = 78 bytes$$
$$\cfrac{4012 \cdot 0.75} {78} = 38\ tuple\ per\ page $$
$$\cfrac{10,000}{38} = 263\ pages $$
  $|Sequence| + |Sequences|  \cdot |sample| = 10,000 + 10, 000 * 263 = 2,640,000 IO$ 

###b) block nested loop join Sample and Sequence
sample has **262 pages** , sequence has 10,000 pages. 
we have 50 buffer pages.

	split sequence into blocks bs each consists of 49 pages
	for each block b in bs :
		load b into memory
		for each page p in sample pages :
			load p into memory 
			match each tuple t1.sampleid in b with each t2.sampleid in p
			append to result if matched

there will be 10,000 / 49 buffer pages : 205 number of blocks for sequence pages 
this will give us 10,000 page reads for sequence + (262 * 205 )  = **63710 IO**



###c) sort merge join between sample and sequence 

####**Sort the Sequence table:**
Sort Sequence based on Sequence.sampleid and sort Sample based on sampleid.
Split Sequence into blocks of 50 pages/ block= 10,000 / 50 = **2,000 blocks**.

**pass 0**: 
For each block do in mem sort, and store intermediate result on disk. 

- 10,000 page read + 10,000 page write = **20,000 IO**.

**pass 1** : 
2000 page cannot all be fitted on to buffer at the same time, so split the 2000 blocks again into blocks of size 50 -> 40 blocks of blocks. Read each block and merge sort within them and then write intermediate result to disk. 

- 10,000 page read + 10,000 page write = **20,000 IO** 

**pass 2** : 
merge sort the 40 block of blocks above to a final sorted Sequence table : 

- again **20,000 IO** 

####**sort the sample table:**

since the question did not say if the Sample index is clustered. I will assume it is **unclustered** and **requires sorting**. 

sample has **262 pages**, splitted into 50 page / block gives 6 blocks 
**pass 0** :  **524 IO**
**pass 1** :  **524 IO** (fully sorted) 

####**join phase**

There are 10,000 samples and 50,000 sequences, even distribution implies there are **5 sequence** with identical sampleid. 

10,000 sequence data pages implies there will be **5 tuples per page**, so one sampleid is associated with 1 sequence data page.
  
Number of join IO : 262 sample pages + 1 * 10,000 data pages = **10,262 IO**

####**total io** 
$$20,000 \cdot 3 + 524 \cdot 2 + 10,262 = 71310\ IO $$

###d) hash join between Samples and Sequences

$$cost = 3 \cdot ( |sequence| + | sample|) $$

> under assumption given in class 

3 * 60,000 = **180,000 IO** 

#Question 4

```sql
select p.gender , s.organ , se.region 
from patients pp , samples s , sequence se 
where p.pid = s.pid 
and s.sample = se.sampleid 
and se.size > 800 
and p.country = 'Brazil'
```


<img src="https://docs.google.com/drawings/d/1OPJHv08qk1KWmyN6fbqk_15gex5Vq2a85maXxvkRwHw/pub?w=1440&amp;h=1080">

> the number of tuples flow from operator to the next is indicated as subscript. 

Use merge sort join for the `join(pid)` , and index nested loop join on `Join(sampleid)` with index on `A`


---

> Note to self : 
> 
> - [**notes on sort merge join**](https://www.informatik.hu-berlin.de/de/forschung/gebiete/wbi/teaching/archive/sose05/dbs2/slides/09_joins.pdf)
> 
> ALgebraic optimization 
> 
> - eliminate tuple first 
> consider number of tuples that flow from one operator to the next 

