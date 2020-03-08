@echo off
mv *.tex ../docs/
mv *.pdf ../docs/
cd ..
git add *
git commit -m "Update"
git push
start https://jooyoungseo.github.io/jy_CV/JooYoung_Seo_Short_CV.pdf
cd short_cv
