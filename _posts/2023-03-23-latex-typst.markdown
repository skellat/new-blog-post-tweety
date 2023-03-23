---
layout: post
title:  "Using Markdown In LaTeX Without Worry"
date:   2023-03-23 00:53:00 -0400
categories: blather
---
Consider the following source file that we'll call `passthrough.markdown`:

```
There is a project trying to build something like LaTeX but isn't LaTeX that can be found at: <https://github.com/typst/typst/>

It requires some review.
```

Then consider the following source file that we'll call `markdown-test.tex`:

```
% !TeX program = lualatex
% !TeX encoding = UTF-8

\documentclass[12pt,letterpaper]{extarticle}
\usepackage[english]{babel}
\usepackage{graphicx}
\usepackage{relsize}
\usepackage{markdown}
\usepackage{hyperref}
\usepackage{xurl}
\usepackage[autostyle, english = american]{csquotes}
\usepackage{fontspec}
\setmainfont{Domitian}
\setsansfont{Quattrocento Sans}
\setmonofont{IBM Plex Mono}

\usepackage{lastpage}

\MakeOuterQuote{"}
\usepackage{microtype}

\DeclareGraphicsExtensions{.pdf,.png,.jpg}

\author{}
\title{}
\date{}

\hypersetup{
    pdftitle={},    
    pdfauthor={},   
    pdfsubject={},  
    colorlinks=false,       
    pdfpagemode=UseOutlines,
    bookmarksopen=true,
    pdfkeywords={},
    allcolors={black},
    pdfstartview=FitH,
}

\begin{document}
\markdownInput{passthrough.markdown}
\end{document}
```
If you take those sources, make them proper local files, and then run them through the latest [TeX Live](https://tug.org/texlive/) you'll find that the Markdown file will get incorporated into the LaTeX source and still be processed thanks to the [markdown](https://ctan.org/pkg/markdown) package on CTAN currently maintained by Vít Novotný.  This is somewhat different from using [pandoc](https://pandoc.org).  Consider the following invocation of `pandoc` using the Markdown source from above:

```
pandoc --output contrast.tex --from markdown --to latex --standalone passthrough.markdown
```

That ends up giving you a `contrast.tex` that looks quite different than what I created above.  When I ran `pandoc` it generated:

```
% Options for packages loaded elsewhere
\PassOptionsToPackage{unicode}{hyperref}
\PassOptionsToPackage{hyphens}{url}
%
\documentclass[
]{article}
\usepackage{amsmath,amssymb}
\usepackage{iftex}
\ifPDFTeX
  \usepackage[T1]{fontenc}
  \usepackage[utf8]{inputenc}
  \usepackage{textcomp} % provide euro and other symbols
\else % if luatex or xetex
  \usepackage{unicode-math} % this also loads fontspec
  \defaultfontfeatures{Scale=MatchLowercase}
  \defaultfontfeatures[\rmfamily]{Ligatures=TeX,Scale=1}
\fi
\usepackage{lmodern}
\ifPDFTeX\else
  % xetex/luatex font selection
\fi
% Use upquote if available, for straight quotes in verbatim environments
\IfFileExists{upquote.sty}{\usepackage{upquote}}{}
\IfFileExists{microtype.sty}{% use microtype if available
  \usepackage[]{microtype}
  \UseMicrotypeSet[protrusion]{basicmath} % disable protrusion for tt fonts
}{}
\makeatletter
\@ifundefined{KOMAClassName}{% if non-KOMA class
  \IfFileExists{parskip.sty}{%
    \usepackage{parskip}
  }{% else
    \setlength{\parindent}{0pt}
    \setlength{\parskip}{6pt plus 2pt minus 1pt}}
}{% if KOMA class
  \KOMAoptions{parskip=half}}
\makeatother
\usepackage{xcolor}
\setlength{\emergencystretch}{3em} % prevent overfull lines
\providecommand{\tightlist}{%
  \setlength{\itemsep}{0pt}\setlength{\parskip}{0pt}}
\setcounter{secnumdepth}{-\maxdimen} % remove section numbering
\ifLuaTeX
  \usepackage{selnolig}  % disable illegal ligatures
\fi
\IfFileExists{bookmark.sty}{\usepackage{bookmark}}{\usepackage{hyperref}}
\IfFileExists{xurl.sty}{\usepackage{xurl}}{} % add URL line breaks if available
\urlstyle{same}
\hypersetup{
  hidelinks,
  pdfcreator={LaTeX via pandoc}}

\author{}
\date{}

\begin{document}

There is a project trying to build something like LaTeX but isn't LaTeX
that can be found at:

\begin{verbatim}
https://github.com/typst/typst/
\end{verbatim}

It requires some review.

\end{document}
```

In the second bit of LaTeX, the link isn't turned into something that would generate a hyperlink.  In the first the `markdown` package reads the link in the incorporated-by-reference source and will turn it into a hyperlink if you compile the LaTeX source.  That's not a difference you would expect.

Why worry about this?  I haven't fiddled with [typst](https://typst.app) yet.  I just wonder how flexible it may be as well as how consistent.

Besides, CTAN has an entire category devoted to [parsing alternative markup formats](https://ctan.org/topic/markup) which is why I have trouble understanding the need for something like typst.  Much of what it apparently does is seemingly already implemented.  Was the point to that [they implemented their product in Rust](https://github.com/typst/typst) in contrast to the unique language LaTeX is written in?

Yeah, I can write technical posts from time to time.  I have MacTex 2023 installed on my MacBook Pro M1 now.  I enjoy making good-looking documents using *proper* tools.
