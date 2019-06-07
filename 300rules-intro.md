# How should causal maps encode causal information?

## Introduction





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

These maps are supposed to encode causal information. But how?

> How should we encode -– capture, write down, picture -– causal information? 

Or: 

> How should we convert causal information -– whether gathered from narratives or experiments or experts -– into a causal map?

The reverse question: 

> How should we interpret a causal map?

If we can do the one, we can do the other.



As evaluators we live and breathe causal information.

Causal information is just as basic as, say, numerical information about the level of a variable.^[The former cannot be reduced to the latter. There was an extraordinary idea that as causation cannot be reduced to correlation, only correlation -– numerical data -– is real whereas the causal information is somehow off the charts. This mistake has been pretty roundly exposed by Judea Pearl @pearl2000 and the other leaders of the “causal revolution” in statistics.]

We learned in school how to write down and manipulate numerical information. But not causal information. We need to agree, and teach one another, how to write down and manipulate causal information too.

For the moment, we are not at all interested in which particular medium -– for example, sentences as opposed to diagrams -– we want to use to encode causal information, because we want to understand the rules which should govern the use of the symbols in *any* such encoding. (Spoiler: in fact we will be using diagrams containing arrows between boxes, basically, for this task.)

A social researcher or an evaluator might be set the task of encoding the causal information in some written or spoken information, say from an interview, and for that they will need  symbols or conventions which make the causal information clearer.

Of course, people speak and write sentences which contain causal information all the time. But it isn’t easy to see exactly what information is contained in such sentences, because in natural language we have a very messy and heterogeneous patchwork of ways of talking about causation: dozens of half-complete systems for encoding different variants of causal information, some of them suffused with ideas like blame and responsibility. Just as language contains overlapping, only partially consistent and mostly incomplete, ways of talking about time, and about space, and about quantity.  Mathematicians and philosophers have nevertheless managed to systematise them in ways which are mostly satisfactory. 

Causal language is not one system. But it *is* possible to identify and describe a single formalised system, which is a good approximation to the ones we find naturally occurring in language. That is the one I will present here. As far as possible, we will try also to identify symbols and conventions which *fuzzily* capture the fuzziness, incompleteness, ambiguity etc of the way people talk about causal relationships and of the supposed causal relationships themselves.

Using the causal mapping app we are particularly interested in how we write down causal information *from multiple sources*. But that is a pretty specialised task: first we need to look at the basics: how do we write down causal information at all? What exactly is the meaning of a causal arrow?

## Understanding the causal arrow

Causal arrows are not conduits for a mysterious force caused “causation”. What flows down the arrows, so to speak, are actual forces - magnetism, peer pressure, persuasion, whatever. The arrows are the conduits for these *actual* forces: the form, not the content.

We will not get anywhere if we try to understand the meaning of a causal arrow, or how to use it, by using synonyms or pointing at some process. 

Instead we will learn its “meaning” in precisely the way we learn the “meaning” of arithmetical symbols like `+` for addition: by learning the rules by which we may draw inferences between sentences containing such symbols.^[If we were doing formal logic, we could say that we want to establish the *axioms* and *theorems* for sentences (or diagrams) involving the causal arrow.]

Here we could review existing bodies of thought on symbolic treatment of causal relationships:

- Judea Pearl [@pearl2000] and co - mostly statistics-based
- Philosophy of causation, Mackie [@Mackie1974], Lewis [@Lewis2000], etc -– mostly dealing only with binary variables 



A causal map is more than boxes connected by arrows. The boxes refer to things which could be different, which could be one way or the other, I like to call them “variables”. The arrows show that the boxes somehow influence one another, though it is not always clear how. We’d like to perhaps be able to use different symbols so we can specify these links more precisely, and add a corresponding legend to the map. But what symbols do we need? Some kinds of causal map already have their own sets of symbols and conventions, like SEMs. Do all the different kinds of causal map, like those in the list, all need to have their own legends? Can some be shared? The problem of what symbols to use is certainly a problem for the first three. 

If we have to convert fragments of causal information expressed in other ways, like narrative testimonies from stakeholders about some domain of interest, into causal maps -– a task we will refer to as “coding” -– we need to know how to do that, what symbols and conventions we need to use to encode as much of the relevant causal information as we can.

So we have a challenge to establish conventions for constructing causal maps which makes their meaning transparent. 

I claim that this problem about *meaning* can be solved by agreeing on how to *reason* with causal maps, to do causal inference. The causal map app needs to have the right rules for causal inference in order to be able to bring the maps alive -– so that we can ask them questions like “does variable B have more influence on E than variable C?” or give them instructions like “Hide all the variables which only have a small influence on E.”

When we learn the meaning of `+` in school, words don’t help us much, we learn by making deductions; we learn that from 

> x = 2 + 3

we can deduce, for example,

> x = 5

according to certain rules. We could call them “inference rules”.

Here we aren’t dealing with equations, we are dealing with causal maps. We need inference rules for causal maps.


