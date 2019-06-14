# The chaining rule with a shared consequence variable

The second special case of the chaining rule is when the mini-maps we are combining contain **two or more arrows which are have different influence variables and the same consequence variable**. Again, the problem is with the nature of the combined causal link.

Our common sense pulls us in different ways about what to do in different cases. 

Sometimes we might feel this is a complete or a partial contradiction, in other cases not.

```mermaid
graph LR
G-->Q(E)

B(B)-->E(E)
C(C)-->E(E)
D(D)-->E(E)
style E fill:#fcf
style Q fill:#fcf

```

If we hear that G affects E, and then we hear that B, C and D affect E, there are different ways to respond.

For example, if we hear:

> good health contributes to well-being

and

> a decent income contributes to well-being

we are probably happy to encode them like this:

```mermaid
graph LR
C(good health)-->E
D(decent income)-->E(Well-being<br>...some kind of sum<br> or positive combination <br>of both)
```


It has to do with whether we think of "G ▶ E" as meaning 

> only G affects E

or

> G (and possibly other things) affects E

In the first case, the second mini-map *contradicts* the first.

In the second case, it isn't obvious how we are to understand this combination.

In particular, what about joining mini-maps in this way which encode specific but different causal contents From this ..…

```mermaid
graph LR
G--AND-->Q(E)
H--AND-->Q(E)

B(B)--OR-->E(E)
C(C)--OR-->E(E)
D(D)--OR-->E(E)
```

..… in general we have to remember these different combinations, because we can’t assume we can combine them without further ado. Here the arrows have been coloured to show this. 

```mermaid
graph TB
G--AND-->E
H--AND-->E
B(B)--OR-->E(E)
C(C)--OR-->E(E)
D(D)--OR-->E(E)
linkStyle 0 stroke:blue
linkStyle 1 stroke:blue
linkStyle 2 stroke:red
linkStyle 3 stroke:red
linkStyle 4 stroke:red

```

