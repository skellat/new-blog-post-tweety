---
layout: post
title:  "Talking LaTeX"
date:   2022-11-10 10:44:00 -0500
categories: blather
---
Now is the point where we nerd out in LaTeX.

I've been working on throwing together something using packages such as [newspaper](https://ctan.org/pkg/newspaper), [geometry](https://ctan.org/pkg/geometry) and [markdown](https://ctan.org/pkg/markdown).  The source looks like this:

```latex
\documentclass{article}     % Since this is not a report or book we use the article class
\usepackage[english]{babel} % Multilingual handling that a later package hooks into
\usepackage{newspaper}      % The newspaper package sets things up
\usepackage[T1]{fontenc}    % This is the legacy bit for using Type 1 fonts.
%\usepackage{stix}         % A serif font.  This provides a "Times" that mirrors what New York Times uses.
\usepackage{tgpagella}      % Use a font closer to what is seen in my copy of Common English Bible
\usepackage{graphicx}       % Graphics handling package
\usepackage{xcolor}         % Package to allow for use of easier color names 
\usepackage{multicol}       % Multi-column handling
\usepackage{markdown}       % Markdown interpreter 

                            % Handle quotes smartly in any imported Markdown text
                            % This needs babel loaded above

\usepackage[autostyle, english = american]{csquotes}
\MakeOuterQuote{"}
%\usepackage[usetikz=false,highlight=false]{soup}
\usepackage{hyperref}       % Hypertext support that also allows for control of some PDF metadata
\usepackage{xurl}           % Easier breaking of URLs

                         % The hypersetup stanza is the regular metadata
                         % you would find if you pull up the document 
                         % properties in your PDF reader
                         %
                         % I have put placeholder values there.
                         %
                         % Set allcolors to something other than black
                         % if you are not making a print-first product.
                         % colorlinks is set to true so you don't have
                         % boxed links in your PDF that look odd.
			 % 
			 % That whole stanza goes away perhaps in TeX Live 2022 

\usepackage[bible]{blindtext} % Generate gibberish to make this example look okay

% If this were a conventional broadasheet then these dimensions would be used:
% \usepackage[paperheight=14in,paperwidth=11in,top=.3in,bottom=.3in,right=.3in,left=.3in]{geometry}
% If this were printed like North Coast Voice, these dimensions would be used:
%\usepackage[paperheight=9.89in,paperwidth=9.89in,top=.3in,bottom=.3in,right=.3in,left=.3in]{geometry}
% If this were printed like The Christian Chronicle, these dimensions would be used:
%\usepackage[paperheight=10.29in,paperwidth=9.5in,top=.3in,bottom=.3in,right=.3in,left=.3in]{geometry}
% If this were printed like Reader's Digest and I were thoroughly comfortable mixing metric and imperial:
%\usepackage[paperheight=21cm,paperwidth=14cm,top=.3in,bottom=.3in,right=.3in,left=.3in]{geometry}
% If this were the same size as the Samoa News we would see these dimensions
%\usepackage[paperheight=17in,paperwidth=11in,top=.3in,bottom=.3in,right=.3in,left=.3in]{geometry}
% Welcome to Dog River!  This is going on legal-sized paper as it is only a single leaf.
%\usepackage[paperheight=14in,paperwidth=8.5in,top=.3in,bottom=.3in,right=.3in,left=.3in]{geometry}
% In the realm of samizdat the use of letter-sized paper seems optimal too especially if it is cardstock
\usepackage[paperheight=11in,paperwidth=8.5in,top=.41in,bottom=.41in,right=.41in,left=.41in]{geometry}


\hypersetup{
pdftitle={Tatler},
pdfauthor={Erie Looking Productions},
pdfsubject={News},
colorlinks=true,
pdfpagemode=UseOutlines,
bookmarksopen=true,
pdfkeywords={News},
pdfpagelayout=OneColumn,
allcolors={black},               
pdfduplex=DuplexFlipLongEdge,
pdfstartview=FitH,
}

\SetPaperName{The Tatler}              % Name your newspaper but keep it short
\SetHeaderName{The Tatler}             % Running header of your paper's name
\SetPaperLocation{Edgewood} % Ashtabula?  Cleveland?  Short place name here
\SetPaperSlogan{Excelsior!}    % Keep it short
\SetPaperPrice{FREE}             % You can charge but that is your choice
\date{\today}                    % Unless you have a late edition you will have a different date
\currentvolume{1}                % No negative numbers
\currentissue{1}                 % No negative numbers

\begin{document}
\maketitle                       % This makes the banner at the top of the front page

%\begin{multicols}{2} % Do two columns if you do this Reader's Digest sized
            % This creates a three column environment for stories to appear.
                                 % The star in this example means that the columns do not balance
                                 % which results in the example stories appearing in one column.
%\begin{multicols}{3}

\headline{\sc\Large This Issue's Team}  % Headline a story without a byline
%\markdownInput{bofh.txt}
%This is our opening edition.  % Story text goes here 
% Grab story text from an external file using \markdownInput perhaps?
\begin{description}
\item[Editor] Theresa Hensley
\item[Publisher] Mathilda Waters
\item[Reporter] Clara Duffy
\item[Reporter] Bertie Barrett
\item[Reporter] Verna Bates
\end{description}   
\closearticle

\headline{\sc\Large A Quote}
\markdownInput{bofh.txt}
\closearticle

\headline{\sc\Large Community Calendar}
\begin{description}
\item[July 9th] Blah
\item[July 18th] Blah
\item[July 25th] Blah
\item[August 4th] Offices Closed  
\end{description}
\closearticle

\headline{\sc\Large Story A}
\Blindtext[1][1]
\closearticle

\headline{\sc\Large Story B}
\Blindtext[1][1]
\closearticle

\headline{\sc\Large Story C}
\Blindtext[1][1]
\closearticle

\headline{\sc\Large Story D}
\Blindtext[1][1]
\closearticle

\headline{\sc\Large Story E}
\Blindtext[1][1]
\closearticle

\headline{\sc\Large Story F}
\Blindtext[1][1]
\closearticle

\headline{\sc\Large Weather Chart}
\includegraphics*[width=\textwidth]{testimage1.jpg}
\closearticle

%\headline{\sc\Large Story G}
%\Blindtext[1][1]
%\closearticle

%\headline{\sc\Large Story H}
%\Blindtext[1][1]
%\closearticle

%\headline{\sc\Large Story I}
%\Blindtext[1][1]
%\closearticle

%\headline{\sc\Large Story J}
%\Blindtext[1][1]
%\closearticle

%\headline{\sc\Large Story K}
%\Blindtext[1][1]
%\closearticle

%\headline{\sc\Large Story L}
%\Blindtext[1][1]
%\closearticle

\byline{\sc\Large The Last Word}{The Editor}
Somehow we made this work?
\closearticle

%\end{multicols}

\end{document}
```

I've been tracking development of this project in the git repository found at <https://code.launchpad.net/~skellat/+git/auto-newspaper>.  There is some narrative also stashed in the repository tracking my thoughts as development has progressed.  Yes, the code above is not the neatest and needs cleaning up.  Currently it is a mashing up of ideas as to how one would make a penny press style of shopper in our current times when newspapers are not exactly in the best of health.  A quick neighborhood newsletter on a single leaf of paper that could be produced on a laser printer would go a long way to imrpoving social cohesion.  The markdown component would allow for taking items e-mailed to you and slapping them in pretty easily without having to massage them too hard into an appropriate format.

This is by no means completed.  It is a work in progress.  A big part of the idea for a single leaf newspaper came from watching [*Corner Gas*](https://en.wikipedia.org/w/index.php?title=Corner_Gas&oldid=1118823207) and seeing the in-show newspaper known as the *Tatler*.  If I produce anything I would have higher standards of quality, mind you.  I'm also inspired by [the *samizdat* edition of *Zvezda*](https://web.archive.org/web/20220521012308/https://www.rferl.org/a/russia-press-freedom-day-samizdat-perm-zvezda/31832108.html) over in the Russian Federation.
