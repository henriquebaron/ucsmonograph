%	Class desenvolvida por Henrique Baron em 14/07/2018.
%	
%	Formata um documento da classe abnTeX2 para o padrão exigido pela Universidade de Caxias do Sul para
%	trabalhos de conclusão de curso.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{abntexucs}[2018/07/14 v1.0.0 abnTeXUCS]
\LoadClass[12pt,openright,oneside,a4paper,
chapter=TITLE,section=TITLE,
english,brazil]{abntex2}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Verificação do compilador utilizado
\RequirePackage{ifluatex}
\ifluatex
	% Se o documento está sendo compilado com LuaLaTeX, altera-se a fonte do modo matemático para ser igual à fonte do texto, e não ser em itálico.
	\usepackage[math-style=upright]{unicode-math}
\fi

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Inclusão e configuração de pacotes

% Código necessário para evitar conflito no pacote substr pelo uso dele por ambos os pacotes abntex2cite e glossaries
\let\su@ExpandTwoArgs\relax 
\let\IfSubStringInString\relax 
\let\su@IfSubStringInString\relax

\RequirePackage{caption}

\PassOptionsToPackage{top=3cm,left=3cm,bottom=2cm,right=2cm}{geometry}
\RequirePackage{geometry} % Redefine e corrige as margens da página
\flushbottom % Garante que o LaTeX utilize a margem inferior e faça o conteúdo se estender até ela

\PassOptionsToPackage{record,toc=false,nonumberlist,style=long,acronyms,symbols}{glossaries-extra}
\RequirePackage{glossaries-extra} % Criação da lista de símbolos
\setabbreviationstyle[acronym]{long-short} % Define o estilo de exibição (no texto) das siglas em português
\setabbreviationstyle[foreignabbreviation]{long-short-user} % Define o estilo de exibição (no texto) das siglas em outros idiomas.

\RequirePackage{etoolbox} % Recursos de programação para LaTeX

\RequirePackage{indentfirst} % Indenta o primeiro parágrafo de cada seção, o que não é o padrão do LaTeX.

\PassOptionsToPackage{absolute}{textpos}
\RequirePackage{textpos} % Para a criação de quadros com posição absolua (para a capa e folha de rosto)

\RequirePackage{calc}

\RequirePackage{amsmath}
\allowdisplaybreaks % Permite quebras de página em displays, como conjuntos de equações.

\RequirePackage{xparse} % Permite a criação de comandos com mais de um parâmetro opcional.

\RequirePackage{graphicx} % Inserção de imagens

\RequirePackage{float} % Posicionamento de caixas flutuantes com a opção "h" (Here)

\RequirePackage{adjustbox} % Utilizado na inserção de imagens, permite a criação de caixas ajustáveis.
\newlength\larguraimagem % Cria uma nova medida a ser utilizada no comando \incluirimagem deste pacote.

\RequirePackage{chngcntr} % Alteração dos parâmetros de contadores de equações, figuras etc.
\counterwithout{equation}{chapter} % Contagem das equações contínua ao longo do documento

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Criação da Lista de Quadros, não definida pela classe abntex2

% Criação das macros para os nomes
\newcommand{\quadroname}{Quadro}
\newcommand{\listquadroname}{Lista de quadros}

\newfloat{quadro}{\quadroname}{toq}[chapter] % Declara o ambiente tipo float para  quadro
\restylefloat*{quadro} % Redefine o estilo e configura que não é o package float o responsável pela sua formatação
\setfloatadjustment{quadro}{\centering} % Define posicionamento horizontal dos quadros
\setfloatlocations{quadro}{hbtp} % Posicionamento vertical padrão dos quadros

\newlistof{listofquadros}{toq}{\listquadroname} % Declara a lista de quadros e cria o arquivo .TOQ
\newlistentry{quadro}{toq}{0} % Define que floats tipo quadro serão incluídos no arquivo .TOQ

\renewcommand{\cftquadroname}{\quadroname\space} % Exibição "Quadro " nas linhas da Lista de Quadros
\renewcommand*{\cftquadroaftersnum}{\hfill\textendash\hfill} % Separador após o número do quadro na Lista de Quadros

