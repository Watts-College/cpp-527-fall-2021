---
layout: lab
title: Report Templates
image: microscope.png
image-width: 150px
---

<div class = "uk-container uk-container-small">



-----------------------

* TOC
{:toc}

-----------------------

<br>


# Part I - Custom Reporting Functions 

https://www.repidemicsconsortium.org/people/ 

For this lab you will use an existing GitHub pages template (HTML template using liquid tags) and convert it to an RMD template.  
  
````
people-list:
  - name: Thibaut Jombart
    img: /img/people/thibaut-jombart.jpg
    desc: Founder of RECON. Statistician and R programmer specialized in outbreak analysis. Imperial College London, UK.
    website: https://sites.google.com/site/thibautjombart/
    url: https://sites.google.com/site/thibautjombart/
    github: https://github.com/thibautjombart/
    twitter: https://twitter.com/TeebzR
  - name: Dean Attali
    img: /img/people/dean-attali.jpg
    desc: Web and R developer, designer of the RECON website. Canada.
    website: http://deanattali.com/
    url: http://deanattali.com/
    github: https://github.com/daattali/
    twitter: https://twitter.com/daattali
  - name: Marc Baguelin
    img: /img/people/marc-baguelin.jpg
    desc: Mathematical modeller and health economist specialised in Public Health intervention. Strong believer in open code and sharing. Public Health England, UK.
    website: http://www.lshtm.ac.uk/aboutus/people/baguelin.marc
    url: http://www.lshtm.ac.uk/aboutus/people/baguelin.marc
    github: https://github.com/MJomaba/
    twitter: https://twitter.com/marcbaguelin 
````

