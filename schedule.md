---
layout: default
title: Schedule

canvas: 
  assignment_url: 'https://canvas.asu.edu/courses/99223/assignments'
  
yellowdig_url: 'https://canvas.asu.edu/courses/99223/assignments/2552420'

yellowdig: 
  post-01: 'Friday, August 20th'
  post-02: 'Friday, August 27th' 
  post-03: 'Friday, September 3rd' 
  post-04: 'Friday, September 10th' 
  post-05: 'Friday, September 17th' 
  post-06: 'Friday, September 24th' 
  post-07: 'Friday, October 1st' 
  

labs:
  lab-01:  'Thursday, Aug 26th' 
  lab-02:  'Tuesday, August 31st'
  lab-03:  'Tuesday, September 7th'
  lab-04:  'Tuesday, September 14th'
  lab-05:  'Tuesday, September 21st'
  lab-06:  'Tuesday, September 28th'
  
  
projects: 
  r-package:  'Friday, September 10th'
  report-template:  'Tuesday, October 5th'
  code-through:  'Friday, October 8th'
  
  
---

<!--- 
Submit Button - <a class="uk-button uk-button-primary" href="{{page.canvas.assignment_url}}">SUBMIT LAB</a>
-->






<div class = "uk-container uk-container-small">
  
<br><br>
<br><br>

**COURSE CONTENT:**

-----------------------

* TOC
{:toc}

-----------------------

<br>





# Course Overview

## Topics We Will Cover

<hr> 

<a class="uk-button uk-button-default" href="../lectures/week-00/">OVERVIEW</a>

<hr>
  
## Due Dates 

For easy reference, you have the following due dates this term: 

**Labs:** 

* {{page.labs.lab-01}} 
* {{page.labs.lab-02}} 
* {{page.labs.lab-03}} 
* {{page.labs.lab-04}} 
* {{page.labs.lab-05}} 
* {{page.labs.lab-06}} 

**Post Practice Problems on YellowDig:**
 
* {{page.yellowdig.post-01}} 
* {{page.yellowdig.post-02}} 
* {{page.yellowdig.post-03}} 
* {{page.yellowdig.post-04}} 
* {{page.yellowdig.post-05}} 
* {{page.yellowdig.post-06}} 
* {{page.yellowdig.post-07}} 


**Projects:**

* **R Package**: {{page.projects.r-package}}
* **Code Through**: {{page.projects.code-through}}  
* **Customized Report Template**: {{page.projects.report-template}} 



## Practice Problem Warmup

<hr>

<a class="uk-button uk-button-default" href="../practice/week-01/">PRACTICE PROBLEMS</a>

<a class="uk-button uk-button-primary" href="{{page.yellowdig_url}}">YELLOWDIG</a>

**Post on {{page.yellowdig.post-01}}** 
  
<hr>

Non-obvious bugs can EASILY work there way into your code. Once you identify the problem always seems obvious in retrospect. But it is often unclear why code is not working as expected. 

These practice problems are largely an opportunity to review content from CPP 526 and develop a sensitivity for the importance of writing **robust and maintainable code** and testing for unexpected behaviors. 

Many of these questions are similar to riddles or brain teasers that help sharpen your critical thinking skills when working with code. Work through them on your own, then discuss your ideas on YellowDig with classmates. 

