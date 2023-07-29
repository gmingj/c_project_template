# C/C++ Project Template

## Dependences for doc
```
sudo apt install -y doxygen plantuml graphviz pandoc texlive python3-pandocfilters pandoc-plantuml-filter texlive-latex-recommended texlive-latex-extra texlive-pictures
pip install pikepdf
```

```
pandoc -F pandoc-plantuml -N --toc -V lot --shift-heading-level-by=-1 -o mannual.pdf mannual.md
```
