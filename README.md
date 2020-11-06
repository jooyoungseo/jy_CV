
# JooYoung Seo's Academic CV

## Enhancements Compared to the default `vitae` package:

* Styling your publications using given csl file in `YAML`.
* Printing as many bibliographic sections and corresponding entries as you want in your CV (e.g., journal publication, conference proceedings, software developments, etc. etc.).
* Highlighting your name in printed bib entries using bold format (see and change the content in `lua/strong.lua`).
* Easily managing your CV following `bookdown` style (e.g., each separate Rmd file according to their own categories like chapters).


## Descriptions

This repo has been created to systematically manage my academic CV. This is reproducible for those who have basic knowledge of R and R Markdown.

Based on [vitae package](https://github.com/mitchelloharawild/vitae/), I have extended its capabilities to include multiple bibliographic entries using [multiple-bibliographies lua filter](https://github.com/pandoc/lua-filters/blob/master/multiple-bibliographies/multiple-bibliographies.lua) so that I can print my scientific records in [APA_CV style](https://github.com/citation-style-language/styles/blob/master/apa-cv.csl).

Following my template, you would be able to print as many bib-entries as you want using your desired csl file and your `*.bib` files.

Anyone who would like to get a hint on how I have managed [this CV](https://jooyoungseo.github.io/jy_CV/JooYoung_Seo_CV.pdf) can fork this repo to make their own.
