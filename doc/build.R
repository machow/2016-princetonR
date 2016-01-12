library(rmarkdown)
rmd = grep("[:digit:]+-.*/.*\\.Rmd", dir(recursive=TRUE), value=TRUE)
lapply(rmd, rmarkdown::render, output_format="md_document")