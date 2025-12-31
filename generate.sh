arara war-log.tex
latexml war-log.tex | latexmlpost --destination=./docs/index.html --mathimages --nomathsvg  --nopresentationmathml --graphicimages --pictureimages -
rm -rfv war-log.latexml.log latexmlpost.log 
# pandoc -t html5 --standalone --embed-resources -o test.html war-log.tex