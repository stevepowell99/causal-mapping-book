# Lo/hi Variables, types of variable, and contrasts

Though there are different possibilities, my strong suggestion will be that we can make a lot of sense of causal maps if we think of the nodes/factors/vertexes/tags as *taking values between 0 and 1* (or maybe -1 and 1). I call variables of this kind "lo/hi" variables for the want of a better word.

One of the many advantages of low/hi variables is that they do in fact have a natural interpretation. And they can be expressed roughly as percentages. It's not hard to roughly understand "pupil enthusiasm is pretty high, above 75%".
So it might not be so terrible to optionally have *these* kinds of numbers on your maps, as long as you are clear that they are just indicative (and can't necessarily be understood as percentages *of* anything, though if you think of "75%" as meaning "the 75th percentile of some associated but unspecified empirical distribution" -- for example, the range of in some sense typical student enthusiasms -- you won't go far wrong. 

Another advantage is that both the current value of level of variables and in some sense the strength of arrows can both be expressed with these lo/hi numbers. 

We can already start to guess how this kind of soft arithmetic will work -- for example, if E is already at 90% and C has a 100%, positive, influence on E, and then we set C to 90%, we are at least sure E isn't going to decrease and we'd expect it increase a bit. Whereas if the influence of C on E is  strongly negative, say -90%, then if we set C to be large rather than small, we'd probably expect E to drop. 

The *details* of how this arithmetic might work are up for grabs. But I will try to sketch out some solutions in the next sections.

