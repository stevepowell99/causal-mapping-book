args <- commandArgs(trailingOnly = TRUE);
Sys.setenv(RSTUDIO_PANDOC='C:/Program Files/RStudio/bin/pandoc');
bookdown::render_book("index.Rmd")
#rmarkdown::render(args[1],output_dir="output");
# path=paste0("output/",args[1])
# file.copy(paste0("C:/Users/User/Google Drive/Projects/articles/output/",gsub("Rmd","html",args[1])), paste0("C:/Users/User/Dropbox/Apps/Blot/Public/",gsub("Rmd","html",args[1])),overwrite = T) file.copy(paste0("C:/Users/User/Google Drive/Projects/articles/output",gsub("Rmd","pdf",args[1])), paste0("C:/Users/User/Dropbox/Apps/Blot/Public/",gsub("Rmd","pdf",args[1])),overwrite = T)
# 