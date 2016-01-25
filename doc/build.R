library(rmarkdown)
if (!interactive()){
  rmd = grep("[0-9]+-.*/.*\\.Rmd", dir(recursive=TRUE), value=TRUE)
} else {
  rmd = commandArgs(trailing=TRUE)
}
print(rmd)
lapply(rmd, rmarkdown::render, output_format=c("md_document"))