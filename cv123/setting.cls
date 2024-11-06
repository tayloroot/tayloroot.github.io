%%%% 参考了https://www.wondercv.com/的模板
\ProvidesClass{setting}
\LoadClass[11pt]{article}

% disable indent globally
\setlength{\parindent}{0pt}


% disable indent globally
\setlength{\parindent}{0pt}

% use xcolor for customizing color
\RequirePackage{xcolor}
%%%% IC Blue
\definecolor{ICBlue}{RGB}{0,62,116}

% use hyperlink for email and url
\usepackage{hyperref}
\usepackage{url}
\usepackage{ulem} % 添加下划线
\hypersetup{
    colorlinks=true,
    %pdfborder={0 0 0}, % 设置边框颜色为黑色，宽度为0
    linkcolor=ICBlue,
    urlcolor=ICBlue,
    citecolor=ICBlue,
}

\urlstyle{tt}

%%%% 利用tikz来定位照片和学校Logo
\usepackage{graphicx}
\usepackage{tikz}
\usetikzlibrary{calc}

% some general improvements, defines the XeTeX logo
\RequirePackage{xltxtra}
% use xifthen
\RequirePackage{xifthen}
% use fontawesome
\RequirePackage{fontawesome}

\RequirePackage[super]{nth}

%%% \widthof[]{} 用于特殊对齐
\usepackage{calc}


% loading fonts
\usepackage{fontspec}
\usepackage{xeCJK}
\CJKsetecglue{} %% 取消中文与数字之间间隙

% Main document font
\setmainfont[
    Path = Font/,
  Extension = .otf ,
  BoldFont = HelveticaNeueLTPro-Md.otf ,
]{HelveticaNeueLTPro-Roman.otf}

\setCJKmainfont[
Path = Font/,
  Extension = .ttf ,
BoldFont=Pro_GB18030DemiBold.ttf,
]{Pro_GB18030.ttf}


\usepackage{relsize}
\usepackage{xspace}

\usepackage[
	a4paper,
	left=1.2cm,
	right=1.2cm,
	top=1cm,
	bottom=0.9cm,
	nohead
]{geometry}
\renewcommand{\baselinestretch}{1.06} %定义行间距1.2

\usepackage{titlesec}
\usepackage{enumitem}
\setlist{noitemsep} % removes spacing from items but leaves space around the whole list
% \setlist{nosep} % removes all vertical spacing within and around the list
\setlist[itemize]{topsep=0.25em, leftmargin=*}
\setlist[enumerate]{topsep=0.25em, leftmargin=*}

\titleformat{\section}         % Customise the \section command 
  {\large\bfseries\raggedright} % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
  [{\color{ICBlue}\titlerule}]                 % Inserts a horizontal line after the heading
\titlespacing*{\section}{0cm}{*1.6}{*1.2}

\titleformat{\subsection}
  {\large\raggedright}
  {}{0em}
  {}
\titlespacing*{\subsection}{0cm}{*1}{*0.5}

\newcommand{\logosection}[2]{%
    \vspace{-1ex}
    \section{\makebox[\widthof{\faGraduationCap}][c]{\color{ICBlue}#1}\  #2}
    %\vspace{-0.1ex}
}


\newcommand{\dateRange}[2]{
    {#1 -- \makebox[\widthof{#1}][s]{#2}}
}

\usepackage{pifont}
\newcommand{\datedline}[2]{%
  {\par \ding{70} \ \textbf{#1} \hfill #2 \par}%  % 在左侧插入符号
}


\newcommand{\name}[1]{
  \raggedright{\LARGE\bfseries{#1}}\\
  \vspace{1ex}
}

\newcommand{\otherInfo}[1]{
  \raggedright{{#1}}\\
  \vspace{0.5ex}
}

\newcommand{\contactInfo}[4]{
    \raggedright{
        \normalsize{
            \faPhone\ {#1} \quad 
            \faEnvelopeO\ \href{mailto:{#2}}{#2} \quad 
            \faLink\  \href{#3}{#4}
        }
    }
    \vspace{0.5ex}
}

\newcommand{\basicContactInfo}[2]{
    \centerline{
        \normalsize{
            \faPhone\ {#1} \quad 
            \faEnvelopeO\ \href{mailto:{#2}}{#2}
        }
    }
    \vspace{0.5ex}
}

\newcommand{\role}[2]{
  {\par \textit{#1} ~ #2 \par}
  \vspace{0.5ex}
}

\newcommand{\biInfo}[2]{
    {#1 \quad #2}
}

\newcommand{\tripleInfo}[3]{
    {#1 \quad #2 \quad #3}
}