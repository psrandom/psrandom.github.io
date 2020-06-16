---
layout:	post
title:	"O Mundo Marvel"
date:	2019-05-05
---

  ![](https://s3.wasabisys.com/psrandom/img/p/medium/1*jdmP3vlZcQKLfyoCA7oZdw.jpg)Análise de posts do Twitter sobre o filme Avengers: Endgame!

Depois de 11 anos e dos seus 21 filmes totalmente conectados, Avengers: Endgame veio para terminar com este ciclo de história desse mundo marvel.

Em seu primeiro dia, a Marvel arrecadou aproximadamente US$ 169 milhões (fonte abaixo) nas salas de cinema ao redor do mundo. Aqui no Brasil, a expectativa foi tamanha fazendo com que 80% das salas de cinema fossem ocupadas por este filme.

[**Bilheteria de Vingadores: Ultimato já faz história; veja os números**  
*Vingadores: Ultimato fez US$ 1,2 bilhão em bilheteria apenas nos primeiros dias de exibição nos cinemas (Foto…*epocanegocios.globo.com](https://epocanegocios.globo.com/Economia/noticia/2019/04/bilheteria-de-vingadores-ultimato-ja-faz-historia-veja-os-numeros.html "https://epocanegocios.globo.com/Economia/noticia/2019/04/bilheteria-de-vingadores-ultimato-ja-faz-historia-veja-os-numeros.html")[](https://epocanegocios.globo.com/Economia/noticia/2019/04/bilheteria-de-vingadores-ultimato-ja-faz-historia-veja-os-numeros.html)Apaixonada por este tema e analisando uma amostra (técnica de amostragem: a.a.s) relativamente pequena (comparado com o volume de dados neste período) mas representativa o suficiente para poder inferir sobre o discurso das pessoas nas redes sociais.

Foram coletados os dados de Twitter via API pública, no período de 2019–05–05 15:20:00 até 2019–05–05 15:31:00, exatas 1000 observações com a finalidade de ver o que as pessoas AINDA andam comentando sobre o sucesso do filme: Avengers: Endgame.

A primeira coisa que quis ver foi a evolução POR SEGUNDO das postagens!!! Sim! por segundo … graças ao volume de dados extraordinário!

Assim, fiz uma visualização usando o pacote Bokeh do Python e obtive o seguinte gráfico:

![](https://s3.wasabisys.com/psrandom/img/p/medium/1*PV0YKQAPlUj0hK1Xk4c7Tw.jpg)Fonte: Twitter.Gráfico 1: Evolução por segundo dos posts sobre Vingadores.

Podemos até discutir sobre uma possível sazonalidade na série. E, o mais interessante é ver este volume de menções que ainda são bem intensas depois de dias da estréia do filme.

Após isso, achei muito legal analisar as palavras mais usadas através de uma nuvem de palavras implementada em d3.js. Segue abaixo:

![](https://s3.wasabisys.com/psrandom/img/p/medium/1*mB75Hc41QCc4AXJ32KKmfQ.jpg)Fonte: Twitter.Figura 2: Palavras mais usadas nos posts referentes à Marvel.

E, as palavras mais utilizadas foram:

Vingadores: fazendo menção ao nome do último filme;  
Deus, Criatura, Ridícula: fazendo menção a frase do personagem Loki no filme “Os Vingadores”;  
Thanos: falando sobre o maior vilão.

A terceira e última visualização desses dados é a análise de grafo para se entender os clusters que são formados através dessa temática.

![](https://s3.wasabisys.com/psrandom/img/p/medium/1*NFGX7qabewynmNRpM717hw.jpg)Fonte: Twitter.Obs.: Os dados foram extraídos através do software RStudio!

Espero que gostem desse meu post! E até o próximo!! =)

  