\renewcommand{\fnum@quadro}{\quadroname\ \thequadro} % Exibição do quadro nas legendas, no corpo do trabalho

\counterwithout{quadro}{chapter} % Numeração dos quadros não é redefinida a cada capítulo

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Configuração das medidas padrão utilizadas no documento
\setlength{\parindent}{1.5cm} % Define o recuo (indentação) da primeira linha do parágrafo.
\setlength{\parskip}{0pt plus 2pt} % Define o espaçamento entre parágrafos.

% Correção do espaçamento após títulos de capítulos
\setlength\afterchapskip{1.5\onelineskip plus 2pt minus 2pt}

% Ajuste do espaçamento para ilustrações
\captionsetup{skip=6pt} % Espaço abaixo do título da figura/quadro/tabela
\setlength\textfloatsep{14pt plus 4pt minus 2pt} % Espaço entre a ilustração e o texto, acima ou abaixo

% Ajuste do espaçamento antes, depois e entre equações
\AtBeginDocument{\setlength\abovedisplayskip{14pt plus 4pt minus 2pt}}
\AtBeginDocument{\setlength\belowdisplayskip{14pt plus 4pt minus 2pt}}
\setlength\jot{10pt plus 4pt minus 2pt} % Espaço entre equações dos ambientes do pacote amsmath

\setlength{\glsdescwidth}{\linewidth} % Ajusta a largura da tabela interna da lista de símbolos

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Modificações de comandos específicos da classe abnTeX2 para adequar ao padrão da UCS

% Redefinição do estilo abntheadings, que coloca no cabeçalho das páginas o nome do capítulo/seção e uma linha horizontal, além do número de página. O padrão da UCS pede somente o número de página.
\makepagestyle{abntheadings}
\makeevenhead{abntheadings}{\ABNTEXfontereduzida\thepage}{}{}
\makeoddhead{abntheadings}{}{}{\ABNTEXfontereduzida\thepage}

% Nomes de elementos pré-textuais que precisam ser alterados
\addto\captionsbrazil{
	\renewcommand{\listfigurename}{Lista de figuras}
	\renewcommand{\listadesimbolosname}{Lista de símbolos}
}

% Redefinição de fontes e tamanhos para os capítulos e seções, NO TEXTO
\renewcommand{\ABNTEXchapterfont}{\bfseries}
\renewcommand{\ABNTEXchapterfontsize}{\normalsize}

\renewcommand{\ABNTEXsectionfont}{\ABNTEXchapterfont\mdseries}
\renewcommand{\ABNTEXsectionfontsize}{\normalsize}

\renewcommand{\ABNTEXsubsectionfont}{\ABNTEXsectionfont\bfseries}
\renewcommand{\ABNTEXsubsectionfontsize}{\normalsize}

\renewcommand{\ABNTEXsubsubsectionfont}{\ABNTEXsubsectionfont\mdseries}
\renewcommand{\ABNTEXsubsubsectionfontsize}{\normalsize}

\renewcommand{\ABNTEXsubsubsubsectionfont}{\ABNTEXsubsubsectionfont\itshape}
\renewcommand{\ABNTEXsubsubsubsectionfontsize}{\normalsize}

% Redefinição de fontes e tamanhos para os capítulos e seções, NO SUMÁRIO. Como o guia da UCS solicita que a apresentação dos títulos seja idêntica no sumário e no texto, as fontes declaradas acima são utilizadas, o que não é o padrão da classe abnTeX2.
\renewcommand{\cftchapterfont}{\ABNTEXchapterfont}
\renewcommand{\cftsectionfont}{\ABNTEXsectionfont}
\renewcommand{\cftsubsectionfont}{\ABNTEXsubsectionfont}
\renewcommand{\cftsubsubsectionfont}{\ABNTEXsubsubsectionfont}
\renewcommand{\cftparagraphfont}{\ABNTEXsubsubsubsectionfont}

