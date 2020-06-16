---
layout:	post
title:	"Listas no Python"
date:	2019-05-02
---

  Conceitos básicos sobre objetos do tipo lista no python.

![](https://s3.wasabisys.com/psrandom/img/p/medium/1*sf2mQcfk6MOZtPx1-oSdRA.jpg)Bom, hoje vou continuar o post sobre Python e mostrar um pouco sobre a utilidade das listas!

Se você não viu meu primeiro post, acesse o link abaixo:

[**Primeiros passos com Python — Part. 1**  
*Como se tornar um cientista de dados!*medium.com](https://medium.com/@andressacontarato_4052/primeiros-passos-com-python-part-1-2e5801470738 "https://medium.com/@andressacontarato_4052/primeiros-passos-com-python-part-1-2e5801470738")[](https://medium.com/@andressacontarato_4052/primeiros-passos-com-python-part-1-2e5801470738)A lista é uma das principais estruturas usada em Python.

Uma lista é como se fosse uma sequência de números ou palavras ou os dois.

Elas possuem uma propriedade muito importante que é de se poder alterar elementos dentro delas.

Vamos começar por um exemplo bem simples: uma lista vazia! Note que a estrutura dela é sempre começando e terminando com colchetes.

lista1 = []Agora, vamos criar uma lista através de strings.

nome1 = 'Olá!'  
nome2 = 'Tudo bem!'  
minha\_lista = ['Minha','Lista',nome1, nome2]Output: ['Minha','Lista','Olá!', 'Tudo bem!']Caso queira selecionar algum elemento da lista, você pode usar os seguintes comandos abaixo:

minha\_lista[1]Output:'Lista'E você pode também selecionar um intervalo de posições (os chamados slices):

minha\_lista[0:3]Output:['Minha','Lista','Olá!']Obs.: Em python, começa-se por zero as posições!

No exemplo acima, queremos pegar o elemento na posição zero até a posição 2, pois uma outra particularidade do python é contar a posição máxima menos 1.

Além disso, posso pegar uma quantidade de caracteres desejáveis dentro de um elemento dessa minha lista, são os chamados subsets lists of lists.

minha\_lista[0][0]Output: 'M'Com as listas dá para fazer também diversos tipos de operações, tais como:

minha\_lista + minha\_listaOutput: ['Minha','Lista','Olá!', 'Tudo bem!', 'Minha','Lista','Olá!', 'Tudo bem!']minha\_lista * 2Output: ['Minha','Lista','Olá!', 'Tudo bem!', 'Minha','Lista','Olá!', 'Tudo bem!']E, para ajudar a manipular os dados dentro da lita, temos também alguns métodos específicos da lista, tais como:

minha\_lista(a) # gera um índice de um itemminha\_lista.count(a) # conta quantas vezes a letra a aparece na listaminha\_lista.append('ontem') # adiciona um elemento a listaminha\_lista.remove('ontem') # remove um item da listadel(minha\_lista[0:2]) # remove um intervalo de elementos baseados na indexação delesminha\_lista.sort() # ordena a lista  
 Muitas são as utilidades de uma lista. Alguns exemplos são:

* com uma base de dados muito grande, pode-se fazer uma lista para ordenar;
* suponha uma base de dados de usuários de um determinado serviço, você pode criar uma lista para poder manipular melhor estes dados de usuários.
Nota: há formas de se usar o python online!!! Deixo aqui um link de um site para uso da linguagem python online e totalmente de graça!

[**Google Colaboratory**  
*Edit description*colab.research.google.com](https://colab.research.google.com/notebooks/welcome.ipynb "https://colab.research.google.com/notebooks/welcome.ipynb")[](https://colab.research.google.com/notebooks/welcome.ipynb)Espero que tenham gostado. Até o próximo post!

  