For the topics this week, you will find that reviewing the lecture notes on one-dimensional data types useful: [VECTORS IN R](http://ds4ps.org/dp4ss-textbook/ch-050-vectors.html).

*Each question has it's own pin. Share your solutions by adding comments to the pins.*

<br>
<br>
<br>



  
  
  
  
  
  
  

<!--- 
#########################################
#########################################
##########
##########         WEEK 01
##########
#########################################
#########################################
-->

  
  
# Week 1 - Control Structures  

## Unit Overview 

  
**Description**

This section introduces [control structures](https://intellipaat.com/blog/tutorial/r-programming/decision-making-and-loops/) that will allow you to incorporate decision-making into computer code. It enables things like *if-then* logic to determine what code should be used based upon whether specified conditions are met. 


**Learning Objectives**

Once you have completed this unit you will be able to: 

* divide or "factor" your code into distinct tasks 
* use functions as steps in problem-solving 
* review compound statements 
* implement if-else statements 
* identify "edge cases" and their impact on code 

**Lecture Notes**
  
<a class="uk-button uk-button-default" href="../lectures/week-01/">Lecture Notes</a>



<br>
<br>


## Lab-01 - Control Structures 

<hr>
  
<a class="uk-button uk-button-default" href="../labs/lab-01-instructions.html">LAB-01 Instructions</a>

<a class="uk-button uk-button-primary" href="{{page.canvas.assignment_url}}">SUBMIT LAB</a>

**Due {{page.labs.lab-01}}**

<hr>

This lab is based upon the famous [Monty Hall Problem](http://www.montyhallproblem.com/). 

There was famously much debate about the correct solution when the problem was initially introduced. It is now a popular example used to teach conditional probability in statistics.  
  
**Using Computing Logic to Build the Game**

The Monty Hall Problem is a great example of a mathematical problem that might be hard to solve using proofs, but it is fairly easy to solve using simulation. 

Since it is a game with simple and explicit rules we can build our own virtual version. Then we can compare how outcomes differ when we deploy the two different strategies for selecting doors. 

In Lab 01 we will use functions and control structures to build a virtual version of the game. 

```r
### STEP 01 OF GAME 
# 1: create a vector of 3 doors: 2 goats and 1 car
# 2: randomize the position of the car for a new game
# 3: return the new game setup (vector of prizes)

create_game <- function( )
{
    prizes <- c("goat","goat","car")
    a.game <- sample( x=prizes, size=3, replace=F )
    return( a.game )
} 
```
  
In Lab 02 we will use simulation to play the game thousands of times so that we can get stable estimates of the payoff of each strategy. 


<iframe width="560" height="315" src="https://www.youtube.com/embed/9vRUxbzJZ9Y" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


<hr><br>



## Practice Problems

<hr> 
  
<a class="uk-button uk-button-default" href="../practice/week-01/">PRACTICE PROBLEMS</a>

<a class="uk-button uk-button-primary" href="{{page.yellowdig_url}}">YELLOWDIG</a>

**Post on {{page.yellowdig.post-02}}**

<hr>
<br>








<!--- 
#########################################
#########################################
##########
##########         WEEK 02
##########
#########################################
#########################################
-->


# Week 2 - Simulations 




## Unit Overview 


**Description**

This section introduces loops. We will use them to create simulations. 

**Learning Objectives**

Once you have completed this section you will be able to 
* use a loop responsibly in your code 
* select appropriate iterators 
* be mindful of the collector vector needed for the loop 

**Lecture Notes:** 

<a class="uk-button uk-button-default" href="../lectures/week-02/">LECTURE NOTES</a> 

<a class="uk-button uk-button-default" href="../p-02-loops.html">Building Simulations in R: Mastering Loops</a>

<a class="uk-button uk-button-default" href="../Animations.html">Creating Animations with Loops</a>

**Example:** 

Buzzfeed published a recent story with a dynamic visualization of the change in health care costs over time. 

It uses loops to create effective data visualization:

[Why Americans Are So Damn Unhealthy, In 4 Shocking Charts](https://www.buzzfeednews.com/article/peteraldhous/american-health-care)   [*Buzzfeed Replication Files*](https://github.com/BuzzFeedNews/2017-05-us-health-care)

![](../assets/img/buzzfeed-gif.gif)

<br>
<br>
<br>
  





## Lab 02

<hr> 
  
<a class="uk-button uk-button-default" href="../labs/lab-02-instructions.html">INSTRUCTIONS</a>

<a class="uk-button uk-button-primary" href="{{page.canvas.assignment_url}}">SUBMIT LAB</a>

**Due {{page.labs.lab-02}}**

<hr>
<br>





## Practice Problems

<hr> 
  
<a class="uk-button uk-button-default" href="../practice/week-02/">PRACTICE PROBLEMS</a>

<a class="uk-button uk-button-primary" href="{{page.yellowdig_url}}">YELLOWDIG</a>

**Post on {{page.yellowdig.post-03}}**
  
<hr>
<br>



  
  
  

<!--- 
#########################################
#########################################
##########
##########         R Package 
##########
#########################################
#########################################
-->


## PROJECT: Build Your Own R Package

<hr> 

<a class="uk-button uk-button-default" href="../labs/create-r-package.html">INSTRUCTIONS</a>

<a class="uk-button uk-button-primary" href="{{page.canvas.assignment_url}}">SUBMIT PACKAGE</a>

**Due {{page.projects.r-package}}**

<hr> 
  

At some point you might develop a tool that you want to upload to the CRAN so it is widely available.

More likely, if you are working with a team of analysts within an organization you will begin building a library of functions that are specific to the project. 

Even if not sharing the package widely it is often a more efficient method for the team to maintain project code so that it can be easily updated and functions enhanced. Project updates are then easily shared simply by re-installing the package. 

This tutorial will teach you how to build and share a package in R. You will "package" your R code from Labs 01 and 02 into a new **montyhall package** to make it easier to run simulations to evaluate game strategies. 

**Grading:**

Your package will be installed and submitted to a series of testing scripts that ensure each function operates as expected. 

The documentation will also be inspected to ensure there are complete instructions and sample code available for each of the functions. 

You will receive a grade of zero if you package cannot be installed or run, and you will lose 5 points if documentation is unavailable. 

*To receive credit for the assignment, submit the URL to your package on GitHub.*
  
<br> 
<br> 
  



  
  
  
  


<!--- 
#########################################
#########################################
##########
##########         WEEK 03
##########
#########################################
#########################################
-->



# Week 3 - Regular Expressions 


## Unit Overview 

**Text as Data:**

This week comes with an up-front warning. You can get a PhD in Natural Language Processing, which is an entire field devote to computation analysis using text as data. We have two weeks to cover the topic! We obviously cannot go deep into this interesting field, but we can introduce some foundational tools and R functions for text processing. 
  
Let's get started by motivating the topic with a couple of cool examples. 

[Which Hip-Hop Artist Has the Largest Vocabulary?](https://pudding.cool/projects/vocabulary/index.html)

[Who is the Anonymous Op-Ed Writer inside the Trump Administration?](http://varianceexplained.org/r/op-ed-text-analysis/)

[Sentiment Analysis](https://www.kaggle.com/rtatman/tutorial-sentiment-analysis-in-r)

These examples all demonstrate interesting uses of text as data. They are also examples of the types of insight that can come from analysis with big data - the patterns are hiding in plain sight but our brains cannot hold enough information at one time to see it.  Once we can find a system to extract hidden patterns from language we can go beyond seeking large public databases to generate insights, and we can start using all of Twitter, all published news stories, or all of the internet to identify trends and detect outliers. 

**Lecture Notes**

<a class="uk-button uk-button-default" href="../lectures/week-03/">LECTURE NOTES</a>


<br>
<br>


  
  
## Lab-03: Regular Expressions 

<hr> 

<a class="uk-button uk-button-default" href="../labs/lab-03-instructions.html">LAB-03 Instructions</a>

<a class="uk-button uk-button-primary" href="{{page.canvas.assignment_url}}">SUBMIT LAB</a>

**Due {{page.labs.lab-03}}**
  
<hr>
<br>






## Practice Problems

<hr> 
  
<a class="uk-button uk-button-default" href="../practice/week-03/">PRACTICE PROBLEMS</a>

<a class="uk-button uk-button-primary" href="{{page.yellowdig_url}}">YELLOWDIG</a>

**Post on {{page.yellowdig.post-04}}**
  
<hr>
<br>
  
  












<!--- 
#########################################
#########################################
##########
##########         WEEK 04
##########
#########################################
#########################################
-->




# Week 4 - Text Analysis 

## Unit Overview 

This week will use regular expressions you developed during the prior week and some additional text analysis tools from the package **quanteda** to practice working with text as data. 

**Required Reading**

Review some of the examples from last week in order to see content analysis (counts and pattens of words) and sentiment analysis in practice: 

[Which Hip-Hop Artist Has the Largest Vocabulary?](https://pudding.cool/projects/vocabulary/index.html)

[Who is the Anonymous Op-Ed Writer inside the Trump Administration?](http://varianceexplained.org/r/op-ed-text-analysis/)

[Sentiment Analysis](https://www.kaggle.com/rtatman/tutorial-sentiment-analysis-in-r)

**Quanteda**

There are several text analysis packages in R, but Quanteda is one of the most popular and robust.

Text analysis packages contain functions that assist in the manipulation of text as data in order to convert raw text files into structured databases, apply a variety of pre-processing steps that clean and standardize the data, and functions that assist in identifying patterns in text. 

Read the [Quanteda Quick-start Guide](https://quanteda.io/articles/quickstart.html) to familiarize your self with some basic components of text analysis. 

Focus on: 

* Vocabulary: 
  - Document: a file consisting primarily of text 
  - Corpus: a collection of documents in a study 
  - Tokens: single words or phrases 
* Cleaning text: 
  - Removing punctuation and often numbers and symbols 
* Pre-Processing Steps: 
  - Stemming words to remove variant components:  running, runner, runs -> run
  - Identify proper nouns 
  - Combine compound words into single words:  George Bush -> george_bush 
* Analysis 
  - Tokenization of pre-processed documents 
  - Identification of patterns in use of words 


<br>
<br>
<br>







## Lab-04 - Text Analysis

<hr> 

<a class="uk-button uk-button-default" href="https://ds4ps.org/cpp-527-spr-2020/labs/lab-04-instructions.html">INSTRUCTIONS</a>

<a class="uk-button uk-button-primary" href="{{page.canvas.assignment_url}}">SUBMIT LAB</a>

**Due {{page.labs.lab-04}}**
  
<hr>
<br>



## Practice Problems 

<hr> 

<a class="uk-button uk-button-default" href="../practice/week-04/">PRACTICE PROBLEMS</a>

<a class="uk-button uk-button-primary" href="{{page.yellowdig_url}}">YELLOWDIG</a>

**Post on {{page.yellowdig.post-05}}**
  
<hr>
<br>








<!--- 
#########################################
#########################################
##########
##########         WEEK 05
##########
#########################################
#########################################
-->


# Week 5 - GitHub Pages



## Unit Overview

A big part of every analysts job is trying to find ways to distill large volumes of data and information down to meaningful bites of knowledge, often for diverse stakeholder audiences that have varying degrees of technical expertise. For this reason, communication skills are extremely valuable for data scientists. You will constantly be challenged to find the interesting story that emerges from an overwhelming amount of data, and find creative ways to tell the story so that information becomes actionable. 

Although it might not sound as edgy as building a machine learning classifier, the ability to create customized reporting formats and automate various steps of analysis will both make you more efficient and also more effective at communication. 

This lab introduces you to one powerful tool for your toolkit - using GitHub pages to build a website quickly and inexpensively (for free, actually). Then use it to host various components of projects including public-facing reports and RMD documents after rendering. 

More generally, we will learn how to build templates that can be used in websites or to batch process R Markdown reports. 

Templates use the same basic tools for both HTML pages and R Markdown reports. Some basic familiarity with CSS, page containers, and responsive design can go a long way toward empowering you to automate organizational reporting processes. 

**Lecture Notes** 

<a class="uk-button uk-button-default" href="../lectures/week-05/">LECTURE NOTES</a>

<br>
<br>
<br>




## Lab 05

<hr>

<a class="uk-button uk-button-default" href="../labs/lab-05/">INSTRUCTIONS</a>

<a class="uk-button uk-button-primary" href="{{page.canvas.assignment_url}}">SUBMIT LAB</a>

Also share your page link on YellowDig: 

<a class="uk-button uk-button-primary" href="{{page.yellowdig_url}}">YELLOWDIG</a>

**Due {{page.labs.lab-05}}**

<hr>
<br>




  
## Practice Problems 

<a class="uk-button uk-button-default" href="../practice/week-05/">PRACTICE PROBLEMS</a>

<a class="uk-button uk-button-primary" href="{{page.yellowdig_url}}">YELLOWDIG</a>

**Post on {{page.yellowdig.post-06}}**
  
<hr>
<br>
















<!--- 
#########################################
#########################################
##########
##########         WEEK 06
##########
#########################################
#########################################
-->


#  Week 6 - Data APIs 



## Unit Overview

<hr> 

<a class="uk-button uk-button-default" href="../lectures/week-06/">LECTURE NOTES</a>

<hr>  

<br>

**Introduction to APIs:**

[Data journalists explain the value of APIs.](https://medium.com/trendct-data/a-gentle-guide-to-apis-for-data-journalists-2a6b0e6fcc1a)

<iframe width="560" height="315" src="https://www.youtube.com/embed/s7wmiS2mSXY" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>



<br>
<br>
<br>
<br>


## Lab 06

**Due {{page.labs.lab-06}}**

<br>


**Scaling Your Analysis w Functions and Loops**

If you recall from CPP 526 we discussed the example where Ben Balter, [GitHub’s official government evangelist](https://readwrite.com/2014/08/14/github-government-ben-balter-open-source/), created a project to make Washington DC open GIS files more accessible and useful by converting them all to a format more amenable to open-source projects (geoJSON files).

Ben wrote a script that downloaded all of Washington DC’s open data files, converted them to better formats, then uploaded them to GitHub so others have access:

[https://github.com/benbalter/dc-maps](https://github.com/benbalter/dc-maps)

The geoJSON files can also be read into R directly from GitHub, making it easy to incorporate the spatial maps and data into a wide variety of projects:

```r
library( geojsonio )
library( sp )
github <- "https://raw.githubusercontent.com/benbalter/dc-maps/master/maps/2006-traffic-volume.geojson"
traffic <- geojson_read( x=github, what="sp" )
plot( traffic, col="steelblue" )
```

Recall the lab where you created one Dorling cartogram for your neighborhood clustering project:

![](file:///C:/Users/jdlecy/Dropbox/00%20-%20PEDA/00%20-%20GITHUB/COURSE-CPP-529-PRACTICUM/cpp-529-master/LABS/lab-03-tutorial_files/figure-html/unnamed-chunk-21-1.png)



```r
library( geojsonio )   # read shapefiles
library( sp )          # work with shapefiles
library( sf )          # work with shapefiles - simple features format
library( tmap )        # theme maps
library( dplyr )       # data wrangling
library( pander )      # nice tables 


crosswalk <- "https://raw.githubusercontent.com/DS4PS/cpp-529-master/master/data/cbsatocountycrosswalk.csv"
crosswalk <- read.csv( crosswalk, stringsAsFactors=F, colClasses="character" )

# search for citie names by strings, use the ^ anchor for "begins with" 
grep( "^MIN", crosswalk$msaname, value=TRUE ) 

# select all FIPS for Minneapolis
these.minneapolis <- crosswalk$msaname == "MINNEAPOLIS-ST. PAUL, MN-WI"
these.fips <- crosswalk$fipscounty[ these.minneapolis ]
these.fips <- na.omit( these.fips )

state.fips <- substr( these.fips, 1, 2 )
county.fips <- substr( these.fips, 3, 5 )

dat <- data.frame( name="MINNEAPOLIS-ST. PAUL, MN-WI",
                   state.fips, county.fips, fips=these.fips )               
dat
```

|name                        |state.fips |county.fips |fips  |
|:---------------------------|:----------|:-----------|:-----|
|MINNEAPOLIS-ST. PAUL, MN-WI |27         |003         |27003 |
|MINNEAPOLIS-ST. PAUL, MN-WI |27         |019         |27019 |
|MINNEAPOLIS-ST. PAUL, MN-WI |27         |025         |27025 |
|MINNEAPOLIS-ST. PAUL, MN-WI |27         |037         |27037 |
|MINNEAPOLIS-ST. PAUL, MN-WI |27         |053         |27053 |
|MINNEAPOLIS-ST. PAUL, MN-WI |27         |059         |27059 |
|MINNEAPOLIS-ST. PAUL, MN-WI |27         |123         |27123 |
|MINNEAPOLIS-ST. PAUL, MN-WI |27         |139         |27139 |
|MINNEAPOLIS-ST. PAUL, MN-WI |27         |141         |27141 |
|MINNEAPOLIS-ST. PAUL, MN-WI |27         |163         |27163 |
|MINNEAPOLIS-ST. PAUL, MN-WI |27         |171         |27171 |
|MINNEAPOLIS-ST. PAUL, MN-WI |55         |093         |55093 |
|MINNEAPOLIS-ST. PAUL, MN-WI |55         |109         |55109 |


Now download shapefiles with Census data:

```r
library( tidycensus )

# census_api_key("YOUR KEY GOES HERE")
# key <- "abc123"
# census_api_key( key )


# Minneapolis metro area spans two states - 
# Minnesota = 27
# Wisconsin = 55

msp.pop1 <-
get_acs( geography = "tract", variables = "B01003_001",
         state = "27", county = county.fips[state.fips=="27"], geometry = TRUE ) %>% 
         select( GEOID, estimate ) %>%
         rename( POP=estimate )

msp.pop2 <-
get_acs( geography = "tract", variables = "B01003_001",
         state = "55", county = county.fips[state.fips=="55"], geometry = TRUE ) %>% 
         select( GEOID, estimate ) %>%
         rename( POP=estimate )

msp.pop <- rbind( msp.pop1, msp.pop2 )

plot( msp.pop )
```

![](file:///C:/Users/jdlecy/Dropbox/00%20-%20PEDA/00%20-%20GITHUB/COURSE-CPP-529-PRACTICUM/cpp-529-master/LABS/lab-04-instructions_files/figure-html/unnamed-chunk-9-1.png)

Convert to a Dorling cartogram: 

```r
# convert sf map object to an sp version
msp.sp <- as_Spatial( msp )
class( msp.sp )

# project map and remove empty tracts
msp.sp <- spTransform( msp.sp, CRS("+init=epsg:3395"))
msp.sp <- msp.sp[ msp.sp$POP != 0 & (! is.na( msp.sp$POP )) , ]

# convert census tract polygons to dorling cartogram
# no idea why k=0.03 works, but it does - default is k=5
msp.sp$pop.w <- msp.sp$POP / 9000 # max(msp.sp$POP)   # standardizes it to max of 1.5
msp_dorling <- cartogram_dorling( x=msp.sp, weight="pop.w", k=0.05 )
plot( msp_dorling )
```

![](file:///C:/Users/jdlecy/Dropbox/00%20-%20PEDA/00%20-%20GITHUB/COURSE-CPP-529-PRACTICUM/cpp-529-master/LABS/lab-04-instructions_files/figure-html/unnamed-chunk-9-2.png)

**Instructions:** 

1. Create an R script that will convert all US Metro Area shapefiles into Dorling cartograms, one new shapefile for each metro area.  
2. Save each Dorling cartogram as a geoJSON file. 
3. Create a dorling-msa-geojson GitHub repository. 
4. Upload the files and add instructions to the README for people to use them as alternatives to regular Census tract maps to improve the visualization of demographic data in urban environments. 

For example, once you have finished it will be possible to do the following: 

```r
# dorling cartogram of Phoenix Census Tracts
github.url <- "https://raw.githubusercontent.com/DS4PS/cpp-529-master/master/data/phx_dorling.geojson"
phx <- geojson_read( x=github.url,  what="sp" )
plot( phx )
```

Start with pseudo-code and write down the steps. I would recommend writing a couple of functions: 

* Select and parse state and county FIPS codes based upon a city name, return a data frame. 
* Using the MSA data frame you just created, download the census data and shapefile. 
* Convert a current MSA object to a Dorling cartogram object. 

Test your code with a single city until it is functional:

```r
these.minneapolis <- crosswalk$msaname == "MINNEAPOLIS-ST. PAUL, MN-WI"
```

At that point you can scale your steps by generalizing the city name. 

```r
city.names <- unique( crosswalk$cbsaname )

for( i in city.names )
{
  # your code here 
}
```

<br>
<br>


**Submit Solutions to Canvas:**

<a class="uk-button uk-button-primary" href="{{page.canvas.assignment_url}}">SUBMIT LAB</a>

<br>
<br>




## Practice Problems

<hr>

<a class="uk-button uk-button-primary" href="{{page.yellowdig_url}}">YELLOWDIG</a>

**Post on {{page.yellowdig.post-07}}**

<hr>

**DATA APIs IN R:**

For your YellowDig assignment this week, find an API package in R and demonstrate it's functionality.

If you are curious about specific APIs I would start by finding a cool public API then searching around to see if someone has created an R package to make it easier to use. 

*Public here means that the API is not a paid service behind a firewall, though many free APIs require a registered account, a key, or authentication of some sort.*

Alternatively, you can visit the CRAN Task View for Web Technologies and search for API on the page:

https://cran.r-project.org/web/views/WebTechnologies.html

This is hardly an exhaustive list, but a good place to start. 

Once you have identified an API package, show some very basic functionality by explaining what data is available, what a get_data() function looks like in the package, what the arguments do, and what the returned data looks like. 

Share your insights with classmates on YellowDig. 

<br>

<br>















# Week 7 - Customized Reporting





## Code-Through Assignment

**Due {{page.projects.code-through}}**



**Code-Through**

Since you are sharing your code-through with your classmates on Yellowdig, it will serve as your discussion topic this week.

Add your codethrough files (the HTML specifically) to your new website on GitHub repository and generate an active URL for your tutorial so that you can share with classmates. Note that you cannot host Shiny apps or other dynamic apps on GitHub - they must be static HTML pages. 

<a class="uk-button uk-button-default" href="https://ds4ps.org/cpp-527-spr-2020/labs/code-through-assignment.html">Code-Through Instructions</a>

---

**Submit to Canvas:**

<a class="uk-button uk-button-primary" href="{{page.canvas.assignment_url}}">SUBMIT CODE-THROUGH</a>

**Post on Yellowdig:**

<a class="uk-button uk-button-primary" href="{{page.yellowdig_url}}">YELLOWDIG</a>

---

Optional code-through assignment: if you are looking for topics we invite you to select one of the placeholder chapters from the open-source course lecture notes. 

For example, Converting Data Types: 

https://ds4ps.org/dp4ss/#one-dimensional-datasets

These notes are used as background reading for course units, but the main intent is to create a catalog of useful topics that can be referenced quickly to remind yourself about a topic. Syntax and arguments are difficult to memorize, so even experienced programmers need working examples as reference. 

Cheat sheets and reference chapters do not need to include a lot of explanation, but rather a list of important considerations under a topic and useful examples that differentiate cases. 

For example, in a chapter on factors you could include things like: 

* creating factors (the factor function) 
* printing unique factor levels 
* counting factor levels 
* creating new factor level labels  
* changing factor level labels 
* conversion to factors 
* conversion from factors to characters
* conversion from factors to numeric 
* regular versus ordered factors 
* default versus custom factor orders 

Note that these are rules related to one single vector type! It can be helpful to choose what appears to be a narrow topic and test yourself on how much you know about that topic, as well as whether you can find some parsimonious examples to show the right and wrong ways to implement your code. Often times examples that show what NOT to do can be more instructive than correct code. 

<br>
<br>






## Build a Report Template

**Due {{page.projects.report-template}}**

**Automating Report Generation**

This assignment teaches you to use RMD templates to simplify and automate the process of generating reports. 

We will explore the process by reverse-engineering a simple example that was created to build resumes:

* [Example CV as PDF](https://github.com/DS4PS/cv/raw/master/strayer_cv.pdf)  
* [Example CV as HTML](http://nickstrayer.me/cv/)  

Begin by reading about the process:

[Automated Reporting](https://ds4ps.org/cpp-527-spr-2020/lectures/report-automation.html)

[Parameterized Reports in R Markdown](https://rmarkdown.rstudio.com/developer_parameterized_reports.html%23parameter_types%2F)  

[GitHub Pages Jekyll Tools Library](https://github.com/cagrimmett/jekyll-tools)

**Instructions** 

For this assignment you will need to clone Nick Strayer's CV project: 

[CV Project on GitHub](https://github.com/DS4PS/cv)

You can do this in the GitHub desktop application under **File >> Clone >> URL** then type in the project URL: 

https://github.com/DS4PS/cv

Note, since the project is actively being developed this version on DS4PS is frozen in time for pedagogical purposes. You can follow the link to his repo to see what he has added. 

A quick note on the [difference between "cloning" a project and "forking" a GitHub project](https://github.community/t5/Support-Protips/The-difference-between-forking-and-cloning-a-repository/ba-p/1372): 

> A fork is a copy of a repository that allows you to freely experiment with changes without affecting the original project, althgouh a connection exists between your fork and the original repository itself. In this way, your fork acts as a bridge between the original repository and your personal copy where you can contribute back to the original project using *Pull Requests*. 
> 
> Unlike forking, when cloning you won't be able to pull down changes from the original repository you cloned from, and if the project is owned by someone else you won't be able to contribute back to it unless you are specifically invited as a collaborator. Cloning is ideal for instances when you need a way to quickly get your own copy of a repository where you may not be contributing to the original project.

In this instance we are not contributing back to the project to improve it. We just want our own local copy to work with, so cloning is the best option. 

**Build Your Resume**

After cloning the files, you should have local copies on your desktop. You will need to edit at least two files: 

* select either the index.Rmd file ([CV format](http://nickstrayer.me/cv/)) or resume.Rmd ([short resume format](http://nickstrayer.me/cv/resume.html)) 
* positions.csv

The "index.Rmd" and "resume.Rmd" files contains the pagedown code to generate the resume. You will need to adapt the code as appropriate for your purposes Be sure to retain the helper functions, as you are required to pull position data from the CSV file instead of hard-coding it in the file. You can create your own section titles and content. List as many positions, projects,  or internships as you can to reach at least 2 pages. 

Second, delete Nick's content form the "positions.csv" file and replace it with your own content for your positions. 

When you are done, knit your file to generate your HTML resume. 

Create a new repository on your GitHub account called "CV". Initiate with a README file. Clone the repository to your computer, and copy all of the updated files from your project. Commit these files to GitHub so they are in the new CV repo. 

Go into settings and activate your GitHub page for this repository. You do not have to select a template.

You should now be able to view your HTML resume online.

For the assignment submit the following: 

* The URL of your GitHub CV repository 
* The URL of your resume or CV 
* A zipped folder with all of the files from the repor

Consider creating a GitHub site to host a portfolio of projects you are working on. You can add the CV and your code-through assignments to the site. 

*Side note:* If you want to take this exercise to the next level consider developing [A/B Testing for your resume](https://davidlindelof.com/a-b-testing-my-resume/), which you can do when your resume is generated from templates. 

*How would you create a template for the following resume format in R Markdown?* [**two page resume**](https://davidlindelof.com/wp-content/uploads/2020/11/Lindelof_CV.pdf)

---

**Submit to Canvas:**

<a class="uk-button uk-button-primary" href="{{page.canvas.assignment_url}}">SUBMIT PROJECT</a>

---

<br>
<br>














<style>
em {
    color: black;
} 
  
h1{
  font-size:calc(2em + 0.25vw) !important;
  margin-top:160px !important;
  margin-bottom:20px;
  } 
  
h2{
  font-size:calc(2em + 0.25vw) !important;
  color: #995c00;
  font-weight:300;
  margin-top:40px !important;
  margin-bottom:20px;
  } 

h3{
  font-size:calc(1.4em + 0.25vw);
  font-weight:300;
  margin-top:20px !important;
  margin-bottom:10px;} 
   

ul a:hover {
  color: #337ab7;
  text-decoration: none;
  font-weight: normal;
} 

#markdown-toc ul {
  font-size:calc(0.85em + 0.25vw);
  line-height:1.2;
  font-weight: bold;
} 
#markdown-toc ul li {
  list-style-type: disc !important;
  font-size:calc(0.65em + 0.25vw);
  line-height:1.2;
  margin-left: 20px;
}  
#markdown-toc a {
  color: black;
  font-size:calc(0.65em + 0.25vw);
  line-height:1.2;
  font-weight: normal;
}  
#markdown-toc a:hover {
    color: black;
    text-decoration: none;
    font-weight: bold;
}

</style>

