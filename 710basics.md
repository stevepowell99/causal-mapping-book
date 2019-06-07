
```{r}
source("setup.r")

```

# Basic principles for Theorymaker *text*

In this chapter, we will look at how to use Theorymaker *text* to make diagrams.  

## Variable names

Theory Maker understands most of the lines you will type as the names of "Variables" - the basic building blocks which you will use to build up your theory. 


```{r  x2018101364}
makeToC2("
This is a variable name
")
```

You can type almost any text for the names of your variables.  Each line becomes a variable in the diagram. 

### What characters are possible

Most languages with various accents etc. are fine. You can't use double quotes like these: " and you can't use semi-colons because they have a special meaning.

## Line breaks

Theory Maker breaks lines in variables at around 30 characters, but you can force a line break if you want, by using three slashes/// (or three spaces), like this: 

```{r  x201810151345}
makeToC2("
This line will be broken into two /// here. 
")
```

Note that you can break a line with /// in the labels of variables, arrows and in the label of the diagram itself but only variable labels are broken automatically.


## Attributes

You can add arbitrary attributes to your variables like this:

    My variable; some attribute = some value

... and you will find if you look at the table of variables that there is a new column called "some attribute" and the variable "My variable" now has the value "some value" in that column. 

Some attributes have a special meaning, for example the attribute `colour` colours your variables and arrows. There is a [separate chapter](#appearance) about appearance. Other attributes specify the [levels](#levels) of the variables, and so on.





## Arrows 

### Making arrows by indenting lines with spaces

Indent lines to show what contributes to what.

```{r  x201810151531}
makeToC2("
A, gets the arrowhead
 B, indented, so contributes to A
  C, contributes to B
  D, also contributes to B

")
```
If you want, you can make the indents using dots instead, some people think they are easier to see. The effect is the same:

A, gets the arrowhead
.B, indented, so contributes to A
..C, contributes to B
..D, also contributes to B


### Arrow attributes: inside brackets.

If you want to add attributes to your arrows, for example to add a label, put the information inside brackets just in front of the variable name where the arrow *begins*, and *after* the indent(s) -- space(s) or dot(s): 

```{r  x201810184851}
makeToC2("


Variable B
 (A label on the arrow from A to B) Variable A
")
```

You can style your arrows too, see [later](#appearance).


## Listing several variables at once with "; "

You can make links between lists of variables. 

This links X to A and B:


```{r  x20181018425}
makeToC2("
A; B
 X
")
```

This links X and Y to A:


```{r  x201810184224}
makeToC2("

A
 X; Y
")
```

And this links X, Y and Z to A and B:


```{r  x201810184249}
makeToC2("


A; B
 X; Y; Z
")
```
You can also apply attributes to several variables at once with the same trick:

```{r  x201810184313}
makeToC2("
A; B; C; colour=orange
 X
")
```


Note this means that *you can't have `=` in the name of any variables except the first in this kind of list* because Theorymaker will think you are trying to add an attribute. So if you write:

    A; B; C = something

this will be interpreted as the variables A and B, which also have the attribute C and this has the value "something". 

## Repeats

You can repeat a variable. This pattern makes an arrow from B to A and back to B:

```{r  x201810184329}
makeToC2("
Outcome A
 Outcome B
  Outcome A
")
```


If you want to draw a large network, you can try to do it all at once,  like this:


```{r  x201810184351j}
makeToC2("

Outcome A
 Outcome B
  Outcome C
   Sub-outcome C1
   Sub-outcome C2
")
```

... or you can break it up into pieces, like this:

    Outcome A
     Outcome B

    Outcome B
     Outcome C

    Outcome C
     Sub-outcome C1
     Sub-outcome C2

Theory Maker will treat this exactly the same as the previous example.


## Aliases

If you have long variable names but want to repeat the variable like in the examples above, you can use labels like this to save you typing:

```{r  x201810184438}
makeToC2("
A
 B
  C

A;  label= Some variable with a very very long name.

")
```
    
## Boxes for grouping variables

Use a hyphen `-` to group your variables, i.e. to put a grouping box around them. 

(If there are no variables inside a group, the grouping box does not appear).


### Global attributes for variables and arrows 

A line like this changes all the variables which come after it:

    variable:  colour=red;  fontname=Courier

... and the same for arrows 

    arrow:  colour=blue

Any formatting you can apply to an individual variable, group or arrow can also be applied globally with lines like these.

(Actually, you can use a semicolon instead of the colon if you want:)

    arrow;  colour=blue; arrowsize=2


Usually you put these lines at the **start** of the diagram to change all the variables or arrows. But you can also insert lines further down.






## Shortcuts 

There are a few shortcuts and aliases to save your typing fingers and to  enable compatibility with earlier versions of Theory Maker.

<!-- 
    !5 ! 4 !3 !2 !1

... makes these blocks:  ▇ ▆ ▅ ▃ ▂. 

Also, `!321` is the same as  `!3!2!1` (but quicker to type).


    A variable [blue3]


This is the same as:

    A variable;  colour=blue3

...
 -->
    a::A variable with an alias 

This is the same as:

    a; label=A variable with an alias

... which will produce the same results as this ...

    A variable with an alias

... but the advantage of using an alias is that you can use the short alias again in other positions to save typing:

    A::a variable with a long name
     B
      A

