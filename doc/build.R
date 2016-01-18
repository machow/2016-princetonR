library(rmarkdown)
rmd = grep("[0-9]+-.*/.*\\.Rmd", dir(recursive=TRUE), value=TRUE)
print(rmd)
lapply(rmd, rmarkdown::render, output_format=c("md_document", "html_document"))
