---
layout: lab
title: Practice Problems 
image: practice.png
image-width: 150px
---

<div class = "uk-container uk-container-small">

<br>
<br>


# Week 02

-----------------------

* TOC
{:toc}

-----------------------

<br>
  
  
  
## Q1 - GAMBLING STREAKS AND DURATION MODELS

We covered a very basic animation in the lecture notes - a random walk. 

Start game with $10 in cash. At each step you flip a coin and win a dollar, lose a dollar, or stay the same. 

How long does it take for a player to lose all of their money?

While loops are useful when we repeat a process until a condition is met, the player being out of money in this case. 

```r
cash <- 10  
results <- NULL
count <- 1  
while( cash > 0 )
{
  cash <- cash +   
    sample( c(-1,0,1), size=1 )  
  results[count] <- cash  
  count <- count + 1  
}
```


### Q1-A: Visualize the Game

Similar to the lecture notes, create a visualization of the cash that a player has at each round of the game until they go broke. 


### Q1-B: You've got to know when to fold them

Starting with $10 in the game, how long does it take the **typical** player to go bankrupt? 

If you don't want to do a complicated mathematical proof,  create a simulation, play the game 10,000 times, then report the **average** duration of each game.

*Side note, would the mean or the median be a better measure of the average here?*

I would suggest wrapping the code above into a **play_game()** function and calling that function repeatedly inside your loop. 

**Note:** the interesting edge case in this simulation is a case where a person never goes broke so your program runs forever. 

Is this a likely outcome when the players all start with $10? 

How would you adapt your code to account for this scenario? 



### Q1-C: Finding Warren Buffet

If you run a simulation of 10,000 individuals playing the game, all starting with $10, how many individuals will **never** go broke? 

Operationalize *never* in your code and explain your assumptions. 

How many of these individuals did you find in your simulation? 


-----

## Q2 - ANIMATIONS

A random walk is a one-dimensional outcome (cash in hand) tracked over time. 

Physicists have used a similar model to examine particle movement with a Brownian Motion model. 

It is similar to the betting model above except for each time period the particle moves in two dimensions. 

```r
x <- 0  
y <- 0 
for( i in 1:1000 )
{
  x[i+1] <- x[i] + rnorm(1)
  y[i+1] <- y[i] + rnorm(1)
}
```

![](https://raw.githubusercontent.com/DS4PS/cpp-527-spr-2020/master/lectures/gifs/brownian_motion.gif)



### Q2-A: Create the Brownian Motion animation above

Use the loop above to generate particle positions. 

Create an animation to visualize the movement of the particle.

Discuss the package or app you used to generate the GIF. 

### Q2-B: Shadow of the past

If animations move too quickly it will look like popcorn and it can be hard to identify the meaningful patterns in the data. 

You can enhance the information value of animations by visualizing change and in addition to the current model state include information on past stages. 

How would you create the trailing tail in this animation? 

### Q2-C: Alternative Animations

If you are not interested in Brownian Motion, share another animation you can create using loops. 

Discuss the package or app you used to generate the GIF. 

<br>
<hr>
  


  
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