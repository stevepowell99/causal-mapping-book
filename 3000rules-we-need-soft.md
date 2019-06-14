# (PART) Soft arithmetic: rules for causal maps {-} 

# We need a "soft arithmetic" for causal maps {#soft}

The forthcoming sections are the main theoretical contribution of this book. The are an attempt to put together a kind of "soft arithmetic" for causal maps: a set of rules which tell us how to combine different pieces of causal information and how to make deductions with them. To do so, we have to address a  wide and challenging range of issues. Many of these issues are familiar to practitioners like QuIP coders, indeed to anyone who tries to piece together fragments of causal information, but in most cases there is no consensus on how they are to be answered, and I’m struggling even to find academic references for some of them (suggestions very gratefully received!) I'll be arguing that **if we want to try to address even the most basic needs of evaluation users, we are compelled to try to make some use of some sort of numbers when encoding causal information** -- but in such a way as to keep things as fuzzy as we know they are, rather than trying to demand or claim an unrealistic level of precision. 



![](assets/photo-1548175551-1edaea7bbf0d.jfif)

## Examples of different kinds of causal maps{#examplesOfMaps}

Evaluators encounter different kinds of causal maps:

- Theories of Change for a project or programme, even (in a very restricted sense) Logical Frameworks
- (Perhaps not quite the same thing:) Programme theories in theory-based evaluation 
- The kind of maps produced by QuIP
- Fuzzy Cognitive Maps
- Systems Diagrams
- Structural Equation Models
- INUS diagrams
- (arguably) diagrams used in Realist Evaluation 
- (sometimes) diagrams used in Outcome Harvesting

A good example of a causal map is the raw output of a QuIP-type coding exercise: a set of directed paths (I call them “arrows”) between a set of nodes or factors, in which the arrows might have additional attributes like respondent characteristics, question number / domain etc and (arguably) information like strong, weak, necessary, uncertain, etc. One or more arrows B, maybe also C, D, ... coming into a node E encode a causal claim about how B (and maybe C and D...)  influence E. 



## Users of a causal map expect to be able to deduce some kind of comparative information from it

On the basis of a causal map, we must in principle, at least some of the time and with suitable qualifications and caveats, to be able to ask typical (evaluative?) questions like these: 

>Was the influence of C on E in some sense positive, or upwards, or  increasing?

>Was the influence of C on E not just theoretically present but of some meaningful size?

>Is the influence of C on E bigger / more important than the influence of D on E?

>Is C one of the biggest / most important influences on E?

>Is the influence of C on E meaningfully bigger / more important than the influence of D on E?

... as well as, of course, questions about combinations, like:

>Is the combined influence of C and D on E important?

>Do both C and D act to increase E?

>Will C affect E if D is high/present?

and so on.

In particular, we would like to be able to ask them when E is not an immediate daughter of C but is further downstream of C. 