% Redefinição do comando que monta a capa, para adequar ao padrão solicitado pela UCS
\renewcommand{\imprimircapa}{%
	\pdfbookmark[0]{Capa}{Capa}%
	\begin{capa}%
		% Para colocar em letra maiúscula as informações de autor, título e data, é preciso utilizar o comando nativo do LaTeX - e não os comandos do abnTeX2, porque eles apenas encapsulam comandos nativos do LaTeX, o que faz com que a expansão adiantada pelo \expandafter não funcione.
		\centering%
		\expandafter\uppercase\expandafter{\imprimirinstituicao}%
		\vfill
		% Nome em uma caixa de texto, posicionada da seguinte maneira:
		% largura: largura A4 - margens = 210-30-20 = 160mm
		% posição horizontal: começo da margem esquerda = 30mm
		% posição vertical: altura A4/4 + margem superior / 2 = 294mm/4 + 15mm
		\begin{textblock*}{160mm}(30mm, 297mm/4+15mm)%
			\expandafter\uppercase\expandafter{\theauthor}%
		\end{textblock*}%
		% Título em uma caixa de texto, posicionada no centro vertical da folha (297mm/2)
		\begin{textblock*}{160mm}(30mm, 297mm/2)%
			\expandafter\uppercase\expandafter{\thetitle}%
		\end{textblock*}%
		\vfill
		\expandafter\uppercase\expandafter{\imprimirlocal}\\
		\expandafter\uppercase\expandafter{\thedate}%
	\end{capa}%
}

% Redefinição do comando que gera o conteúdo da folha de rosto, para adequar ao padrão solicitado pela UCS
\renewcommand{\folhaderostocontent}{%
	\centering%
	\expandafter\uppercase\expandafter{\theauthor}%
	\vfill
	\vfill
	% Título em uma caixa de texto, posicionada no centro vertical da folha (297mm/2)
	\begin{textblock*}{160mm}(30mm, 297mm/2)%
		\expandafter\uppercase\expandafter{\thetitle}%
	\end{textblock*}%
	\vspace{10mm}
	\abntex@ifnotempty{\imprimirpreambulo}{%
		\hspace{.45\textwidth}%
		\begin{minipage}{.5\textwidth}%
			\mdseries%
			\SingleSpacing%
			\imprimirpreambulo%
			\begin{flushright}%
				\imprimirorientadorRotulo~\imprimirorientador%
			\end{flushright}%
		\end{minipage}%
	}%
	\vfill
	\expandafter\uppercase\expandafter{\imprimirlocal}\\
	\expandafter\uppercase\expandafter{\thedate}%
}


% Redefinição de comandos do pacote glossaries-extra

