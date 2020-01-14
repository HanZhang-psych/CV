# CV

This repo contains my CV and the code used to build it. 

## A Little Background

I used to rely on online tools to build my CV but was never happy about how much they cost. Recently, I came across the [vitae](https://github.com/mitchelloharawild/vitae) package by Mitchell O'Hara-Wild and decided to give it a try. It's been a fun experience and most importantly you get a fancy-looking CV for free. I share my code here as an example in case anyone is interested in making their own. 

Feel free to clone the files and edit them to make your own!

## Main Files

* `CV.pdf`: The final product.
* `CV.rmd`: The R Markdown file used to create the PDF.
* `awesome-cv.cls`:This LaTeX template is in charge of the overall style of your CV. [vitae](https://github.com/mitchelloharawild/vitae) supports several templates and I liked this one the most. I made small tweaks on the personal info section (font size, color, & spacing) based on the original template. If you prefer the original, delete this file. 
* `apa-cv.csl`: APA 7th style from the [Zotero Style Repository](https://www.zotero.org/styles?q=id%3Aapa-cv). This file defines your citation style. In my field (Psychology), APA style is the standard. Change it to other citation styles if needed.
* `.bib` files: I have 3 `.bib` files that separately store info for publisheded papers, in prep manuscripts, and conference presentations. You can create those `.bib` files from your reference manager (e.g., Zotero) or from scratch. It's important that you create separate `.bib` files for separate sections of your CV. 
* `multiple-bibliographies.lua`: This allows you to create multiple bibliographies from `.bib` files. See [here](https://github.com/pandoc/lua-filters/tree/master/multiple-bibliographies) for more info.


Happy vitae-ing and wish everyone good luck on the job market!


```
- Session info -----------------------------------------------------------------------------------------------------------------------------------------------------------------
 setting  value                       
 version  R version 3.6.1 (2019-07-05)
 os       Windows 10 x64              
 system   x86_64, mingw32             
 ui       RStudio                     
 language (EN)                        
 collate  English_United States.1252  
 ctype    English_United States.1252  
 tz       America/New_York            
 date     2020-01-13                  

- Packages ---------------------------------------------------------------------------------------------------------------------------------------------------------------------
 package     * version date       lib source        
 assertthat    0.2.1   2019-03-21 [1] CRAN (R 3.6.1)
 cli           1.1.0   2019-03-19 [1] CRAN (R 3.6.1)
 clipr         0.7.0   2019-07-23 [1] CRAN (R 3.6.1)
 crayon        1.3.4   2017-09-16 [1] CRAN (R 3.6.1)
 digest        0.6.21  2019-09-20 [1] CRAN (R 3.6.1)
 dplyr         0.8.3   2019-07-04 [1] CRAN (R 3.6.1)
 evaluate      0.14    2019-05-28 [1] CRAN (R 3.6.1)
 glue          1.3.1   2019-03-12 [1] CRAN (R 3.6.1)
 htmltools     0.4.0   2019-10-04 [1] CRAN (R 3.6.1)
 knitr         1.25    2019-09-18 [1] CRAN (R 3.6.1)
 magrittr      1.5     2014-11-22 [1] CRAN (R 3.6.1)
 pillar        1.4.2   2019-06-29 [1] CRAN (R 3.6.1)
 pkgconfig     2.0.3   2019-09-22 [1] CRAN (R 3.6.1)
 purrr         0.3.3   2019-10-18 [1] CRAN (R 3.6.1)
 R6            2.4.1   2019-11-12 [1] CRAN (R 3.6.1)
 Rcpp          1.0.3   2019-11-08 [1] CRAN (R 3.6.1)
 rlang         0.4.1   2019-10-24 [1] CRAN (R 3.6.1)
 rmarkdown     2.0     2019-12-12 [1] CRAN (R 3.6.2)
 rstudioapi    0.10    2019-03-19 [1] CRAN (R 3.6.1)
 sessioninfo   1.1.1   2018-11-05 [1] CRAN (R 3.6.1)
 tibble      * 2.1.3   2019-06-06 [1] CRAN (R 3.6.1)
 tidyselect    0.2.5   2018-10-11 [1] CRAN (R 3.6.1)
 vitae       * 0.2.1   2019-12-15 [1] CRAN (R 3.6.2)
 withr         2.1.2   2018-03-15 [1] CRAN (R 3.6.1)
 xfun          0.10    2019-10-01 [1] CRAN (R 3.6.1)
 yaml          2.2.0   2018-07-25 [1] CRAN (R 3.6.0)

```
