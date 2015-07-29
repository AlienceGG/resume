%----------------------------------------------------------------------------------------
%	CLASS OPTIONS AND REQUIRED PACKAGES
%----------------------------------------------------------------------------------------

\ProvidesClass{rukh-cv}[2015/07/23 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

\usepackage[left=0.25cm, right=1.25cm, vmargin=0.75cm]{geometry} % Specifies horizontal and vertical page margins
\usepackage{hyperref} % Required for links

%----------------------------------------------------------------------------------------
%	COLORS
%----------------------------------------------------------------------------------------

\usepackage[usenames,dvipsnames]{xcolor} % Required for custom colors

\definecolor{primary}{HTML}{2b2b2b} % The primary document color for content text
\definecolor{headings}{HTML}{555555} % The color of the large sections
\definecolor{subheadings}{HTML}{333333} % The color of subsections and places worked/studied

%----------------------------------------------------------------------------------------
%	FONTS
%----------------------------------------------------------------------------------------

\usepackage{fontspec} % Required for specifying custom fonts in XeLaTeX

\setmainfont[Color=primary, Path=fonts/heros/, BoldItalicFont=texgyreheros-bolditalic, BoldFont=texgyreheros-bold, ItalicFont=texgyreheros-italic]{texgyreheros-regular} % The primary font for content text; defines bold, italic and bold-italic as well
\newfontfamily\primaryfont[Color=primary, Path=fonts/heros/, BoldItalicFont=texgyreheros-bolditalic, BoldFont=texgyreheros-bold, ItalicFont=texgyreheros-italic]{texgyreheros-regular}
\newfontfamily\headingfont[Color=headings, Path=fonts/lato/]{Lato-Bol}
\newfontfamily\subheadingfont[Path=fonts/lato/]{Lato-Bol}
\newfontfamily\descriptfont[Path=fonts/lato/]{Lato-Reg}
\newfontfamily\locationfont[Path=fonts/lato/]{Lato-Reg}

%----------------------------------------------------------------------------------------
%	NAME FIELD
%----------------------------------------------------------------------------------------

\newcommand{\namesection}[2]{ % Defines the command for the main heading
\begin{flushright}
\vspace{5pt}
\fontsize{20pt}{24pt} % Font size
\headingfont #1 % First name font
\headingfont #2 % Last name font
\end{flushright}
}

\newcommand{\infosection}[2]{
\begin{flushright}
\primaryfont\ #1 \\ \bigskip
\primaryfont\ #2
\end{flushright}
}

%----------------------------------------------------------------------------------------
%	SECTION TITLE STYLING AND SPACING
%----------------------------------------------------------------------------------------

\usepackage{titlesec} % Required for customizing section/subsection/etc titles

\titlespacing{\section}{0pt}{0pt}{2pt} % Removes the spacing around the main section titles
\newcommand{\sectionspace}{\vspace{8pt}} % Defines a command to add a set amount of space after sections and subsections

\titleformat{\section}{ % Customize the large section titles
\color{headings}\fontsize{16pt}{24pt}\headingfont}{}{0em}{}

\newcommand{\runsubsection}[1]{ % Used for creating subsections where a description is required on the same line
\color{subheadings}\fontsize{12pt}{12pt}\subheadingfont\bfseries{#1}\normalfont}

\newcommand{\descript}[1]{ % Used for describing the subsection either on the same line or underneath
\color{subheadings}\fontsize{11pt}{13pt}\descriptfont{#1 \\[1pt]}\normalfont}

\newcommand{\location}[1]{ % Used for specifying a duration and/or location under a subsection
\color{headings}\fontsize{10pt}{12pt}\locationfont{#1}\normalfont}

%----------------------------------------------------------------------------------------
%	SECTION TITLE STYLING AND SPACING
%----------------------------------------------------------------------------------------

\newenvironment{tightitemize} % Defines the tightitemize environment which modifies the itemize environment to be more compact
{\vspace{-5pt minus \topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}
