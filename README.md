# CV

This repo contains my CV and the code used to build it. 

## A Little Background

I used to rely on online tools to build my CV but was never happy about how much they cost. Recently, I came across the [vitae](https://github.com/mitchelloharawild/vitae) package by Mitchell O'Hara-Wild and decided to give it a try. It's been a fun experience and most importantly you get a fancy-looking CV for free. I share my code here as an example in case anyone is interested in making their own. 

Feel free to clone the files and edit them to make your own!

## Main Files

* `CV_HanZhang.pdf`: The final product.
  
* `CV_HanZhang.rmd`: The R Markdown file used to create the PDF.
  
* `awesome-cv.cls`: This file controls the overall style of your CV. [vitae](https://github.com/mitchelloharawild/vitae) supports several templates, and I liked this one the most. I made small tweaks to the personal info section (font size, color, & spacing) based on the original template. If you prefer the original, delete this file.
  
* `awesome-cv.tex`: It looks like `vitae` automatically adds some additional preset LaTeX commands when knitting the pdf. Here, I increased the default spacing between references to make them easier to read.
  
* `apa-cv.csl`: APA 7th style from the [Zotero Style Repository](https://www.zotero.org/styles?q=id%3Aapa-cv). This file defines your citation style. In my field (Psychology), APA style is the standard. Change it to other citation styles if needed.
  
  Note: I edited the `apa-cv.csl` file to support "in press" articles and to add a citation number before each reference. To display an article as "in press", in Zotero you want to leave the published date empty, add "in press" in the "Extra" field, and export it as a `.bib` file. You will find that the reference has a `note` field with the value `in press`. This will replace the year field in the generated citation. If you do not want this feature, remove the .csl file and download the original one from the Zotero Style Repository.

* `bibs/*.bib` files: I have `.bib` files that separately store info for published papers, in prep manuscripts, conference presentations, etc.. You can create those `.bib` files from your reference manager (e.g., Zotero) or from scratch. These `.bib` files are read in the Rmarkdown file when creating your CV.

* `lua/strong.lua`: This makes your last name in the bibliographies displayed in bold font. Change it to your own last name as needed. 

Make sure to install `vitae` and `tinytex` if you haven't done so:

```
install.packages("tinytex")
tinytex::install_tinytex()

install.packages("vitae")
```

Happy vitae-ing and wish everyone good luck on the job market!

