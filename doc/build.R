library(rmarkdown)


if (!interactive()){
  rmd = commandArgs(trailing=TRUE)
}
if (!length(rmd)) rmd = grep("[:digit:]+-.*/.*\\.Rmd", dir(recursive=TRUE), value=TRUE)

lapply(rmd, rmarkdown::render, output_format="md_document")