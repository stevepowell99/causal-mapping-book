library(tidyverse)
library(bookdown)





setwd("C:/Users/steve/Dropbox/Projects/causal-mapping-book")
list.files(path = "rmds",pattern = "Rmd$",full.names = T) %>% 
  file.remove

lis <- list.files(pattern = "md$")
lis <- lis[(lis!="README.md")]
for(f in lis){
x <- readLines(f, encoding="UTF-8") %>% 
  paste0(collapse="\n")

gsub('```mermaid(.*?)```','```{r,echo=F}\nDiagrammeR::mermaid\\(\\"\\1\n\\",height=300)\n```',x) %>% 
  # gsub("!test1","\u2665",.) %>% 
  writeLines(paste0("rmds/",gsub("md$","Rmd",f)), useBytes=T)
  
}

setwd("rmds")
bookdown::render_book("index.Rmd")
setwd("..")

