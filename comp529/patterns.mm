<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node text="patterns.org" background_color="#00bfff">
<richcontent TYPE="NOTE"><html><head></head><body><p>--org-mode: WHOLE FILE</p></body></html></richcontent>
<node text="requirement" position="left">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- critical analysis<br />- design recommnedation<br />- uml<br /></p></body>
</html>
</richcontent>
</node>
</node>
<node text="structure" position="left">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- 50% definition (short)<br />- 30% case study<br />- 20% uml </p></body>
</html>
</richcontent>
</node>
</node>
<node text="lec 02" folded="true" position="left">
<node text="reverse engineering">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- good parts?<br />- bad parts<br />- improvement?</p></body>
</html>
</richcontent>
</node>
</node>
</node>
<node text="Lec 03" folded="true" position="left">
<node text="3 type of architectures">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- static :: appear on disk <br />&#160;&#160;- class <br />&#160;&#160;- file<br />&#160;&#160;- package<br />&#160;&#160;- import (tree)<br />- run-time :: appear in runtime env<br />&#160;&#160;- memory alloc<br />&#160;&#160;- object references<br />&#160;&#160;- client server <br />- management structure :: When will static parts be invoked ?<br /></p></body>
</html>
</richcontent>
</node>
</node>
<node text="architect's task :: corresponding to the types of arch">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>1. static decomposition of system<br />&#160;&#160;&#160;1. id subsystems<br />&#160;&#160;&#160;2. id commuinication path<br />&#160;&#160;&#160;3. determin element's connection technique<br />&#160;&#160;&#160;4. determin how configuration/ deployment/ replacement tech works<br />2. dynamic control relationship<br />&#160;&#160;&#160;1. decide how/what/where data flows<br />&#160;&#160;&#160;2. formate of message passing<br />	1. eg. function call<br />	2. event driven<br />	3. messaging<br />3. Alternative arch<br />4. trade-off analysis<br />5. show all req. (functional and non-functional) mapped to architecture<br /></p></body>
</html>
</richcontent>
</node>
</node>
<node text="architecture styles" folded="true">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>a group of architectures solving the same problem.</p></body>
</html>
</richcontent>
</node>
<node text="style consists of:">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- control-flow rules<br />- constraints<br />- design patterns<br />- definition of elements and connectors<br />- runtime properties<br />- (un)supported attributes<br /></p></body>
</html>
</richcontent>
</node>
</node>
<node text="attributes (probably unimportant)" folded="true">
<node text="static attributes">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>1. Interoperable :: how info exchange works<br />2. extensible<br />3. maintain<br />4. testable<br />5. portable<br />6. scalable<br />7. flexible<br />8. **and shit load**<br /></p></body>
</html>
</richcontent>
</node>
</node>
<node text="Runtime attributes">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>1. available<br />2. security<br />3. ...<br /></p></body>
</html>
</richcontent>
</node>
</node>
<node text="Business attributes">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- time to market <br />- cost<br />- lifetime<br /></p></body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
</node>
<node text="Lec 04 :: Software Elements &amp; connectors" folded="true" position="left">
<node text="conn. topology">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>[[./img/1.jpg]]<br />- pattern ? <br />- popeline<br />- layered<br />- etc.<br /></p></body>
</html>
</richcontent>
</node>
</node>
<node text="types of conn. topology">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- <b>static</b><br />&#160;&#160;- layered<br />&#160;&#160;- flatten<br />&#160;&#160;- contralized<br />&#160;&#160;- distributed<br />- <b>dynamic</b><br />&#160;&#160;- callback<br />&#160;&#160;- multi-threaded<br />&#160;&#160;- sequential<br />&#160;&#160;- etc<br />&#160;</p></body>
</html>
</richcontent>
</node>
</node>
<node text="problem space analysis">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>1. separate elements and connectors<br />2. define layout topology for ele, conn, and interactions<br />3. define semantic behavior<br />4. id attribute trade-off<br /></p></body>
</html>
</richcontent>
</node>
</node>
<node text="cohesion :: single task">
</node>
<node text="coupling :: extent of dependency">
</node>
<node text="elements" folded="true">
<node text="properties">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- api <br />- functional requirement<br />- non-functional</p></body>
</html>
</richcontent>
</node>
</node>
<node text="element types">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- static<br />&#160;&#160;- source<br />- run-time <br />&#160;&#160;- threads (single/ server/ cluster)</p></body>
</html>
</richcontent>
</node>
</node>
</node>
<node text="connectors" folded="true">
<node text="attributes">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- direction (A--&gt;B)<br />- synchronization (event driven?)<br />- sequence dependence (does methods need to be invoked in a particualr oder?)</p></body>
</html>
</richcontent>
</node>
</node>
<node text="runtime properties">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- sync. blocking <i> non-blocking<br />- uni(bi)directional invokation<br />- information carrier<br />&#160;&#160;- variable<br />&#160;&#160;- environment res (globals)<br />&#160;&#160;- message ?<br />&#160;&#160;- method<br />- active time <br />&#160;&#160;- active </i> event-driven <br />- fan-out<br />&#160;&#160;- 1-1: method to method<br />&#160;&#160;- 1-n: client-server<br />- conn. environment <br />&#160;&#160;- homogeneous <br />&#160;&#160;- heterogeneous : (eg. broker)</p></body>
</html>
</richcontent>
</node>
</node>
</node>
<node text="agile design">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>1. static description<br />&#160;&#160;&#160;1. abstract ele, connector with lines <br />2. dynamic description<br />&#160;&#160;&#160;1. add attrubutes<br />3. delay binding<br />4. Binding<br />[[./img/3.jpg]]<br /></p></body>
</html>
</richcontent>
</node>
</node>
<node text="non-functional requirement :: requirement representing a principle or a quality">
</node>
</node>
<node text="lec 05 :: modeling" folded="true" position="left">
<node text="paradigms" folded="true">
<node text="1. business lvl">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- use case [behaviour]<br />[[./img/8.jpg]]<br />- block <br />[[./img/7.jpg]]<br />- data flow  [behaviour]<br />[[./img/9.jpg]]</p></body>
</html>
</richcontent>
</node>
</node>
<node text="2. architecture lvl">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- domain :: system wide description of program <br />[[./img/6.jpg]]<br />- activity  [behaviour]<br />[[./img/5.jpg]]<br />- class [structure]<br />- object [structure]<br />- flow chart <br />[[./img/4.jpg]]<br />- composit [structure]<br />[[./img/10.jpg]]<br />- state  [behaviour]<br />- sequence  [behaviour]</p></body>
</html>
</richcontent>
</node>
</node>
<node text="3. developer lvl">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- deployment [structure]<br />[[./img/11.jpg]]<br />- package [structure]<br />- component [structure]</p><p></p><p></p></body>
</html>
</richcontent>
</node>
</node>
</node>
<node text="Architecture description language">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>2 forms : <br />1. ACME<br />2. predicate calculus </p><p>properties:<br />- composition :: describe system as composition of independent components and connectors<br />- abstract :: abstract description of each componet's role<br />- heterogenity :: a descirption can be a combination of many modeling techniques<br /></p></body>
</html>
</richcontent>
</node>
</node>
</node>
<node text="lec 06 :: views" position="left">
<node text="view model :: complete simplified description of a system from a perspective">
</node>
<node text="4+1 view model">
<node text="scenario view (+1) (business)">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- gather story<br />- use-case diagram / requirement </p></body>
</html>
</richcontent>
</node>
</node>
<node text="UI view (business)">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- mock ui </p></body>
</html>
</richcontent>
</node>
</node>
<node text="logical view (architecture) (static)">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- domain model <br />- class diagram</p></body>
</html>
</richcontent>
</node>
</node>
<node text="process view (architecture) (dynamic)">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- state-machine<br />- sequence diagram </p></body>
</html>
</richcontent>
</node>
</node>
<node text="physical view (architecture)">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- deployment<br />- etc</p></body>
</html>
</richcontent>
</node>
</node>
<node text="developmen view (sw construction)">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- agile, scrum ...<br />- languages, library<br />- testing ...<br /></p></body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
<node text="lec 06 :: design principle : best-practicie within a pradigm" folded="true" position="left">
<node text="OO" folded="true">
<node text="open closed principle">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>open to extention, closed to modification<br />- keep attributes private<br />- minimize globals </p></body>
</html>
</richcontent>
</node>
</node>
</node>
<node text="component based">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- modular<br />- portable<br />- replaceable<br />- reusable set of well defined encapsulated functions exported as a higher-level interface.<br />[[./img/12.jpg]]</p></body>
</html>
</richcontent>
</node>
</node>
<node text="heterogeneous">
</node>
</node>
<node text="archtectural styles" position="left">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- commonly implemented architectures<br />- best practices<br />- group of related architectures solving a common problem<br /></p></body>
</html>
</richcontent>
</node>
</node>
<node text="1. Data flow style" folded="true" position="left">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>[[./img/13.jpg]]<br />&#160;&#160;&#160;1. series of independent transformation on data by components<br />&#160;&#160;&#160;2. connectors <br />&#160;&#160;&#160;&#160;&#160;&#160;1. stream<br />&#160;&#160;&#160;&#160;&#160;&#160;2. pipe<br />&#160;&#160;&#160;&#160;&#160;&#160;3. packets<br />&#160;&#160;&#160;&#160;&#160;&#160;4. etc...</p></body>
</html>
</richcontent>
</node>
<node text="batch sequential" folded="true">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>data is batched in a unit <br />eg. compiler </p></body>
</html>
</richcontent>
</node>
<node text="application:">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- batched data<br />- intermediate file is a sequential access <b>file</b><br />- subsystems reads and write to file</p></body>
</html>
</richcontent>
</node>
</node>
<node text="benefit">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- simple division of system <br />- subsystem can be stand-alone (low-coupling) == (reusable)</p></body>
</html>
</richcontent>
</node>
</node>
<node text="limitations">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- requires external control environment<br />- does not provide interactive interface<br />- no concurrency<br />- high latency<br /></p></body>
</html>
</richcontent>
</node>
</node>
</node>
<node text="stream: pipe and filter" folded="true">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>source -(pipe)-&gt; filter -(pipe)-&gt; sink<br />one bite at a time.<br />- push :: send info to next step<br />- pull :: grab from prev. step<br /></p></body>
</html>
</richcontent>
</node>
<node text="application:">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- simple data format<br />- producer - consumer related problems</p></body>
</html>
</richcontent>
</node>
</node>
<node text="benefit">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- concurrent<br />- reusable<br />- modifiable : low coupling btn filter<br />- simple<br /></p></body>
</html>
</richcontent>
</node>
</node>
</node>
<node text="Process Control" folded="true">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>[[./img/14.jpg]]<br /></p></body>
</html>
</richcontent>
</node>
<node text="application:">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- stable rate of output</p></body>
</html>
</richcontent>
</node>
</node>
<node text="benefit">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- embeddable<br />&#160;&#160;</p></body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
<node text="2. Data centric style" folded="true">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- centralized data<br />- client independent from database</p></body>
</html>
</richcontent>
</node>
<node text="repository architecture" folded="true">
<node text="application:">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- passive repo<br />- large and complex info systems<br />- transaction based comm.</p></body>
</html>
</richcontent>
</node>
</node>
<node text="benefit">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- easy to backup <i> restore<br />- scalable </i> reusable : add more agents if needed</p></body>
</html>
</richcontent>
</node>
</node>
<node text="limitations">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- singular point of failure : database<br />- network traffic are alrge for database .<br />&#160;&#160;</p></body>
</html>
</richcontent>
</node>
</node>
</node>
<node text="blackboard architecture" folded="true">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>[[./img/15.jpg]]<br />[[./img/16.jpg]]</p></body>
</html>
</richcontent>
</node>
<node text="application">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- clients subscribe to blackboard which watches the DB<br />- <b>subscription</b> <br />- open ended <br />- multi-deciplinary problems<br />- eg. <br />&#160;&#160;- event based<br />&#160;&#160;- mcv<br /></p></body>
</html>
</richcontent>
</node>
</node>
<node text="benefit">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- scalable and concurrent<br />- knowledge source reusable</p></body>
</html>
</richcontent>
</node>
</node>
<node text="limitations">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- changes to blackboard cascade through system<br />- client <b>synchronization problem</b><br />- hard to debug<br /></p></body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
<node text="3. Hierarchical style" folded="true">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- lower level provide services to upper <br />- eg. .NET framework, TCP/IP </p></body>
</html>
</richcontent>
</node>
<node text="Main subroutine - primary secondary archs">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- reuse subroutines</p></body>
</html>
</richcontent>
</node>
</node>
<node text="Master-slave - primary secondary archs" folded="true">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- Master is the driver<br />- slave initiate activity when ordered to<br />&#160;&#160;- run independently<br />- fault tolerant</p></body>
</html>
</richcontent>
</node>
<node text="benefit">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- critical reliability<br />- speedy consumption of large data set </p></body>
</html>
</richcontent>
</node>
</node>
</node>
<node text="layered" folded="true">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>[[./img/17.jpg]]</p><p>eg. SOAP , HTML</p></body>
</html>
</richcontent>
</node>
<node text="3 types :">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>1. pure<br />&#160;&#160;&#160;- no cross communication <br />2. bridge<br />&#160;&#160;&#160;- comm with grand-child<br />3. breach<br />&#160;&#160;&#160;- comm. with ancestor<br /></p></body>
</html>
</richcontent>
</node>
</node>
<node text="Limitations:">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- lower run time<br />- few application domain<br />- breach can causes deadlock<br />- bridge cause tight coupling<br />- eceptions are difficult to handle<br /></p></body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
<node text="4. implicit asynchrono" folded="true">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- publisher - subscriber<br />&#160;&#160;- observer pattern :: Subject keeps a list of observers and nitify them on subject update<br />- producer - consumer</p></body>
</html>
</richcontent>
</node>
<node text="non buffered" folded="true">
<node text="application">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- interactive GUI<br />- loose coupling application<br />- event handling not predictable</p></body>
</html>
</richcontent>
</node>
</node>
<node text="Benefit">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- off the shelf framework<br />- reusable components<br />- easy to maintain<br />- loose coupling<br />- parallel execution possible</p></body>
</html>
</richcontent>
</node>
</node>
<node text="limitations">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- hard to debug<br />- overhead<br />- reliability of communication </p></body>
</html>
</richcontent>
</node>
</node>
</node>
<node text="buffered" folded="true">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- has a buffer area<br />- [[./img/18.jpg]]</p></body>
</html>
</richcontent>
</node>
<node text="application">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- network</p></body>
</html>
</richcontent>
</node>
</node>
<node text="Benefit">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- Anonymity<br />- concurrent<br />- scalable<br />- batch processing<br />- loose coupling</p></body>
</html>
</richcontent>
</node>
</node>
<node text="limitations">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- Capacity of the message queue<br />- Presentation and data message conversions<br />- Complex design and implementation<br />[here lec 14 ]</p></body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
<node text="5. Interaction oriented" folded="true">
<node text="MVC" folded="true">
<node text="application">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- best for user interaction<br />- modules<br />&#160;&#160;- data<br />&#160;&#160;- control<br />&#160;&#160;- presentation    </p></body>
</html>
</richcontent>
</node>
</node>
<node text="Benefit">
</node>
<node text="limitations">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- not good for real-time machine interfacing<br /></p></body>
</html>
</richcontent>
</node>
</node>
</node>
<node text="PAC" folded="true">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>[[./img/364.jpg]]</p></body>
</html>
</richcontent>
</node>
<node text="application">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- multiple agent and interactive environment<br />- each agent has a PAC<br />- Control comm. with other agents</p></body>
</html>
</richcontent>
</node>
</node>
<node text="Benefit">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- loose agent coupling<br />- divisible to multiple agents<br />- multitasking as individual threads<br />- multi-view<br />- easy to plugin<br />- concurrent</p></body>
</html>
</richcontent>
</node>
</node>
<node text="limitations">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- control overhead<br />- comm. bottle neck at controller<br /></p></body>
</html>
</richcontent>
</node>
</node>
</node>
<node text="PAC Vs MVC">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- PAC is layered<br />- PAC has dumb presentation component where all the intelligence resides in the Controller module<br />- PAC's P and A never talk to each other<br />- eg. PAC is Air Traffic Control system<br />&#160;&#160;- The classic example of a PAC architecture is an air traffic control system. One PAC Agent takes input from a radar system about the location of an incoming 747, and uses the Presentation component to paint a picture of that blip on a canvas (screen). Another Agent independently takes input about a DC-10 that is taking off, and paints that blip to the canvas as well. Still another takes in weather data and paints clouds, while another tracks the incoming enemy bomber and paints a red blip instead. (Er, wait...)</p></body>
</html>
</richcontent>
</node>
</node>
</node>
<node text="6. Distributed" folded="true">
<node text="client server architecture" folded="true">
<node text="application">
</node>
<node text="Benefit">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- separation of responsibilities<br />- resuable server </p></body>
</html>
</richcontent>
</node>
</node>
<node text="limitations">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- security complicated due to packets<br />- testability<br />- fat clients</p></body>
</html>
</richcontent>
</node>
</node>
</node>
<node text="multi-tired arch" folded="true">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p><a href="./img/365.jpg">3 tired example</a><br /></p></body>
</html>
</richcontent>
</node>
<node text="application">
</node>
<node text="Benefit">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- reusable<br />- scalable<br />&#160;&#160;- reduce network traffic<br />- reliable</p></body>
</html>
</richcontent>
</node>
</node>
<node text="limitations">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- slow / non-responsive</p></body>
</html>
</richcontent>
</node>
</node>
</node>
<node text="broker (proxy)" folded="true">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>[[./img/366.jpg]]</p></body>
</html>
</richcontent>
</node>
<node text="types" folded="true">
<node text="network">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>connect components together : TCP/IP</p></body>
</html>
</richcontent>
</node>
</node>
<node text="bridge">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>broker communicating with 2 registered brokers <br /></p></body>
</html>
</richcontent>
</node>
</node>
</node>
<node text="Benefit">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- middleware abstract and manage communication<br />- better decoupling<br />- easy to change and extend (it's component based)<br />- server portable<br />- runtime changable</p></body>
</html>
</richcontent>
</node>
</node>
<node text="limitations">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- proxy overhead<br />- low Fault tolerent<br />- proxy hard to test</p></body>
</html>
</richcontent>
</node>
</node>
</node>
<node text="service oriented arch" folded="true">
<node text="application">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>[[./img/367.jpg]]<br />- business process via API (JSON or SOAP)<br />- messaging via request-response<br />- client request a service from a directory. eg. old telephone company </p></body>
</html>
</richcontent>
</node>
</node>
<node text="benefit">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- loose coupling<br />- reusable<br />- scalable</p></body>
</html>
</richcontent>
</node>
</node>
<node text="limitation">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- overhead<br />- reliable</p></body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
<node text="7. security" folded="true">
<node text="silo strategy">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>a wall blocking access.</p></body>
</html>
</richcontent>
</node>
</node>
<node text="ringed srch">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>[[./img/368.jpg]]</p></body>
</html>
</richcontent>
</node>
</node>
<node text="ticket arch">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>[[./img/368.jpg]]</p></body>
</html>
</richcontent>
</node>
</node>
<node text="object arch">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>linux rwx permission system</p></body>
</html>
</richcontent>
</node>
</node>
<node text="encryption arch">
</node>
<node text="networked arch">
</node>
</node>
<node text="8. heterogeneous">
</node>
<node text="9. product line">
</node>
<node text="reverse engineering techniques">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- proof by reconstruction<br />- proff by contradiction<br />- steps (PbC):<br />&#160;&#160;1. assumed architecture<br />&#160;&#160;2. Procedure :: study application for the purpose of disproving your assumed architecture<br />&#160;&#160;3. outside analysis<br />&#160;&#160;4. inside analysis<br />&#160;&#160;5. conclusion</p><p><br />1. <br />&#160;&#160;&#160;1. style are widely accepted implementation methods to tackle a problem. It make our implementation easier to understand<br /></p></body>
</html>
</richcontent>
</node>
</node>
<node text="diagrams">
<node text="deployment">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>[[./img/deployment-example-web-application.png]]</p></body>
</html>
</richcontent>
</node>
</node>
<node text="activity">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>[[./img/activityDiagramEnroll.JPG]]</p></body>
</html>
</richcontent>
</node>
</node>
<node text="state-machine">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>[[./img/stateMachineSeminarRegistration.jpg]]<br /></p></body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
</map>
