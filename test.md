- [install](#install)
  - [archlinux install](#archlinux-install)
  - [cpp](#cpp)
  - [latex](#latex)
  - [linux命令行](#linux命令行)
    - [makefile](#makefile)

# install

## archlinux install

```shell
sudo pacman -S filezilla
sudo pacman -S docker
sudo pacman -S texlive-most
```

## cpp

```cpp
int main() {
     return 0 ;
}
```
## latex

```tex
\documentclass{beamer}

%<<<<<<< HEAD
\usepackage[most]{tcolorbox}
\usepackage{graphicx}
\usepackage{hyperref}
\usepackage{longtable}
\usepackage{amsfonts}
\usepackage{amsmath}
\usepackage{tikz}
\usetikzlibrary{calendar,mindmap,shadows,calc,intersections,through,backgrounds,shapes}

\DeclareMathAlphabet\EuRoman{U}{eur}{m}{n}
\SetMathAlphabet\EuRoman{bold}{U}{eur}{b}{n}
\newcommand{\erm}{\EuRoman}
\def\eumath#1{$\erm{#1}$}

% logic equivalent symbol
\newcommand{\deq}{\mathrel{\stackrel{\scriptscriptstyle\Delta}{=}}}

% format of comments in the text
\newcommand{\mycomment}[1]{\hspace{1.25cm}\colorbox{black!30}{{\scriptsize\rm#1}}}

% tuple
\def\tuple#1{\langle#1\rangle}
\def\tu#1{\langle#1\rangle}

\colorlet{setcolor}{yellow!90!white}
\def\A{{\erm{A}}}
\def\B{{\erm{B}}}
\def\C{{\erm{C}}}

\def\setA{A = \{1,2,4\}}
\def\setB{B = \{2,3,4,7\}}
\def\setC{C=\{4,5,7,10\}}
\def\mysets{\eumath{{\setA, \setB, \setC}}}

\begin{document}

\author{Adriano J. Holanda}
\def\course{Matemática Discreta}

%\input intro

%\input logica
%\input conjuntos
%\input relacoes

%\input inducao % rever, pois parece estar pesado para os alunos
%\input mdc

\end{document}
```

## linux命令行

### makefile

```makefile
filename=thesis
xelatex=xelatex
bibtex=bibtex
xelatex_flags=--shell-escape --file-line-error

pdf: 
	$(xelatex) $(xelatex_flats) $(filename)
	$(bibtex) $(filename)
	$(xelatex) $(xelatex_flats) $(filename)
	$(xelatex) $(xelatex_flats) $(filename)
	open $(filename).pdf

xelatex: ; $(xelatex) $(xelatex_flats) $(filename)

bibtex: ; $(bibtex) $(filename)

clean:
	rm -f *.aux
	rm -f *.log
	rm -f *.bbl
	rm -f *.blg
	rm -f *.out
	rm -f *.toc
	rm -f TSWLatexianTemp*
```