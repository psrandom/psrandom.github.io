---
layout:	post
title:	"Web Scraping com uso do Power BI"
date:	2019-04-20
---

  ### Neste post, vamos fazer uso do Power BI na coleta de dados via Web.

![](https://s3.wasabisys.com/psrandom/img/p/medium/1*emo14cajDMB1Tro_SpO3gw.jpg)Dado o crescimento de *Business* *Inteligence* e a vasta possibilidade de dados que se tem disponível nas mais variadas plataformas, torna-se muito útil o conhecimento de práticas de coletas de dados.

Uma destas práticas que podemos destacar é a coleta de dados via web ou web scraping!

**Nota**: Não se é de qualquer site que se pode coletar os dados.

**Observação**: Não necessariamente dados abertos são confiáveis, CERTIFIQUE-SE A FONTE EM QUE ESTÁ COLETANDO ESTES DADOS.

Vamos imaginar o seguinte cenário: você quer avaliar dados do International Monetary Fund para se ter uma noção do cenário atual do seu país em termos financeiros.

O site é dado abaixo:

[**World Economic Outlook Database April 2019**  
*The World Economic Outlook (WEO) database contains selected macroeconomic data series from the statistical appendix of…*www.imf.org](https://www.imf.org/external/pubs/ft/weo/2019/01/weodata/index.aspx "https://www.imf.org/external/pubs/ft/weo/2019/01/weodata/index.aspx")[](https://www.imf.org/external/pubs/ft/weo/2019/01/weodata/index.aspx)Este é um site onde as estatísticas são abertas para uso!

O passo seguinte é: como você quer analisar o cenário do seu país frente aos demais, você clica em: [*By Countries (country-level data)*](https://www.imf.org/external/pubs/ft/weo/2019/01/weodata/weoselgr.aspx).

E, redirecionando para uma nova página de filtros, onde você pode até criar grupos de países, como seu intuito é analisar cada país e verificar o seu, você irá clicar em: [*All countries*](https://www.imf.org/external/pubs/ft/weo/2019/01/weodata/weoselco.aspx?g=2001&sg=All+countries).

Daí, o site irá te redirecionar para filtros de países que você queira incluir na análise e clicando em “*Continue*” irá redirecionar para as tabulações já existentes no site.

Vamos supor que você queira avaliar o cenário econômico do seu país, frente aos demais, de acordo com a seguinte tabulação: *Inflation, average consumer prices*.

Clicando em “*Prepare Report*” você terá uma tabela com as estatísticas da variável que você escolheu, no caso: *Inflation, average consumer prices.*

![](https://s3.wasabisys.com/psrandom/img/p/medium/1*UUKzfpoF6FVylX8veFU5Fg.jpg)Fonte: IMF.Agora, é a hora de se usar o Power BI para a coleta automática dos dados (sem precisar baixar e guardar os dados em algum local no computador, sendo uma tarefa mais dinâmica e eficiente)!

No Power BI, siga os seguintes passos:

1. Abra o Power BI;
2. Vá em Obter Dados;
3. Clique em Da Web;
4. Selecione toda a url da página acima;
5. Clique em OK.
![](https://s3.wasabisys.com/psrandom/img/p/medium/1*3kMshCcB11u7kWS7qWv0pg.jpg)Tela do Power BI ao selecionar o url.Aqui, nota-se que apareceu um “*Document*” e 3 *Table. *Isso significa que o Power BI consegui fazer a busca dos dados, mas ainda não entende a sua estrutura. Assim, você deverá ir na opção “Edição da Web” e, ao se abrir esta opção, o Power BI mostrará as tabelas (estrutura feita em html) que foram agregados os dados. Nesta parte você deverá identificar qual *Table *corresponde a tabela de dados*.*

Aqui neste exemplo é a *Table 1.*

Clicando nesta opção, temos:

![](https://s3.wasabisys.com/psrandom/img/p/medium/1*L7QK0jtcEjgOf0ByJ7BHJw.jpg)Coleta de dados via Web da fonte do IMF já inseridos no Power BI.E pronto! Está feita a sua coleta de dados! Agora basta usar!

  