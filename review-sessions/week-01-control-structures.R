### REVIEW OF CPP 526 CONCEPTS

* R ecosystem 
* R studio 
* markdown 
* RMD documents and formats 

* data wrangling (DPLYR)
* data verbs (filter, sort, select, group_by)
* variable transformations 

* descriptive analysis (count, table, summarize) 
* visualization 

* one and two-dimensional data structures (vectors and data frames)
* data types (numeric, character, factor, logical) 
* functions 
* objects and assignment 
* logical operators and statements
* order of operations 




### FUNCTIONS 

* arguments 
* argument defaults 
* implicit vs explicit arguments 
* object vs argument assignment 



calcMortgage <- function( principal, years=30, APR=0.05 )
 {
   
    months <- years * 12   # covert years to months
    int.rate <- APR / 12   # convert annual rate to monthly
    
    # amortization formula
    monthly.payment <- ( principal * int.rate ) / 
                       (1 - (1 + int.rate)^(-months) )
    
    monthly.payment <- round( monthly.payment, 2 )
    
    return( monthly.payment )
 
 }
 
 


# Calculate a mortgage for a $100,000 house for 15 years with a 3 percent APR

calcMortgage( principal=100000, years=15, APR=0.03 )

# Notice the default arguments:
args( calcMortgage )

# Calculate a mortgage for a $100,000 house for 30 years with a 4.5 percent APR
calcMortgage( principal=100000, years=30, APR=0.045 )

# This works
calcMortgage( principal=100000 )

# These don't
calcMortgage(  )
calcMortgage( years=30 )
calcMortgage( APR=0.045 )

# Implicit argument calls 

calcMortgage( principal=100000, years=30, APR=0.05 )
calcMortgage( 100000, 30, 0.05 )

calcMortgage( years=30, principal=100000, APR=0.05 )
calcMortgage( 30, 100000, 0.05 )

# what about these? 

calcMortgage(  30, 0.05, principal=100000 )
calcMortgage( principle=100000 )
calcMortgage( prin=100000 )






### LOGICAL STATEMENTS 


d <- 
structure(list(name = structure(c(1L, 4L, 3L, 2L), .Label = c("frank", 
"nancy", "sanjay", "wanda"), class = "factor"), gender = structure(c(2L, 
1L, 2L, 1L), .Label = c("female", "male"), class = "factor"), 
    group = structure(c(2L, 2L, 1L, 1L), .Label = c("control", 
    "treat"), class = "factor"), strength = c(27, 43, 19, 58)), .Names = c("name", 
"gender", "group", "strength"), row.names = c(NA, -4L), class = "data.frame")





# usefulness of logical vectors 

these <- d$group == "treat" & d$gender == "male" 

sum( these )    # count of cases
mean( these )   # proportion of cases 
dat[ these , ]  # filtering 

mean( d$strength[ d$group == "treat" ]   )
mean( d$strength[ d$group == "control" ] )



# In plain english, what are these groups? 

attach( d )

# not treatment group & not men
these <- ! ( group == "treat" ) &  ! ( gender == "male" ) 
dat[ these , ]



# compound statements and bearded ladies 

gender <- sample( c("male","female"), size=10, replace=TRUE )
beard  <- sample( c("yes","no"), size=10, replace=TRUE )

gender[  gender == "male"  ]
gender[  gender != "male"  ]
gender[  ! gender == "male"  ]

d <- data.frame( gender, beard )

d[    gender == "male" & beard == "yes"  ,  ]
d[    gender != "male" & beard != "yes"  ,  ]
d[  ! gender == "male" & beard == "yes"  ,  ]
d[  ! ( gender == "male" & beard == "yes" )  ,  ]








### CONTROL STRUCTURES





## STEP 1 - CREATE A NEW GAME

```{r}
create_game <- function( )
{
    a.game <- sample( x=c("goat","goat","car"), size=3, replace=F )
    return( a.game )
} 
```



