---
layout:	post
title:	"Machine Learning"
date:	2019-07-25
---

  Regressão Linear Simples

![](https://s3.wasabisys.com/psrandom/img/p/medium/1*LNBwgdr4jybOgKuPrsUC1Q.jpg)O uso de Machine Learning vem crescendo cada vez mais. Sabendo que as técnicas de Machine Learning agregam o cômputo de métricas estatísticas em sua essência, este post vem mostrar a vocês um pouco sobre uma das técnicas bastante utilizadas atualmente:

**REGRESSÃO!**

Mas, o que é regressão?

Nada mais é que um modelo probabilístico que relaciona a variável aleatória (v.a.) X (denominada também como covariável ou variável independente) com a v.a. Y (denominada também de target ou variável dependente).

Há quatro tipos de regressão:

* Linear Simples;
* Não Linear Simples;
* Linear Múltipla; e
* Não Linear Múltipla.
Neste post vamos só focar na regressão linear simples (prometo fazer outros posts com as demais Lol).

Vou apresentar o passo a passo da implementação em Python e explicar cada função!

Caso queiram o código completo é só ir ao meu GitHub: **contaratoandressa** =).

Então vamos lá!

![](https://s3.wasabisys.com/psrandom/img/p/medium/1*JtwWli1as8FgkBLL-h577w.jpeg)Sabemos que um modelo de regressão linear é da forma:

![](https://s3.wasabisys.com/psrandom/img/p/medium/1*10doRzliQH9DjqdpH1Q4ng.jpg)Onde alpha é o coeficiente que representa o intercepto, ou seja, para nenhum contribuição da variável X o quanto Y vale?

E, beta é o coeficiente angular, ou seja, ela mostra a inclinação da reta de regressão linear. Exemplo: para um ponto a mais na variável X o quanto Y varia?

X é a variável explicativa, ou feature ou variável independente ou covariável! UFA! Ou seja, é a variável que tenda explicar um fenômeno. E, Y é a variável que queremos inferir sobre, também chamada de: variável dependente e target.

O primeiro passo para se construir o script em python para a análise de regressão linear simples é importar os pacotes.

# packagesimport numpy as np, pandas as pd, matplotlib.pyplot as plt, matplotlib as mpl, warnings, statsmodels.api as sm, statsmodels.formula.api as smffrom scipy.stats.stats import pearsonr# warnings mensageswarnings.filterwarnings("ignore")%matplotlib inlineOnde:

* numpy é um pacote para a manipulação de dados;
* pandas calcula várias métricas e mt usual para importação e exportação de dados;
* matplotlib serve para visualização de dados;
* warnings para mensagens de aviso;
* scipy calcula análises exploratórias como correlação, variância e covariância;
* statsmodels.api para implementação do modelo de regressão ( de forma mais geral e voltada para machine learning); e
* statsmodels.formula.api é um pacote mais parecido com o R, mais voltado para análises estatísticas específicas.
BASE DE DADOS

Importação da base de dados com uso do pandas

dependendo da extensão da base de dados, é só modificar a função abaixo.

# read datadata = pd.read\_csv(data.csv)Nesse próximo passo, vamos definir a variável Y e as demais covariáveis que podemos colocar como a nossa X para o modelo.

# defining features (or independent variables)data = pd.DataFrame(data)# defining target (or dependent variable)data['target'] = yANÁLISES EXPLORATÓRIAS

Entendendo a disposição dos dados com o comando head(), o n significa quantas linhas você uer ver do seu dataset.

data.head(n = 5)Para se entender se o problema é de regressão ou se é algo mais simples como ver a média da variável target para poder entender a disposição dela, calculamos a média dessa variável.

value\_mean\_targetApós isso, um procedimento usual é o de se calcular o SSE (SSE é a diferença entre os valores preditos e os observados, imaginando um scaterplot com os pontos plotados, a regressão dá uma reta chamada de reta de regressão. Tal reta passa pelos valores observados e tenta medir a distância da reta ajustada com os pontos preditos com a observada. Isso chamamos de erro ou resíduos (quando ajustada a regressão).) da variável target, nota-se que isso é apenas uma simulação ainda, pois a regressão ainda não foi criada.

SSE = pd.Series(value\_mean\_target - data['target'])**2 SSE2 = np.sum(SSE)print ('Soma dos Quadrados dos Erros: %01.f' % SSE2)Um procedimento também muito usual é a visualização de dados. Um dos gráficos mais usados para se ver a distribuição dos erros é o histograma.

hist\_SSE = SSE.plot('hist')Outras medidas para se analisar os dados podem ser usadas, tais como: variância (para se ter uma ideia da dispersão dos dados ou de viés também se tiver algum comportamento), desvio padrão (que nada mais é que a raiz quadrada da variância) e a correlação (para o caso de multicolinearidade, um problema muito comum em modelagem).

np.std(data['variable1'])pearsonr(data['variable1'], data['variable2'])[0]Um procedimento menos feito em estatística e mais executado em análises de machine learning é o cálculo da range das variáveis a serem modeladas:

# range of the variablesx = [data['variable1'].min(),data['variable1'].max()]y = [data['target'].min(),data['target'].max()]E, por fim, a plotagem dessas variáveis que serão utilizadas no modelo com suas respetivas médias, para se olhar se o problema não se trata de algo determinístico ou se é realmente aleatório para se calcular a regressão linear simples.

# plot x and y with the meanplot\_values = data.plot(kind = 'scatter', x = 'variable1', y = 'target', xlim = x, ylim = y)y\_mean = plot\_values.plot(x, [data['target'].mean(),data['target'].mean()], '--', color = 'red', linewidth = 1)x\_mean = scatterplot\_values.plot([data['variable1'].mean(), data['variable1'].mean()], y, '--', color =REGRESSÃO

Vamos comparar duas métricas:

* uma com o pacote mais estatístico; e
* outra com o pacote mais voltado para machine learning.
# StatsModels  
# generating X and YY = data['target']X = data['variable1']# add constant values into coeficients' XX = sm.add\_constant(X)# analysis descriptivesX.head(n=5)Estatístico

model1 = smf.ols(formula = 'target ~ variable1', data = data)model2 = model1.fit()model2.summary()Machine Learning

model1 = sm.OLS(Y, X)model2 = model1.fit()model2.summary()Quando olhamos com olhar de um estatístico, TODAS OS OUTPUTS SERVIRÃO DE ANÁLISE!!

Para quem está mais voltado a modelos de aprendizagem de máquina, a abordagem é mais superficial só se olha duas métricas.

Vou dizer caso a caso … vamos lá!

Não desanime, está terminando … hehehehe

![](https://s3.wasabisys.com/psrandom/img/p/medium/1*NDk4afq98_4kiMdkwknfng.jpeg)Para uma análise mais voltada para estatística:

* **Dep. Variable: variável dependente;**
* Model: tipo de modelo aplicado;
* Method: tipo de método para se calcular a reta de regressão;
* No. Observations: número de observações (muito bom para ponderar o modelo);
* Df Residuals: grau de liberdade da estatística calculada para ver se o modelo é bom ou não;
* Df Model: mesma ideia que a anterior;
* R\_Squared e Adj. R\_Squared: mede o ajuste do modelo, se bom ou ruim (varia entre 0 e 1 onde 1 é bom e 0 é ruim);
* F-statistic: verifica se o problema tratado foi resolvido realmente num modelo de regressão;
* Prob (F-statistic): é a probabilidade da estatística acima;
* AIC e BIC: são como escores para se comparar diversis tipos de modelo qual melhor se ajusta ao problema a ser resolvido; e
* Intercept e variables … : nesta segunda tabela de outputs do summary, é fornecido o valor dos coeficientes do modelo (alpha e beta) e se estes são releventes ou não (se não releventes, costuma-se retirar do modelo para não causar problemas como viés). A seleção ou exclusão de uma variável independente é por meio da relevância do coeficiente dela (beta). Costuma-se ser resolvido num problema de Teste de Hipóteses: H0: não se é significante o coeficiente da variável indepentende e H1: é significante.
UFA!

Muita coisa!

Agora vamos ver somente com o olhar de análise para Machine Learning?

* R\_Squared e Adj. R\_Squared: mede o ajuste do modelo, se bom ou ruim (varia entre 0 e 1 onde 1 é bom e 0 é ruim); e
* F-statistic: verifica se o problema tratado foi resolvido realmente num modelo de regressão.
Então é isso, gente!

Espero que tenham gostado!

Bjs!!!

  