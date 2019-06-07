
# Visualising

Now the network has been aggregated, there are decisions to make about: 

- encoding important facts about the network e.g. in terms of colour, width, visibility, etc
- decoration - other things which make the network easier to read, such as orientation, gaps between variables, etc. 

Here we will deal only with the first.

## Conditional formatting

In the `Display` tab, the user can set almost any visual feature of the network to reflect almost any attribute of the variables, arrows etc. 

For example:

- Hide all variables with some attribute equal to, or less than a certain number, or containing a certain string ....
- Make the width or transparency of the arrows reflect the number of mentions
- Colour arrows according to the average age of people mentioning them 

etc.


This can seem a bit overpowering so the trick will be to have plenty of sensible pre-sets and templates.


## Hard-coded formatting 

(Very debatable:) e.g. 

- make an arrow dotted if it is coded as a definitional/conceptual rather than causal link
- put a symbol on an arrow if its strength is less than 0

## Constructing labels and tooltips

Arrow and variable labels and tooltips can be constructed by the user to show e.g.

- the actual label originally provided by the user e.g. "Income due to pig farming"
- any attributes available to the app, e.g. list of sources, average age, etc.

So if the user specifies e.g. `label, frequency` in the setting `variablelabel`, the variable labels will look like this:

    Income due to pig farming
    Frequency: 46


## Focus

*If `diagramfocus` is TRUE*: This is mainly for interactive viewing, not for printing / exporting. As the user clicks through the different statements in the corpus, the arrows coded on the basis of this statement are highlighted and the others fade. (There is also a "play" button which plays through all the statements like a video.) 







