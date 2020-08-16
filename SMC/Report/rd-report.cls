\ProvidesClass{rd-report}[06/12/2019 Report format]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

%% INCLUDING PACKAGES
\usepackage{fullpage}
\usepackage{setspace}
\usepackage{graphicx}
\graphicspath{Figures/}
\usepackage{amsmath}
\usepackage{float}
\usepackage{natbib}
\usepackage{ragged2e}
\usepackage{titlesec}   % modify section headers
\usepackage{fancyhdr}   % headers
\usepackage{xcolor}     % colours
\usepackage{colortbl}   % table colours
\usepackage{amsfonts}

%% DECLARING MATH OPERATORS
\DeclareMathOperator{\rank}{rank}
\DeclareMathOperator{\var}{\mathbb Var}
\DeclareMathOperator{\E}{\mathbb E}

%% SET SPACING
\setlength{\parskip}{1em} % 1 full line between paragraphs
\setlength{\parindent}{0em} % no indent at start of paragraph

%% FORMAT TITLE PAGE
% define subtitle
\newcommand*{\subtitle}[1]{\def\@subtitle{#1}}
% format the title page
\renewcommand{\maketitle}{%
\begin{titlepage}

\fontfamily{phv}\selectfont
\vspace*{9em}
\begin{center}
{\LARGE\bfseries\scshape\@title}

\vspace*{4em}
{\Large\scshape\@subtitle}

\vspace*{4em}
{\large\scshape\@author}
\end{center}

\vspace*{\fill}
\begin{flushright}
{\large\scshape\@date}
\end{flushright}

\end{titlepage}
}

%% FORMAT HEADER & FOOTER
\pagestyle{fancy}
\fancyhf{}

% header
\renewcommand{\headrulewidth}{0pt} % header line thickness
% \fancyhead[C]{\bfseries\scshape\@title}

% footer
\renewcommand{\footrulewidth}{0pt} % footer line thickness
\fancyfoot[c]{\bfseries\thepage}

%% FORMAT SECTION HEADINGS
% section header
\titleformat{\section}
    {\fontfamily{phv}\selectfont\Large\scshape}
    {\Large\thesection}
    {1em}
    {}
    
% subsection header
\titleformat{\subsection}
    {\fontfamily{phv}\selectfont\large\scshape}
    {\large\thesubsection}
    {1em}
    {}
    
%% TABLE FORMATTING
\definecolor{lightgray}{gray}{0.85}