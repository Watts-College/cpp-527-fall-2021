---
layout: lab
title: Building Report Templates
image: microscope.png
image-width: 150px
---

<div class = "uk-container uk-container-small">



-----------------------

* TOC
{:toc}

-----------------------

<br>



## Automated Report Generation

This assignment teaches you to use RMD templates to simplify and automate the process of generating reports. 

We will explore the process by reverse-engineering a simple example that was created to build resumes:

* [Example CV as PDF](https://github.com/DS4PS/cv/raw/master/strayer_cv.pdf)  
* [Example CV as HTML](http://nickstrayer.me/cv/)  


<br>
<hr>
<br>


  
## Instructions

### Step 1

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

### Step 2

After cloning the files, you should have local copies on your desktop. You will need to edit at least two files: 

* select either the **resume.Rmd** file ([short resume format](http://nickstrayer.me/cv/resume.html)) or the **index.Rmd** file for a longer version ([CV format](http://nickstrayer.me/cv/)) to serve as a template 
* the **positions.csv** file that will hold your content (past education and employment history) 

*In the US context a resume is a short (usually two-page) summary of professional highlights and a curriculum vitae (CV) is a full list of professional activities and accomplishments. Typically resumes are used when applying to professional jobs and CVs are used when applying for academic jobs.*
  
You will need to adapt either "resume.Rmd" or "index.Rmd" as a template to generate your resume: 

* Be sure to retain the [helper functions](https://raw.githubusercontent.com/DS4PS/cv/master/parsing_functions.R), as you are required to pull position data from the CSV file instead of hard-coding it in the file. 
* You can create your own section titles and content. 
* List as many positions, projects,  or internships as you can to reach at least 2 pages. 

### Step 3 

Delete Nick's content form the "positions.csv" file and replace it with your own professional history. *For the purpose of the assignment your positions can be aspirational, not factual. But make it obvious and add a note somewhere on the resume if the informational is fictional so that you are not accused of lying on a resume.*

### Step 4 

Knit your RMD file to generate the rendered HTML version of your resume. 

### Step 5

Go into settings and activate your GitHub page for this repository. You do not have to select a template.

You should now be able to view your HTML resume online.

Update the description section at the top right of your GitHub repo and add the correct link to your resume. 
  



## Submission Instructions 

For the assignment submit the following: 

* The URL of your GitHub CV repository 
* The URL of your live resume or CV 
* A zipped folder with all of the files from the repo

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
