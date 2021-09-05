---
layout: lab
title: Regular Expressions  
image: model.svg
image-width: 150px

pdf_base: 'https://github.com/watts-college/cpp-527-fall-2021/raw/master/'  

---

<div class = "uk-container uk-container-small">

-----------------------

* TOC
{:toc}

-----------------------

<br>
  
## String Processing & Regular Expressions

The core of all text analysis requires two sets of skills. Text is computer science is referred to as "strings", a reference to the fact that spoken languages mean nothing to computers so they just treat them as strings of letters (words) or strings of words (sentences). String processing refers to a set of functions and conventions that are used to manipulate text as data. If you think about the data steps for regular data, we clean combine, transform, and merge data inside of data frames. Similarly there are operations for important text datasets (often lots of documents full of words), cleaning them (removing words, fixing spelling errors), merging documents, etc. Core R contains many string processing functions, and there are lots of great packages. 

"Regular expression" are a set of functions used to aid in processing text by defining very precise ways to query a text database by looking for specific strings, or more often strings that match some specific pattern that has meaning. For example, if I gave you the following text with everything but punctuation replaced by X, you could still tell me what the word are for: 

* xxxxx@xxx.com   (email address) 
* www.xxxxxxxx.xxx   (web URL)
* @xxxxxxx  (social media handle) 

So regular expressions can be very useful for searching large databases for general classes of text, or alternatively for searching for generic text that occurs only in a very specific context (at the beginning or end of a word, in the middle of a phrase, etc.). 

<a class="uk-button uk-button-default" href="../string-processing.html">CHAPTER</a>

<a class="uk-button uk-button-default" href="https://github.com/DS4PS/cpp-527-spr-2020/raw/master/lectures/string-processing-slides.pdf">SLIDES</a>

<a class="uk-button uk-button-default" href="../lectures/string-processing-slides.pdf">SLIDES</a>


## Character Encoding in ASCII  

<a class="uk-button uk-button-default" href="../ascii/">Character Encoding</a>
  
  
## Helpful Reference Material

[stringR package](https://cran.r-project.org/web/packages/stringr/vignettes/stringr.html)

[One Page RegEx Cheat Sheet](https://github.com/DS4PS/cpp-527-spr-2020/raw/master/lectures/regular-expressions%20one-page-cheat-sheet.pdf) 

[RegEx cheat sheet in R](https://github.com/DS4PS/cpp-527-spr-2020/raw/master/lectures/RegExCheatsheetInR.pdf)

  
<br>
<hr>
<br>
<br>

</div>
