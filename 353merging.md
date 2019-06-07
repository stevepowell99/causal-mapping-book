## Merging different influences on the same variable

Even when E is a numerical variable, e.g. a counting number, it is not obvious how to merge information about influences on E from different sources.





code all these influences and calculate their influence independently of one another, just by adding them up.

However with lo-hi variables, it seems this might not be possible. Suppose we coded “B is good for E” as meaning:

> E = B*.6

or

> E = SA(Ep, B, .6)

Then, if you had several such influences, 

- C reduces E
- B is quite good for E
- D doesn’t have much effect on E