(Going a step further, we'd like to be able to say things like "show me only the strongest influences" or "show me a summary overview with only the most important things". This kind of summarising and aggregation presupposes the ability to make statements like those above.)

I'd claim that these are among the central reasons clients commission QuIP reports, (or indeed most other kinds of evaluation), in summary: 

- to get overview findings about the influence of C (an intervention) on some valued downstream factor like well-being --- and in comparison with other interventions;
- and to get more in-depth details about the whole causal map, what causes what, what helps the intervention, what hinders it, and so on. 

... again, we can have caveats and discussions about who decides, who participates etc; and we should tirelessly emphasise the high level of fuzziness and uncertainty involved. But still, if we merely answer "there were a lot of links between C and E, but we have no further information", we would not be doing our job. It would be like a telecoms agency delivering only metadata about the communications history of a criminal -- certainly not useless, but a thousandth as useful as knowing what was actually said, whether in detail or in summary. Also we would not be doing the main job of an evaluator, according to Michael Scriven @scriven2012logic which is not just to describe what happened but to (help) judge is that *good enough*.

By all means we can let our evaluation stakeholders play with the encoded raw data and let them "draw their own conclusions". But in order to draw their conclusions they have to know at least implicitly *how to draw conclusions from causal maps*. They might have better information than we do about the *content*, but our job as experts in causal maps is to advise them specifically on *how to draw conclusions*, how to make decisions about which parts to focus on, how to summarise them, and which parts to filter out.

## Asking and answering those kinds of "typical questions" of a causal map boils down to assigning some kinds of numbers to its elements

The point is that these statements all presuppose, make use of, a kind of "soft arithmetic" for causal maps. To be able to make any kind of "bigger than/smaller than" claims about causal maps, we need the individual arrows to have, as a minimum, a property like, in some sense, "strength" and "direction" as well as a way of comparing those properties. That is, *we are already doing* a kind of vague arithmetic. To be able to make double comparisons like "The influence of B on E is bigger than the influence of C on E" we are essentially implying that the arrows have some kind of numbers attached to them. That is in a sense the definition of what numbers *are*: attributes which justify comparisons. It remains to be seen what kinds of numbers those would be.  

But, you say, you really don't want to actually put numbers on the arrows or the variables on your maps, you really don't want to claim that this is an effect of size 7.51, or -102, etc. 

*I* don't want to put numbers on the maps either. But numbers in some form have to be there in the background, however flexible and fuzzy and inaccurate, or we couldn't make useful comparisons. 

## Two simple (but inadequate) strategies to encode causal information without using any kind of number

You might say "ah, but I have a strategy for encoding causal information which does not involve any kind of number or even any idea of strength or gradation". 

Indeed, there are such strategies, here are two:

The purest and least sophisticated strategy to encode causal information, "**content-neutral coding**", does no coding of the causal *content* of the link at all. We interpret an arrow as meaning only

> C has *some* kind of causal influence on E, but we aren’t saying, or don’t know, what

The next step would be a strategy like "**purely-positive coding**"  in which we do provide some minimal encoding of the content, but always as some kind of "positive" influence, like this:

> C has some kind of, in some sense, positive or increasing causal influence on E, but we aren’t saying, or don’t know, more than that.

But we should remember that, in contrast, the raw information provided by our respondents can may in fact have arbitrary causal content, like this:

> C is almost irrelevant to E

or

> C drastically reduces E

or

> C is necessary for E

or 

> C definitely has no causal influence on E

as well as 

> C has a strong and positive influence on E

etc.

We would struggle to meaningfully encode most of these kinds of information using either "purely-positive" or "content-neutral" coding. 

By all means we could use "content-neutral coding" to encode willy-nilly the example statements just given as arrows from C to E (or whatever). But we wouldn't be able to do much with the resulting network. We would hardly be justified even in *aggregating arrows* (combining several cases in which several sources mentioned the same arrow, for example, (in the resulting network) using the width of the combined arrows to show the number of mentions). That would be to mix apples and pears.

We will have to try be at least a bit more sophisticated in how we encode causal information as arrows in a causal map. That means establishing a "soft arithmetic" for causal maps. That is what we will look at next.

Though there are different possibilities, my strong suggestion will be that we can make a lot of sense of causal maps if we think of the nodes/factors/vertexes/tags as *taking values between 0 and 1* (or maybe between -1 and 1). I call variables of this kind “lo/hi” variables for the want of a better word. More in section xxx.

-------------------------------------

**A technical note**

The enormous advantage of quantitative approaches in social science, using ordinary integers and rational numbers, is that this arithmetic is pretty straightforward and mostly very well understood. It jumps over most of our list of issues (below). 

But we have some advantages over the statisticians too. For one thing, the special status of *causal maps* within quantitative social science, and the fact that they are a completely different kind of creature from mere correlative structures, @pearl2000, is still controversial in statistics. Also, their central problem is "how can we get from these mere correlations to actual causal knowledge" whereas our causal maps already consist of (putative) causal knowledge; our problem is validating it, manipulating it, combining it, summarising it. 

What I am trying to do in the next sections is apply a modest subset of Pearl's ideas to the kind of ill-defined and fuzzy data we get in most actual social science, rather than the kind of quantitative data he (mostly) presupposes.