HTML template with liquid tags contained in the file [list-circles.html](https://github.com/reconhub/reconhub.github.io/blob/master/_includes/list-circles.html)
  
````
<div class="list-circles">
  {% for item in include.items %}
    <div class="list-circles-item">
      {% if item.img %}
        {% if item.url %}
          <a href="{{ item.url }}"><img src="{{ item.img }}" class="item-img" /></a>
        {% else %}
          <img src="{{ item.img }}" class="item-img" />
        {% endif %}
      {% endif %}
      {% if item.name %}
        <h4 class="item-name">{{ item.name }}</h4>
      {% endif %} 
      {% if item.desc %}
        <div class="item-desc">{{ item.desc }}</div>
      {% endif %}
      <div class="item-links">
        {% if item.website %}
          <a class="item-link" href="{{ item.website }}" title="Website">
            <span class="fa fa-home"></span>
          </a>
        {% endif %}
        {% if item.github %}
          <a class="item-link" href="{{ item.github }}" title="GitHub">
            <span class="fa fa-github"></span>
          </a>
        {% endif %}
        {% if item.twitter %}
          <a class="item-link" href="{{ item.twitter }}" title="Twitter">
            <span class="fa fa-twitter"></span>
          </a>
        {% endif %}      
      </div>
    </div>
  {% endfor %}
</div>
````

Custome CSS items for the people gallery: 

````
/* --- Lists of circles --- */

div {
    display: block;
}
  
.list-circles {
  text-align: center;
}

@media only screen and (min-width: 1200px) {
  .list-circles {
    width: 150%;
    margin-left: -25%;
  }
}


.list-circles-item {
  display: inline-block;
  width: 240px;
  vertical-align: top;
  margin: 0;
  padding: 20px;
}

.list-circles-item:hover {
  background: #fafafa;
}

.list-circles-item .item-img {
  max-width: 200px;
  height: 200px;
  -webkit-border-radius: 50%;
  -moz-border-radius: 50%;
  border-radius: 50%;
  border: 1px solid #777;
}

.list-circles-item .item-desc {
  font-size: 16px;
}

.list-circles-item .item-links {
  margin-top: 5px;
}

.list-circles-item .item-link {
  margin:0 3px;
  color: #314f96;
  text-decoration: none !important;
}

.list-circles-item .item-link:hover {
  color: #042265;
}
````
  
  
When the YAML data and the template are combined they create HTML sections like the following: 

Data: 

````
  - name: Thibaut Jombart
    img: /img/people/thibaut-jombart.jpg
    desc: Founder of RECON. Statistician and R programmer specialized in outbreak analysis. Imperial College London, UK.
    website: https://sites.google.com/site/thibautjombart/
    url: https://sites.google.com/site/thibautjombart/
    github: https://github.com/thibautjombart/
    twitter: https://twitter.com/TeebzR
````

Data + template: 
  
````
<div class="list-circles-item">

	<a href="https://thibautjombart.netlify.com/"><img src="/img/people/thibaut-jombart.jpg" class="item-img"></a>

	<h4 class="item-name">Thibaut Jombart</h4>
	<div class="item-desc">Founder, President. Statistician and R programmer specialized in outbreak analysis. London School of Hygiene and Tropical Medicine / Imperial College London, UK.</div>

	<div class="item-links">

	   <a class="item-link" href="https://thibautjombart.netlify.com/" title="Website">
	   <span class="fa fa-home"></span>
	   </a>

	   <a class="item-link" href="https://github.com/thibautjombart/" title="GitHub">
	   <span class="fa fa-github"></span>
	   </a>

	   <a class="item-link" href="https://twitter.com/TeebzR" title="Twitter">
	   <span class="fa fa-twitter"></span>
	   </a>

	</div>

</div>
````


## Instructions 

### Step 1

Write an R function called build_circle() that will create a single member profile for the team gallery page. 
  
It should use the following arguments: 

* WEBSITE - personal website URL 
* IMG - full URL of profile photo of a team member 
* NAME - team member full name 
* DESC - one sentence bio 
* GITHUB - URL of personal GitHub page 
* TWITTER - Twitter URL 

*Note that the IMG location in the YAML header is "/img/people/thibaut-jombart.jpg" but the full URL version is "https://www.repidemicsconsortium.org/img/people/thibaut-jombart.jpg". Since this is for demo purposes only you can use these URLs to load the images in your report section because you are submitting an RMD+HTML file for Part I, not a full website.*

Example use - create a circle item for one team member: 

```r
build_circle( WEBSITE="https://sites.google.com/site/thibautjombart/",
  IMG="https://www.repidemicsconsortium.org/img/people/thibaut-jombart.jpg",
  NAME="Thibaut Jombart",
  DESC="Founder of RECON. Statistician and R programmer specialized in outbreak analysis. Imperial College London, UK.",
  GITHUB="https://github.com/thibautjombart/",
  TWITTER="https://twitter.com/TeebzR"
)
```

The function should return the following: 
  
````
<div class="list-circles-item">

	<a href="WEBSITE"><img src="IMG" class="item-img"></a>

	<h4 class="item-name">NAME</h4>
	<div class="item-desc">DESC</div>

	<div class="item-links">

	   <a class="item-link" href="WEBSITE" title="Website">
	   <span class="fa fa-home"></span>
	   </a>

	   <a class="item-link" href="GITHUB" title="GitHub">
	   <span class="fa fa-github"></span>
	   </a>

	   <a class="item-link" href="TWITTER" title="Twitter">
	   <span class="fa fa-twitter"></span>
	   </a>

	</div>

</div>
````
<br>
<hr>
<br>
  
  
  
### Step 2 

Create a data frame with information for 3 team members contained in the YAML fields on the R Epidemics site.

[Team Member Info](https://raw.githubusercontent.com/reconhub/reconhub.github.io/master/people.md) 
 
<br>
<hr>
<br>
  
  
  
  
### Step 3

Create a loop to generate profile sections for 3 team members. 
  
````
<div class="list-circles">

```{r, results="asis"}
for( i in ??? )
{
   df <- dat[ i , ] # select one row (one team member) 
   build_circle( WEBSITE=df$WEBSITE,
     IMG=df$IMG,
     NAME=df$NAME,
     DESC=df$DESC,
     GITHUB=df$GITHUB,
     TWITTER=df$TWITTER  )
}
```

</div>
````
  
<br>
<hr>
<br>
  
  
  
### Step 4

Add the list-cicles CSS items to the bottom of your RMD file in a CSS code chunk as follows: 

````
  
```{css}

<style>
/* --- css elements here --- */
</style>

```

````

<br>
<hr>
<br>
  
  

### Step 5

Render your HTML file. 

* Include a chunk with your build_circles() function and do NOT hide the code. 
* Include a chunk showing how you create the dataframe with the 3 team members. 
* Include a chunk with your loop to add all profiles to the page. 


You will submit your RMD file and HTML file for this step. 
  
<br>  
<br>
<hr>
<br>
<br>  






# Part II - Automated Report Generation

This assignment teaches you to use RMD templates to simplify and automate the process of generating reports. 

We will explore the process by reverse-engineering a simple example that was created to build resumes:

* [Example CV as PDF](https://github.com/DS4PS/cv/raw/master/strayer_cv.pdf)  
* [Example CV as HTML](http://nickstrayer.me/cv/)  


<br>
<hr>
<br>


  
## Step 1

For this assignment you will need to clone a version Nick Strayer's CV project that has been archived on the DS4PS site: 

[CV Project on GitHub](https://github.com/DS4PS/cv)

You can do this in the GitHub desktop application under **File >> Clone >> URL** then type in the project URL: 

https://github.com/DS4PS/cv

Note, since the project is actively being developed this version on DS4PS is frozen in time for pedagogical purposes. You can follow the link to his repo to see what he has added. 

**Cloning vs Forking** 

A quick note on the [difference between "cloning" a project and "forking" a GitHub project](https://github.community/t5/Support-Protips/The-difference-between-forking-and-cloning-a-repository/ba-p/1372): 

> A fork is a copy of a repository that allows you to freely experiment with changes without affecting the original project, althgouh a connection exists between your fork and the original repository itself. In this way, your fork acts as a bridge between the original repository and your personal copy where you can contribute back to the original project using *Pull Requests*. 
> 
> Unlike forking, when cloning you won't be able to pull down changes from the original repository you cloned from, and if the project is owned by someone else you won't be able to contribute back to it unless you are specifically invited as a collaborator. Cloning is ideal for instances when you need a way to quickly get your own copy of a repository where you may not be contributing to the original project.

In this instance we are not contributing back to the project to improve it. We just want our own local copy to work with, so cloning is the best option. 

## Step 2

After cloning the files, you should have local copies on your desktop. You will need to edit at least two files: 

* select either the **resume.Rmd** file ([short resume format](http://nickstrayer.me/cv/resume.html)) or the **index.Rmd** file for a longer version ([CV format](http://nickstrayer.me/cv/)) to serve as a template 
* the **positions.csv** file that will hold your content (past education and employment history) 

*In the US context a resume is a short (usually two-page) summary of professional highlights and a curriculum vitae (CV) is a full list of professional activities and accomplishments. Typically resumes are used when applying to professional jobs and CVs are used when applying for academic jobs.*
  
You will need to adapt either "resume.Rmd" or "index.Rmd" as a template to generate your resume: 

* Be sure to retain the [helper functions](https://raw.githubusercontent.com/DS4PS/cv/master/parsing_functions.R), as you are required to pull position data from the CSV file instead of hard-coding it in the file. 
* You can create your own section titles and content. 
* List as many positions, projects,  or internships as you can to reach at least 2 pages. 

## Step 3 

Delete Nick's content form the "positions.csv" file and replace it with your own professional history. *For the purpose of the assignment your positions can be aspirational, not factual. But make it obvious and add a note somewhere on the resume if the informational is fictional so that you are not accused of lying on a resume.*

## Step 4 

Knit your RMD file to generate the rendered HTML version of your resume. 

## Step 5

Go into settings and activate your GitHub page for this repository. You do not have to select a template.

You should now be able to view your HTML resume online.

Update the description section at the top right of your GitHub repo and add the correct link to your resume. 
  



# Submission Instructions 

For the assignment submit the following: 

* The RMD and HTML from Part I (do not zip).  
* The URL of your GitHub CV repository from Part II
* The URL of your live resume or CV from Part II 
* A zipped folder with all of the files in your CV repo from Part II 

**Submit to Canvas**   
  
  
  

## Optional: 

### Start a Portfolio 

Consider creating a GitHub site to host a portfolio of projects you are working on. 

You can add the CV and your code-through assignments to the site. 

**Note, you might want to highlight projects you have done in this program but do NOT share solutions to any labs or assignments in a public archive.** 
  
### Challenge Question 

If you want more practice with templates, how would you create a template for the following resume format in R Markdown?

[**two page resume**](https://davidlindelof.com/wp-content/uploads/2020/11/Lindelof_CV.pdf)

  







<br>
<br>

  
  
    
<br>
<hr>
<br>

</div>
 
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
  font-weight:300;
  margin-top:80px !important;
  margin-bottom:20px;
  } 

h3{
  font-size:calc(1.4em + 0.25vw);
  font-weight:300;
  margin-top:40px !important;
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
