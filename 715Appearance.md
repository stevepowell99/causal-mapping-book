
# Appearance in Theorymaker *text*{#appearance}
## Formatting variables

### Colours

Type the name of the colour you want after the name of the variable  like this:

```{r  x201810151417}
makeToC2("
My variable; colour=blue
")
```


- You can use all the [HTML colour names](http://www.w3schools.com/colors/colors_names.asp) like `black`, `white`, `skyblue` etc. You can use `transparent` too.

- These colours: `red`, `orange`, `blue`, `green`, `grey`, `purple` are special because if you put a number from 1 to 9 straight after these names, like `orange3`, you get nice shades which all fit together. 

- ... whereas white and black can be made variously transparent in the same way, by adding a number from 1 to 9. So `white1` is a very transparent white, `black7` is a fairly opaque black.

If you want a  colour which fades from left to right, try something like blue2:red3 or white:snow. Please don't even try anything like red:blue. You have been warned.

```{r  x20181018477}
makeToC2("
A fading thing; fillcolour=blue2:red4
")
```


You can even use HTML colours:

    color=#eeefff

... and you can add two additional digits for transparency:

    color=#eeefff50


### Fills and borders

`color=` refers to the colour of the edge. If you want to have the main body coloured differently from the edges, you have to put something like this:

```{r  x201810151459}
makeToC2("
Multicoloured thing; color=red; fillcolor=green2; penwidth=5

")
```

... and you can adjust the thickness of the "pen" which draws the border with something like `penwidth=4`. 


### Other ways to format variables

You can tweak the appearance in other ways too like this:

    My variable;  fontcolor=green2;  fontname=Courier;  fontsize=22

Some possibilities:

    shape=oval              # also none, circle, diamond, square
    style=dotted,filled     # also dashed,filled etc
    height=.2; fontsize=8   # height can be larger but not 
                            # smaller than required by the text, unless you 
                            # set fixedsize=true
    style=striped,filled;fillcolor=red2:red3:red4   #amazing!                



## Formatting arrows



```{r  x20181018497}
makeToC2("
Variable B
 (My arrow;  width=8;  color=blue;  style=dotted) Variable A

")
```


You can also try these:

    direction=both  (alternatives are: back, forwards, both or none)

    fontname=Georgia

    fontsize=7

    taillabel= my tail label

    headlabel= my head label



## Fontnames    

You can use any fontnames installed on your computer, but they might not look the same on another computer. 

### Fonts which work everywhere:

AvantGarde-Book AvantGarde-BookOblique AvantGarde-Demi
AvantGarde-DemiOblique Bookman-Demi Bookman-DemiItalic
Bookman-Light Bookman-LightItalic Courier Courier-Bold
Courier-BoldOblique Courier-Oblique Helvetica
Helvetica-Bold Helvetica-BoldOblique Helvetica-Narrow
Helvetica-Narrow-Bold Helvetica-Narrow-BoldOblique
Helvetica-Narrow-Oblique Helvetica-Oblique NewCenturySchlbk-Bold
NewCenturySchlbk-BoldItalic NewCenturySchlbk-Italic
NewCenturySchlbk-Roman Palatino-Bold Palatino-BoldItalic
Palatino-Italic Palatino-Roman Symbol Times-Bold Times-BoldItalic
Times-Italic Times-Roman ZapfChancery-MediumItalic ZapfDingbats

### Other fonts which work nearly everywhere include these:

- Arial
- Verdana
- Impact
- Comic sans MS







## Standard graphviz tweaks

Lines like these below only apply to the diagram itself, like the background colour etc. You can precede them with `diagram;` like this:

    diagram;  bgcolour=grey


## Tweaks which go in lines on their own

    proportion=1     # tall and thin or short and fat diagrams. `.1` is very short, `2` is very tall.    Alias for `ratio`.   

    direction=TB     # top-down. Also, BT, LR or RL

    label=My title   # adds a title to the whole diagram


    layout=neato     # if you don't want a hierarchical diagram, try this!  
                       Also: circo dot fdp neato nop nop1 nop2 osage patchwork sfdp twopi

## Also try these

    nodesep=.1       # moves variables closer or further apart

    ranksep=2        # try it and see!

    orientation=L    # flips the diagram 90 degrees

    splines=false    # keeps the arrows straight. Also try: `polyline`

## Hardcore

If you really want, you can tweak any part of your diagram with most of the  [Graphviz attributes](http://www.graphviz.org/doc/info/attrs.html) from label positioning to URLs. Not all of them will work -- try and see.


## Special Theory Maker tweaks

    wrap=20          # changes the line wrapping in labels

 
<!-- ##### Themes

To apply a theme to the whole diagram, try:

    theme=winter     

You can also try theme=night, summer, comic, and drama. More themes are coming! You can still continue to add formatting as usual, e.g. adding `fontsize=10` will change the font and leave the rest of the theme the same.
 -->


<!-- ##### Getting things in the right order



    rank=same;  Variable A;  Variable B


This line lines up the listed variables  (Variable A and Variable B) and also puts them in the order you specify. So if you want your variables X, Y and Z for some reason in the order X, Z, Y, write

    rank=same; X; Z, Y

(So if you are a Graphviz expert, note that rank=same does a bit more in Theory Maker than it does in Graphviz.)  -->

## Improving readability

### Proportion

Type a line like:

    proportion=.5 





### Direction



Write a line like:

    direction=TB


```{r  x20181019218}
makeToC2("
A
 B
direction=TB
 
")
```

TB= top-to-bottom

LR= left-to-right

etc

### Variable separation



Moves variables further apart: 

    graph; nodesep=2. 

Closer together: 

    graph; nodesep=.01`




