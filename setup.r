# source("C:/Users/User/Google Drive/Projects/pogol/ShinyApps/ShinyApps/theorymaker/extras/t2a.r")
# source("C:/Users/User/Dropbox/Projects/TM3/funs.r")


library(captioner)
library(pryr)

tn <- captioner(prefix = "Table")
fn <- captioner(prefix = "Figure")
cf <- partial(fn, display = "cite")


htmltools::tagList(rmarkdown::html_dependency_font_awesome())

# warning("sourced")

usePackage <- function(p) 
{
  if (!is.element(p, installed.packages()[,1]))
    install.packages(p, dep = TRUE)
  require(p, character.only = TRUE)
}

# install.packages("shinyjs")
isbook=T
# library("shiny")
# library("stringr")
# library("markdown")
# library("fun")
# library("digest")
# library("knitr")
# library("ggplot2")
# library("shinyBS") 
# # usePackage("shinyjs") 
# library(rhandsontable)
knitr::opts_chunk$set(warning=F)
knitr::opts_chunk$set(echo=F)
knitr::opts_chunk$set(results="asis")
knitr::opts_chunk$set(message=F)
knitr::opts_chunk$set(cache=T)
knitr::opts_chunk$set(comment="")
knitr::opts_chunk$set(tidy=TRUE)
knitr::opts_chunk$set(fig.pos="h")
knitr::opts_chunk$set(fig.width=8)
