% See LICENSE file for copyright and license details.

\LoadClass[11pt,a4paper,sans]{article}

\RequirePackage{fontspec}
\RequirePackage[utf8]{inputenc}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage[none]{hyphenat}
\RequirePackage[
	left=15mm,
	right=15mm,
	top=12mm,
	bottom=0mm
]{geometry}

\RequirePackage[french,activeacute]{babel}
\RequirePackage{multicol}
\RequirePackage{titlesec}
\RequirePackage{enumitem}
\RequirePackage{graphicx}
\RequirePackage{tabularx}

\setmainfont [
	Path           = ../fonts/,
	UprightFont    = *-Regular.otf,
	ItalicFont     = *-It.otf,
	BoldFont       = *-Semibold.otf,
	BoldItalicFont = *-SemiboldIt.otf
]{SourceSansPro}

\setlength{\parindent}{0pt}
\setlength{\columnsep}{2em}
\setlength{\extrarowheight}{0.15cm}
\setlist[itemize]{leftmargin=0.4cm, label={--}, parsep=0pt}

\titleformat*{\section}{\LARGE}
\titleformat*{\subsection}{\centering}
\titleformat*{\subsubsection}{\footnotesize\bfseries}
\titlespacing\subsection{0pt}{0pt}{18pt}
\titlespacing\section{0pt}{0pt}{-\parskip}

\renewcommand{\baselinestretch}{1}
\renewcommand{\paragraph}[1]{{\scriptsize #1 \par}}
\newcommand{\job}[1]{\small #1 \par}
\newcommand{\address}[1]{
	\multicolumn{1}{r}{#1}
	\parbox[s]{0em}{\includegraphics[scale=0.19]{../images/map}} \\
}

\newcommand{\phone}[1]{
	\multicolumn{1}{r}{#1}
	\parbox[s]{0em}{\includegraphics[scale=0.024]{../images/phone}} \\
}

\newcommand{\email}[1]{
	\multicolumn{1}{r}{#1}
	\parbox[s]{0em}{\includegraphics[scale=0.36]{../images/mail}} \\
}

\newcommand{\link}[2]{{
	\scriptsize
	\vspace{0.5mm}
	\textit{\href{#1}{#2}}
}}