**Test of Function:**

```{r}
# try three times to see randomization 
create_game()  
create_game() 
create_game() 
```






## STEP 2 - CONTESTANT SELECTS A DOOR 

The contestant makes their first selection. Write a function to select one door at random.  

```{r}
select_door <- function( )
{
  doors <- c(1,2,3) 
  a.pick <- # YOUR CODE HERE...
  return( a.pick )  # number between 1 and 3
}
```


```{r}
# test the function
select_door()
select_door()
select_door()
```





## STEP 3 - HOST OPENS GOAT DOOR


Note to call this function you need information from previous functions. 

The host will always open a door with a goat behind it. But it can't be a door the contestant has already selected. So it must be a door that is not a car and not a current contestant selection. 

Note that if the contestant selects the car on the first guess the host can open either door, but if the contestant selects a goat the host only has one option. 


```{r}
open_goat_door <- function( game, a.pick )
{
   # YOUR CODE HERE...
   return( opened.door ) # number between 1 and 3
}
```



```{r}
# test it
this.game <- create_game()
this.game
my.initial.pick <- select_door()
my.initial.pick
open_goat_door( this.game, my.initial.pick )
```




## STEP 4 - CHANGE DOORS


The contestant is given the option to change from their initial selection to the other door that is still closed. The function will represent the game-playing strategy as the argument **stay=TRUE** or **stay=FALSE**. 


```{r}
change_door <- function( stay=T, opened.door, a.pick )
{
   # YOUR CODE HERE...
   return( final.pick )  # number between 1 and 3
}
```



```{r}
# test it
opened.door <- open_goat_door( this.game, my.initial.pick )
change_door( stay=T, opened.door=opened.door, a.pick=my.initial.pick )
change_door( stay=F, opened.door=opened.door, a.pick=my.initial.pick )
my.final.pick <- change_door( stay=F, opened.door=opened.door, a.pick=my.initial.pick )
this.game
my.initial.pick
my.final.pick 
```




## STEP 5 - DETERMINE IF CONTENSTANT HAS WON


```{r, eval=F}
determine_winner <- function( final.pick, game )
{
   if( ...YOUR CODE HERE... )
   {
      return( "WIN" )
   }
   if( ...YOUR CODE HERE... )
   {
      return( "LOSE" )
   }
}
```


```{r}
# test code
this.game
my.initial.pick
my.final.pick <- changeDoor( stay=T, opened.door=opened.door, a.pick=my.initial.pick )
determine_winner( final.pick=my.final.pick, game=this.game )
my.final.pick <- changeDoor( stay=F, opened.door=opened.door, a.pick=my.initial.pick )
determine_winner( final.pick=my.final.pick, game=this.game )
```







<br>

## TEST THE GAME

```{r}
# your game "recipe" 
this.game <- create_game()
my.initial.pick <- select_door()
opened.goat.door <- open_goat_door( this.game, my.initial.pick )
# save results for both strategies for the game
my.final.pick.stay <- change_door( stay=T, opened.door=opened.goat.door, a.pick=my.initial.pick )
my.final.pick.switch <- change_door( stay=F, opened.door=opened.goat.door, a.pick=my.initial.pick )
# print game details and if you won
# if you stayed:
paste0( "GAME SETUP" )
this.game
paste0( "My initial selection: ", my.initial.pick )
paste0( "The opened goat door: ", opened.goat.door )
paste0( "My final selection: ", my.final.pick.stay )
paste0( "GAME OUTCOME:" )
determine_winner( final.pick=my.final.pick.stay, game=this.game )
# if you switched:
paste0( "GAME SETUP" )
this.game
paste0( "My initial selection: ", my.initial.pick )
paste0( "The opened goat door: ", opened.goat.door )
paste0( "My final selection: ", my.final.pick.switch )
paste0( "GAME OUTCOME:" )
determine_winner( final.pick=my.final.pick.switch, game=this.game )
```


