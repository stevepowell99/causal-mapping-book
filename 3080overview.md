# Overview of issues which a "soft arithmetic for causal maps" needs to cover

Here is a brief but reasonably comprehensive overview of the kinds of theoretical issues which really come up when coding and decoding (understanding) causal maps. There are a lot of them! In subsequent sections I have started to address them one-by-one in more detail, but this is very much a work in progress.

My suggestions for solutions to these problems constitute the rules for a "soft arithmetic" for causal maps. 

These rules are also actually embodied by the computer code which makes our app work. At least, key parts of it are. In some cases, the program is ahead of this work-in-progress book and in some cases behind it.

These issues and my answers to them aren’t just philosophical chat: they are needed to make the app work.

## Step 1: Encoding causal statements

+ "Mini-maps": the basic causal fragments like A and B causing C. These  are the building blocks from which all more complicated theories are built: one or more "influence" variables have arrows to another, "consequence" variable. What does this mean, what can we deduce from it?
+ Variables versus propositions and events
+ Different types of variable 
    - false/true
    - ordered
    - numerical
    - proportion
    - rich /qualitative 
    - emergent, chaotic,  ..…

- Joining together simple theories into composite theories

+ * What if two simple theories come from different contexts?
+ Adding information about the actual (& counterfactual) levels of a variable
    * Showing interventions and differences e.g. our intervention will set the variable "number of trained teachers" at 50 rather than 10
    * Dealing with different possible formulations of variable names like "more investment" or just "amount of investment" "investment increased 10%" or "investment will increase 10%"?
+ Tricky cases

- + "for each ...." variables
      + repetition, multiple cases (we know about the effects of X on *a* child's health, but we have many children in the programme...)
        + more than one level e.g. multiple children embedded in multiple classrooms
        + higher-level effects e.g. when classroom effects are not just an aggregate of child effects
      + time / duration (for each day, for each semester ...)
    + Special focus on "plus" vs "minus" aka "positive" vs "negative" influences, e.g. coding a variable as "High levels of heat" vs "Low levels of cold" etc 
      + sometimes formulations seem technically equivalent but not psychologically
- Dealing with variables which are linked by definition, not by cause, e.g. when one variable is a special case of another
  - This is crucial for coding. e.g.
    - Source P says the project "improved older people's health"
    - Source Q says the project "improved people's health"
- Different kinds of influence
    + How can we possibly have enough symbols to write down all the possible different ways one or more variables can influence another ... exponential, interacting ... ? 
      + Try reducing the problem to:
        + "contour" and "strength" of *individual* influence e.g. when A increases, C decreases, but only weakly
        + "combinations" of *multiple* influences, e.g. you need high levels of both A and B to get C
      + Or failing that, what are the sensible defaults? Can we assume some kind of basic sort-of linear function as a default, if we don't want to specify the details because we don't have the time or the information
- Feedback loops
- Causal inference
    + in particular, can diagram X be deduced from (a more complicated) diagram Y?
    + how having even a simple feedback loop makes causal inference even more exciting and often unpredictable
    + what is the overall causal power or "contribution" which one variable has on any descendent, given no information about the levels of the other variables? (Click on a parent variable, the descendants shrink according to causal power.)
- Tricky: events vs variables; coding retrospective narratives
    + e.g. this happened, then that happened: are these things variables?

## Step 2: Encoding claims from different sources

When sources make *claims* about causal connections; and dealing with multiple sources

Above, we looked at how we can encode 'A causes B'. But now we take the big step of asking, how can we encode "source P believes / asserts that 'A causes B'" (basically all the raw material for QuIP) and what can we deduce from it? As we know what 'A causes B' means, see above, and we know from ordinary language what "P believes X" means, do we automatically know what "source P believes / asserts that 'A causes B'" means? (Review here, more generally, existing symbolic treatments of "source P believes X" - [@Levesque1984])

(Note that `source` is not hard-coded in the app - you can use any column in the statement table you want^[If you use a column with numbers in it, it will be treated as a continuous variable, and therefore won't be available if you put `source` in the labels]).

* For example, from "source P believes / asserts that 'A causes B'" we can't in general conclude that A causes B. ... 
  - To make these kinds of sentences / diagrams useful, we should also allow coding of our **trust** in the statement, so from
    - "source P believes / asserts that 'A causes B' and we trust source P 100%" we *can* (by definition) conclude that A causes B
    - and,  "source P believes / asserts that 'A causes B' and we trust source P 0%" we have no information about whether or how much A causes B
  - Perhaps (also) be able to assign overall levels of trust to entire sources, not just individual statements
+ How to combine multiple such fragments? (this is QuIP bread-and-butter)
    * e.g. if source P believes A (completely) causes B and that B (completely) causes C, do we know that they believe that also A (completely) causes C? It's a logical consequence, but how rational can we assume our sources to be?
    * (Fiona's problem) e.g. if source **P** believes that A (completely) causes B and source **Q** believes that B (completely) causes C, can we conclude anything about A and C? In other words, if one source tells me about one arrow in a chain, and another tells me about another which links with it, who told us about the whole chain?
    * (Generalisation problem) e.g. if source P believes A (completely) causes B, can we conclude anything about what some larger population believes?
+ How to *summarise* multiple such fragments?
    * In particular:
        - How do we combine different overlapping statements in which we have different degrees of trust?
        - How do we combine different overlapping statements which make different claims about the contour / shape / combinations of influences on a variable, e.g. P says that both A and B are necessary for C, but Q says that either is sufficient, and source O says that you need D as well?

## Further steps

- Hearts and wedges: Marking which variables are deemed to be *important* / *valuable* ("heart" symbol?); and which can be *intervened* on ("wedge" symbol?) This information can be a way to model or understand or predict someone's behaviour ("they're going to want to intervene on X in order to get Y"). For this to work we need to also encode the fact that they believe that X leads to Y; we need the ideas in Step 2 in order to do this properly.
  + Generalising this to deal with *multiple* actors each of whom can value and intervene upon different (sets of) variables
  + Encoding the fact that source P claims that stakeholder Q believes that X leads to Y, and maybe that X values Y.

-------------------

**Technical note**

Here I should review existing bodies of thought on symbolic treatment of causal relationships:

- Judea Pearl [@pearl2000] and co - mostly statistics-based, though it is generalised to cover non-parametric cases
- Philosophy of causation, Mackie [@Mackie1974], Lewis [@Lewis2000], etc -– mostly dealing only with binary variables 
- Modal logic of belief ..…
- etc

------

