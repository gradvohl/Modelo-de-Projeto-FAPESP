%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% In English:
%  This is a LaTeX class for São Paulo Research Foudation (FAPESP)
%  Project.
%  For information about FAPESP, visit the site 
%  http://www.fapesp.br/en
%
%  Disclaimer:
%     Although the author of this class has projects funded by 
%     FAPESP throughout his career, the research agency did not 
%     support the construction of this code, nor it recognizes as  
%     an official template. This class is just assistance in text 
%     formatting of projects for submission to a funding agency. 
%     Feel free to use it at your own risk.
%
%  This class targets mainly on projects written in Portuguese.
%
% In Portuguese:
%  Este é um modelo LaTeX para o projeto da Fundação de Amparo à 
%  Pesquisa do Estado de São Paulo (FAPESP).
%  Para mais informações sobre a FAPESP, visite o site 
%  http://www.fapesp.br
%
%  Aviso Legal:
%     Embora o autor desta classe tenha projetos financiados pela  
%     FAPESP ao longo de sua carreira, a agência de pesquisa não   
%     apoiou a construção desse modelo, nem o reconhece como modelo
%     oficial. Este modelo é apenas uma ajuda na formatação de texto
%     de projetos para envio a uma agência de financiamento. Sinta-se 
%     livre para usá-lo por sua conta e risco.
%
%  Este modelo tem como alvo principalmente projetos escritos em 
%  português.
%
% Author/Autor: André Leon Sampaio Gradvohl, Dr.
% Email:        gradvohl@ft.unicamp.br
% Lattes CV:    http://lattes.cnpq.br/9343261628675642
% ORCID:        https://orcid.org/0000-0002-6520-9740
% FAPESP:       https://bv.fapesp.br/en/pesquisador/102636
% 
% Last update/Última versão: 27/Oct/2019
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{projetoFAPESP}[Classe para modelo de projeto para FAPESP]
%
\def\projectlanguage#1{\gdef\@projectlanguage{#1}}
\DeclareOption{Ingles}{
  \projectlanguage{0}
  \typeout{projetoFAPESP: ingles.}
}
\DeclareOption{Portugues}{
  \projectlanguage{1}
  \typeout{projetoFAPESP: portugues.}
}
%
\ProcessOptions\relax
%
% Classe base: Relatório
\LoadClass[12pt,a4paper]{report}
%
%% Adição de pacotes
% Pacotes padrão para as línguas usadas no texto.
\RequirePackage[english,portuguese]{babel}
\RequirePackage{fancyhdr}
% Pacotes para determinar o tipo de fonte usada para imprimir o texto.
\RequirePackage[ttscale=.875]{libertine}
\RequirePackage{libertinust1math}
\RequirePackage[T1]{fontenc}
% Pacotes para determinar o tipo de fonte usada para escrever o texto.
\RequirePackage[utf8]{inputenc}
% Pacotes para facilitar a inclusão das figuras.
\RequirePackage{graphicx}
% Estabelece o diretório padrão para as figura.s
\graphicspath{{./figuras/}}
% Estabelece as extensões das figuras, na ordem em que devem ser buscadas.
% Prefira o formato .png, depois .pdf e finalmente .jpg.
\DeclareGraphicsExtensions{.png,.pdf,.jpg}
% Passe as opções do pacote xcolor para o pacote table.
\PassOptionsToPackage{table}{xcolor}
% Pacotes para incluir os hiperlinks no texto.
\RequirePackage{hyperref}
\RequirePackage{pdfpages}
% Pacote para evitar indentação em alguns parágrafos.
% Pacote para um espaçamento de palavras mais "inteligente".
\RequirePackage{xspace}
% Pacote para definir os espaçamentos entre linhas.
\RequirePackage{setspace}
% Espaçamento entre linhas de 1,5
\linespread{1.25}
% Pacote para definir as dimensões das margens.
\RequirePackage{geometry}
% Definição das margens, de acordo com a FAPESP. 
% Detalhes em http://www.fapesp.br/10408
\geometry{a4paper,top=30mm,bottom=20mm,left=30mm,right=15mm}
% Pacote para definição das aspas, especialmente na bibliografia, quando necessário.
\RequirePackage{csquotes}
% Pacotes para adicionar a bibliografia no formato ABNT.
% Pode ser que gere uma advertência na compilação. Se isso acontecer, ignore.
% Coloque a opção uniquename=false, se não quiser que o Biblatex faça a desambiguação de nomes.
\RequirePackage[style=abnt,uniquename=init,giveninits,uniquelist=true,maxbibnames=4,repeatfields=true,justify]{biblatex}
% Pacote para tabelas esteticamente mais interessantes.
\RequirePackage{booktabs}
%
%% Definição de alguns comandos e contadores.
% 
\newcommand{\HRule}[1]{\rule{\linewidth}{#1}}
\setcounter{tocdepth}{3}
\setcounter{secnumdepth}{3}
%
\newcommand{\titulo}[1]{\def\meuTitulo{#1}}
\newcommand{\tituloIngles}[1]{\def\meuTituloIngles{#1}}
\newcommand{\modalidadeProjeto}[1]{\def\modProjeto{#1}} 
\newcommand{\agFomento}[2]{\def\agFom{#1}% Agência de fomento 
                           \def\siglaAgFom{#2} %Sigla da Agência de fomento
                          }
\newcommand{\autor}[2]{\def\nomeAutor{#1} % Nome do autor do projeto
                       \def\tituloAutor{#2} % Título do autor do projeto
                      }
\newcommand{\cidade}[1]{\def\nomeCidade{#1}}
\newcommand{\universidade}[1]{\def\nomeUniversidade{#1}}
\newcommand{\faculdade}[1]{\def\nomeFaculdade{#1}}
\newcommand{\beneficiario}[1]{\def\nomeBeneficiario{#1}}
\newcommand{\inicioPeriodoVigencia}[3]{
                \def\inicioPeriodVigDia{#1} % Dia de início do período de vigência
                \def\inicioPeriodVigMes{#2} % Mês de início do período de vigência
                \def\inicioPeriodVigAno{#3} % Ano de início do período de vigência
            }
%
\newcommand{\fimPeriodoVigencia}[3]{
                \def\fimPeriodVigDia{#1} % Dia de fim do período de vigência
                \def\fimPeriodVigMes{#2} % Mês de fim do período de vigência
                \def\fimPeriodVigAno{#3} % Ano de fim do período de vigência
}
%
% Definição de palavras chaves em português
\newcommand{\palavraschaves}[1]{
    \noindent
    \textbf{Palavas-chaves:} #1.
}
%
% Definição de palavras chaves em inglês
\newcommand{\keywords}[1]{
    \noindent
    \textbf{Keywords:} #1.
}
%
\author{\nomeAutor}
\date{}
%
% Definição de membros da equipe de pesquisas
% Assim como no autor, deve-se definir nome e título de cada membro.
\newcommand{\membroA}[2]{\def\nomeMembroA{#1}\def\tituloMembroA{#2}}
\newcommand{\membroB}[2]{\def\nomeMembroB{#1}\def\tituloMembroB{#2}}
\newcommand{\membroC}[2]{\def\nomeMembroC{#1}\def\tituloMembroC{#2}}
\newcommand{\membroD}[2]{\def\nomeMembroD{#1}\def\tituloMembroD{#2}}
\newcommand{\membroE}[2]{\def\nomeMembroE{#1}\def\tituloMembroE{#2}}
\newcommand{\membroF}[2]{\def\nomeMembroF{#1}\def\tituloMembroF{#2}}
%
% Capa do projeto.
\newcommand{\geraTitulo}{
\clearpage
\begin{titlepage}
  \begin{center}
    \vspace*{\fill}

    \Large \textbf{\textsc{\meuTitulo}}
 	\HRule{1.5pt} \\ [0.5cm]
    \linespread{1}
    \large Projeto de Pequisa
    \ifdefined\modProjeto
        na modalidade \modProjeto,
    \fi
       submetido à \agFom
       \ifx\siglaAgFom\empty\relax\else
          \xspace(\siglaAgFom)\xspace
       \fi. \\ 
   	\HRule{1.5pt} \\ [0.5cm]
    Pesquisador Responsável: \nomeAutor, \tituloAutor
       
    \ifdefined\nomeBeneficiario
          Beneficiário: \nomeBeneficiario
    \fi
    \vfill
       
    {\normalsize  \nomeCidade, \today}
 \end{center}
 \end{titlepage}
}
%
% Definição do formato do título.
\RequirePackage{titlesec}
\titleformat{\chapter}{\normalfont\LARGE\bfseries}{\thechapter}{1em}{}
\titlespacing*{\chapter}{0pt}{3.5ex plus 1ex minus .2ex}{2.3ex plus .2ex}
%
%% Definição de Cabeçalhos e rodapés
\pagestyle{fancy}
\fancyhf{} % Limpa todos os campos de header and footer fields
\renewcommand{\headrulewidth}{0pt}
\fancyfoot[R]{\thepage}
%
% Adição das palavras específicas no Portugês para sumário e referências bibliográficas.
\addto\captionsportuguese{\renewcommand{\contentsname}{Sumário}}
\addto\captionsportuguese{\renewcommand{\bibname}{Referências Bibliográficas}}
% 
% Definição do comando de seção de prefácio.
\def\prefacesection#1{
  \chapter*{#1}
  \addcontentsline{toc}{chapter}{#1}
  \pagestyle{empty}
  \thispagestyle{empty}
}
%
% Definição do comando de redefinição de língua.
\gdef\resetlang{
  \ifcase\@projectlanguage\relax
  \selectlanguage{english}
  \or\selectlanguage{portuguese}
  \fi
}
%
% Definição da seção de resumo.
\newenvironment{resumo}
    { \prefacesection{Resumo} 
      \selectlanguage{portuguese}
    }
    { \resetlang 
    }
%
% Definição da seção de abstract.
\renewenvironment{abstract}
    { \prefacesection{Abstract}%
      \selectlanguage{english}%
    }
    { \resetlang 
    }
%
% Definição do comando para Folha de rosto em português
\newcommand{\folhaDeRosto}{
   \chapter*{Informações Gerais do Projeto}
   \addcontentsline{toc}{chapter}{Informações Gerais do Projeto}
   \begin{itemize}
      \item Título do projeto: 
            \begin{itemize}\item[] \textbf{\meuTitulo} \end{itemize}
      \item Pesquisador responsável: 
            \begin{itemize}\item[]\textbf{\nomeAutor, \tituloAutor}
            \end{itemize}
            
      \ifdefined\nomeBeneficiario
          \item Beneficiário: 
              \begin{itemize}
                 \item[]\textbf{\nomeBeneficiario}
              \end{itemize}
      \fi
      
      \item Instituição sede do projeto: 
            \begin{itemize}
               \item[]\textbf{\nomeFaculdade\xspace da\xspace \nomeUniversidade} 
            \end{itemize}
      \ifdefined\nomeMembroA    
       \item Equipe de pesquisa:
             \begin{itemize}
             \ifdefined\nomeBeneficiario
                  \item[]\textbf{\nomeBeneficiario}
              \fi
             \item[]\textbf{\nomeMembroA, \tituloMembroA}
             \ifx\nomeMembroB\undefined\else \item[]\textbf{\nomeMembroB,  \tituloMembroB}\fi
             \ifx\nomeMembroC\undefined\else \item[]\textbf{\nomeMembroC,  \tituloMembroC}\fi
             \ifx\nomeMembroD\undefined\else \item[]\textbf{\nomeMembroD,  \tituloMembroD}\fi
             \ifx\nomeMembroE\undefined\else \item[]\textbf{\nomeMembroE,  \tituloMembroE}\fi
             \ifx\nomeMembroF\undefined\else \item[]\textbf{\nomeMembroF,  \tituloMembroF}\fi
             \end{itemize}
       \fi
       \item Período de vigência proposto:
            \begin{itemize}
               \item[]\textbf{
                   \inicioPeriodVigDia\xspace de\xspace
                   \ifcase \inicioPeriodVigMes \or janeiro\or fevereiro\or março\or abril\or maio\or junho\or julho\or agosto\or setembro\or outubro\or novembro\or dezembro\fi\xspace de\xspace
                   \inicioPeriodVigAno\xspace a\xspace
                   \fimPeriodVigDia\xspace de\xspace
                   \ifcase \fimPeriodVigMes \or janeiro\or fevereiro\or março\or abril\or maio\or       junho\or julho\or agosto\or setembro\or outubro\or novembro\or dezembro\fi\xspace de\xspace 
                   \fimPeriodVigAno
               }
            \end{itemize}
   \end{itemize}
   \clearpage
}
%
% Definição do comando para Folha de rosto em inglês
 \newcommand{\folhaDeRostoIngles}{
   \chapter*{General Information about the Project}
   \addcontentsline{toc}{chapter}{General Information about the Project}
   \begin{itemize}
       \item Title: 
         \begin{itemize}
            \item[]\textbf{\meuTituloIngles} 
         \end{itemize}
      \item Researcher in charge: 
            \begin{itemize}\item[]\textbf{\nomeAutor, \tituloAutor}\end{itemize}
      \ifdefined\nomeBeneficiario
          \item Beneficiary: 
              \begin{itemize}
                 \item[]\textbf{\nomeBeneficiario}
              \end{itemize}
      \fi
      \item Host institution: 
            \begin{itemize}
              \item[]\textbf{\nomeFaculdade\xspace at the\xspace \nomeUniversidade} 
            \end{itemize}
      \ifdefined\nomeMembroA
      \item Research team:
             \begin{itemize}
             \ifdefined\nomeBeneficiario
                  \item[]\textbf{\nomeBeneficiario}
              \fi
              \item[]\textbf{\nomeMembroA, \tituloMembroA}
              \ifx\nomeMembroB\undefined\else \item[]\textbf{\nomeMembroB,  \tituloMembroB}\fi
              \ifx\nomeMembroC\undefined\else \item[]\textbf{\nomeMembroC,  \tituloMembroC}\fi
              \ifx\nomeMembroD\undefined\else \item[]\textbf{\nomeMembroD,  \tituloMembroD}\fi
              \ifx\nomeMembroE\undefined\else \item[]\textbf{\nomeMembroE,  \tituloMembroE}\fi
              \ifx\nomeMembroF\undefined\else \item[]\textbf{\nomeMembroF,  \tituloMembroF}\fi
              \end{itemize}
      \fi
      \item Project proposed term:
            \begin{itemize}
              \item[]\textbf{\inicioPeriodVigDia\xspace
                   \ifcase \inicioPeriodVigMes \or January\or February\or March\or April\or May\or June\or July\or August\or September\or October\or November\or December\fi\xspace
                   \inicioPeriodVigAno\xspace to\xspace
                   \fimPeriodVigDia\xspace 
                   \ifcase \fimPeriodVigMes \or January\or February\or March\or April\or May\or June\or July\or August\or September\or October\or November\or December\fi\xspace
                   \fimPeriodVigAno
               }
            \end{itemize}
   \end{itemize}
   \clearpage
}