% \glsxtruserparen{text}{label} - Define o conteúdo entre os parênteses quando a key "user1" estiver preenchida.
\renewcommand{\glsxtruserparen}[2]{%
	\glsxtrfullsep{#2}%
	\glsxtrparen
	{#1\ifglshasfield{\glsxtruserfield}{#2}{, \emph{\glscurrentfieldvalue}}{}}%
}

% \glsuserdescription{text}{label} - Define o texto longo (descrição) que será exibido na lista de símbolos/siglas 
\renewcommand{\glsuserdescription}[2]{%
	\ifglshasfield{\glsxtruserfield}{#2}{\emph{\glscurrentfieldvalue}}{#1}%
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Outros comandos %%%

% Faz com que os nomes das seções no sumário sejam escritos em letra maiúscula.
\let\oldcontentsline\contentsline
\def\contentsline#1#2{%
	\expandafter\ifx\csname l@#1\endcsname\l@section
	\expandafter\@firstoftwo
	\else
	\expandafter\@secondoftwo
	\fi
	{%
		\oldcontentsline{#1}{\MakeTextUppercase{#2}}%
	}{%
		\oldcontentsline{#1}{#2}%
	}%
}

% Extensão do comanando \foreignlanguage para destacar o conteúdo em língua estrangeira
\let\@foreignlanguageaux\foreignlanguage 
\renewcommand{\foreignlanguage}[2]{\@foreignlanguageaux{#1}{\emph{#2}}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Comandos e ambientes específicos deste pacote

% Imprimir a folha de aprovação segundo os requisitos da UCS
% PARÂMETROS, NA ORDEM:
% 1 - Instituição do convidado externo (opcional). VALOR PADRÃO: Universidade de Caxias do Sul - UCS
% 2 - Data de aprovação, na forma dd/mm/aaaa
% 3 - Nome do primeiro professor da banca (sem ser o orientador)
% 4 - Nome do segundo professor da banca (sem ser o orientador)
% 5 - Nome do professor/convidado externo
\newcommand{\imprimirfolhadeaprovacaoUCS}[5][Universidade de Caxias do Sul - UCS]{%
	\begin{folhadeaprovacao}%
		\begin{center}%
			\bfseries %
			\ABNTEXchapterfont %
			\expandafter\uppercase\expandafter{\theauthor} %
			\vspace{1.5cm} \par
			\expandafter\uppercase\expandafter{\thetitle} %
			\vspace{0.5cm}
		\end{center}
		
		\abntex@ifnotempty{\imprimirpreambulo}{%
			\hspace{.45\textwidth} %
			\begin{minipage}{.5\textwidth}%
				\mdseries%
				\SingleSpacing%
				\imprimirpreambulo%
				\begin{flushright}%
					\imprimirorientadorRotulo~\imprimirorientador%
				\end{flushright}%
			\end{minipage}%
		}
		\vspace{24pt} \par %
		\hspace{.45\textwidth}%
		\begin{minipage}{.5\textwidth}%
			\bfseries%
			Aprovado(a) em #2 %
		\end{minipage}%
		\vspace{3cm} \par %		
		\noindent\textbf{Banca Examinadora} %
		\begin{SingleSpace} %
			\vspace*{\ABNTEXsignskip}%
			\noindent%
			\rule{\ABNTEXsignwidth}{\ABNTEXsignthickness}\\
			Prof. \imprimirorientador\\
			Universidade de Caxias do Sul - UCS \par
			\vspace*{\ABNTEXsignskip}%
			\noindent%
			\rule{\ABNTEXsignwidth}{\ABNTEXsignthickness}\\
			Prof. #3\\
			Universidade de Caxias do Sul - UCS \par
			\vspace*{\ABNTEXsignskip}
			\noindent
			\rule{\ABNTEXsignwidth}{\ABNTEXsignthickness}\\
			Prof. #4\\
			Universidade de Caxias do Sul - UCS \par
			\vspace*{\ABNTEXsignskip}
			\noindent %
			\rule{\ABNTEXsignwidth}{\ABNTEXsignthickness}\\
			#5\\
			#1 %
		\end{SingleSpace} %
	\end{folhadeaprovacao} %
}

% Inserção de uma figura com descrição e fonte, atendendo aos requisitos de formatação
% PARÂMETROS, NA ORDEM:
% 1, opcional - Escala da imagem, padrão = 1
% 2 - Caminho para o arquivo de imagem
% 3 - Título da figura
% 4 - Fonte e ano da figura (texto que fica abaixo)
\newcommand{\incluirimagem}[4][1]{%
	\caption{#3}%
	\adjustimage{scale=#1,fbox=1.5pt {\fboxsep} 1pt,gstore width=\larguraimagem,center}{#2} \par %
	\centering%
	\begin{minipage}[h]{\larguraimagem-14pt}%
		\raggedright\footnotesize Fonte: #4 %
	\end{minipage}
}

% Inclusão do arquivo para a lista de siglas
\newcommand{\incluirsiglas}[1]{%
\GlsXtrLoadResources[%
	src  = {#1},
	sort = {pt-BR},
	type = {acronym},
	entry-type-aliases={% make @foreignabbreviation act like @abbreviation
		foreignabbreviation=abbreviation},
	field-aliases={%
		foreignlong=user1,
		nativelong=long},
	category={same as original entry}% requires bib2gls v1.4+
	]
}

% Inclusão do arquivo para a lista de símbolos
\newcommand{\incluirsimbolos}[1]{%
	\GlsXtrLoadResources[%
	src = {#1},
	sort = {use},
	type = {symbols}
	]%
}