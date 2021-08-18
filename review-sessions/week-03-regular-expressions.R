


### LOCATION OF STRING

strings <- c("abcd", "cdab", "cabd", "c abd")

# anywhere in the text

grep("ab", strings, value = TRUE)


# at the beginning of a STRING

grep("^ab", strings, value = TRUE)

# at the end of a STRING

grep("ab$", strings, value = TRUE)

# at the beginning of a WORD

grep("\\bab", strings, value = TRUE)
## [1] "abcd"  "c abd"

# in the middle of a WORD

grep("\\Bab", strings, value = TRUE)



# replace land with LAND in all country names

gsub( "land", "LAND", c("finland", "iceland", "michael landon") )

# need to anchor the word to the end

gsub( "land$", "LAND", c("finland", "iceland", "michael landon") )




### QUANTIFIERS

strings <- c("ht","hot","hoot","hooot")

# match at least zero times

grep("h*t", strings, value = TRUE)

# match ONLY one time

grep("h.t", strings, value = TRUE)

# match at least one times

grep("ho+t", strings, value = TRUE)

# match zero or one times

grep("ho?t", strings, value = TRUE)

# match exactly n times

grep("ho{2}t", strings, value = TRUE)

# match at least n times

grep("ho{2,}t", strings, value = TRUE)

# match between n and m times

grep("ho{1,2}t", strings, value = TRUE)






### ESCAPE OPERATOR

# Searching for special characters using escape

regexpr( "*", "abcd*efghi" )

regexpr( "\\*", "abcd*efghi" )




### USING THE OR OPERATOR

# FormA OR FormB OR FormC

my.text <- c( "FormA", "FormC", "FormE" )

grep( pattern="Form[ABC]", my.text )

grep( pattern="h[oi]t" , c("hot","hat","hit","hop") )




### EXAMPLES

strings <- c("^ab", "ab", "abc", "abd", "abe", "ab 12", "ab$")


# match anything that starts with ab followed by any character

grep("ab.", strings, value = TRUE)


# search for abc OR abd

grep("abc|abd", strings, value = TRUE)


# match abc OR abd OR abe

grep("ab[c-e]", strings, value = TRUE)


# match anything that is NOT abc

grep("ab[^c]", strings, value = TRUE)


# match any string where ab occurs at the beginning

grep("^ab", strings, value = TRUE)


# match any string where ab occurs at the end

grep("ab$", strings, value = TRUE)


# search for matches that contain the character ^

grep("^", strings, value = TRUE)


# try again

grep("\\^", strings, value = TRUE)


# same here

grep("$", strings, value = TRUE)

grep("\\$", strings, value = TRUE)





### PRACTICE - what will these return?

my.text <- c("micky","minnie","goofy","pluto")


grep( pattern="g*fy", my.text )


grep( pattern="pluo?to", my.text )


grep( pattern="pluo?t", my.text )


grep( pattern="plo?to", my.text )


grep( pattern="mi*", my.text )




