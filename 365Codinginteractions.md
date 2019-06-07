

# Coding contours and interactions

## Merging information about functions

So if several people have different versions of these kinds of combinations, it should be possible to calculate some kind of fuzzy combinations (what if one person says either A or B is sufficient for C, but another says both A and B are necessary for C)? 

Should it calculate combinations and influences further down the causal chain, i.e. what happens down the chain at Y if I tweak X?

## Show that the  influence of one variable on another has a particular contour. 

Click a button to put a symbol on the middle of the arrow. 

## Show that variable X is part of the definition of variable Y. 

Select a choice from a drop-down. An arrow is drawn from X to Y but it is  dashed.



```{r  x2019418113053a}
makeToC2("
People have improved health
 (style=dashed)Older people have improved health
")
```

## Show that variables X and Y are linked by definition

They overlap in meaning.

```{r  x2019418113053aa}
makeToC2("
Families spend more time together
 (style=dashed;dir=none)Fathers interacting more with their children
")
```


Select a choice from a drop-down. An arrow is drawn from X to Y but it is  dashed and there is no arrowhead to show direction. 

## Show that a set of influence variables influence the consequence variable *collectively*. 

Click a button to put them all in the same group. They all get a circle on the middle of the arrow and the desired symbol e.g. `&` on top of it.

![](img/interaction.png)