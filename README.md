# C/C++ Project Template

## Dependences for doc building
```
sudo apt install -y doxygen plantuml graphviz pandoc texlive python3-pandocfilters pandoc-plantuml-filter texlive-latex-recommended texlive-latex-extra texlive-pictures
pip install pikepdf
```

```
pandoc -F pandoc-plantuml -N --toc -V lot --shift-heading-level-by=-1 -o mannual.pdf mannual.md
```

## References

- [google-styleguide](https://zh-google-styleguide.readthedocs.io/en/latest/)
- [Semantic Versioning](https://semver.org/)
- [cpp-project-template](https://github.com/MangaD/cpp-project-template)
- [cmake-modules](https://github.com/bilke/cmake-modules)
