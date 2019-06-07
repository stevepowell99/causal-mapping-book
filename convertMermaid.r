library(tidyverse)
library(bookdown)





setwd("C:/Users/steve/Dropbox/Projects/TM-help")
list.files(path = "rmds",pattern = "Rmd$",full.names = T) %>% 
  file.remove

lis <- list.files(pattern = "md$")

for(f in lis){
x <- readLines(f) %>% 
  paste0(collapse="\n")

gsub("```mermaid(.*?)```","```{r,echo=F}\nDiagrammeR::mermaid\\('\\1\n',height=400)\n```",x) %>% 
  gsub("!test1","\u2665",.) %>% 
  writeLines(paste0("rmds/",gsub("md$","Rmd",f)))
  
}

setwd("rmds")
bookdown::render_book("index.Rmd")
setwd("..")

