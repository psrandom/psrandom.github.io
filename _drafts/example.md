---
title:  "Example"
date:   2020-05-30 10:32:42 -0300
#categories: howto
excerpt: "My new content"
header:
  overlay_image: https://s3.wasabisys.com/psrandom/img/post/default/header_jekyll_github.jpg
  overlay_filter: 0.8
  actions:
    - label: "Jekyll"
      url: "https://jekyllrb.com/"
    - label: "Docker"
      url: "https://www.docker.com/"
    - label: "Github"
      url: "https://www.github.com/"
  teaser: https://s3.wasabisys.com/psrandom/img/post/default/header_jekyll_github.jpg
tags: "jekyll github docker devops"
toc: true
author: "Andressa Contarato"
#classes: wide

tabs:
  - title: Windows
    content: |
          1. Item 1
          2. Item foca amestrada
          3. item bosta de cavalo
  - title: Mac
    content: | 
        First Header | Second Header
        ------------ | -------------
        Content from cell 1 | Content from cell 2
        Content in the first column | Content in the second column
        Content from cell 1 | Content from cell 2
        Content in the first column | Content in the second column
        Content from cell 1 | Content from cell 2
        Content in the first column | Content in the second column
  - title: Linux
    content: |
      ```python
      def most_frequent(list):
          return max(set(list), key = list.count)
        

      numbers = [1,2,1,2,3,2,1,4,2]
      most_frequent(numbers)  
      ```
tldr: |
    Jekyll is a simple, blog-aware, static site generator that we can deploy for free in github. In this post we use docker to automate and make deployment easier. deployment. 
    First `fork` my github project [pirpedro.github.io](https://github.com/pirpedro/pirpedro.github.io), change the project name in settings to `<your_github_username>.github.io` and clone project.
accordion:
  - title: "A great accordion item title"
    content: | 
      Conteúdo do accordion 1

      ahjchcjkhvmrvhlanvhlhcnhrrhcjfkancfkafvnahvrlknv
      ahcnryaygtaygxyutgnrycugyucgeyuecgbye
  - title: "Another title"
    content: | 
      Conteúdo do accordion 2
      
      ahjchcjkhvmrvhlanvhlhcnhrrhcjfkancfkafvnahvrlknv
      ahcnryaygtaygxyutgnrycugyucgeyuecgbye
faq:
  - title: "Question?"
    content: | 
      Resposta 1

      ahjchcjkhvmrvhlanvhlhcnhrrhcjfkancfkafvnahvrlknv
      ahcnryaygtaygxyutgnrycugyucgeyuecgbye
  - title: "Question 2?"
    content: | 
      Resposta 2
      
      ahjchcjkhvmrvhlanvhlhcnhrrhcjfkancfkafvnahvrlknv
      ahcnryaygtaygxyutgnrycugyucgeyuecgbye
---

# HEADER 1 Example

## Header 2 Example

### Header 3 Example

#### Header 4 Example

##### Header 5 example

###### Header 6 example

## TABS

{% include tabs %}

## Accordion

{% include accordion %}
{% include accordion id="faq" %} 


## Emphasis

Texto com conteúdo em *itálico* e também uma parte em **bold** ou podemos colocar os dois ***juntos*** dessa forma escrota.

## Lists

## Unordered list
- Item  lorem ipsum  lorem ipsum  lorem ipsum  lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum  lorem ipsum lorem ipsum lorem ipsumv lorem ipsum lorem ipsum lorem ipsum
- Item  lorem ipsum  lorem ipsum  lorem ipsum  lorem ipsum lorem ipsu
- Item  lorem ipsum  lorem ipsum  lorem ipsum  lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum  lorem ipsum lorem ipsum lorem ipsumv lorem ipsum lorem ipsum lorem ipsum
- Item  lorem ipsum  lorem ipsum  lorem ipsum  lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum  lorem ipsum lorem ipsum lorem ipsumv lorem ipsum lorem ipsum lorem ipsum

## Ordered list
1. Item 1
2. Item foca amestrada
3. item bosta de cavalo

## Tasklist
- [x] marcado
- [ ] não marcado
- [x] marcado 

## Others

### Math

$$
\begin{aligned}
  & \phi(x,y) = \phi \left(\sum_{i=1}^n x_ie_i, \sum_{j=1}^n y_je_j \right)
  = \sum_{i=1}^n \sum_{j=1}^n x_i y_j \phi(e_i, e_j) = \\
  & (x_1, \ldots, x_n) \left( \begin{array}{ccc}
      \phi(e_1, e_1) & \cdots & \phi(e_1, e_n) \\
      \vdots & \ddots & \vdots \\
      \phi(e_n, e_1) & \cdots & \phi(e_n, e_n)
    \end{array} \right)
  \left( \begin{array}{c}
      y_1 \\
      \vdots \\
      y_n
    \end{array} \right)
\end{aligned}
$$


### table

First Header | Second Header
------------ | -------------
Content from cell 1 | Content from cell 2
Content in the first column | Content in the second column
Content from cell 1 | Content from cell 2
Content in the first column | Content in the second column
Content from cell 1 | Content from cell 2
Content in the first column | Content in the second column

## Images /links / blockquotes
![GitHub Logo](https://s3.wasabisys.com/psrandom/img/post/default/305x165.jpeg){: .center}

Um simples texto com link para uam [outra página](http://pirpedro.com.br).

> Um bloquinho de conteúdo com múltiplas linhas
> ficaria mais ou menos assim

```python
def most_frequent(list):
    return max(set(list), key = list.count)
  

numbers = [1,2,1,2,3,2,1,4,2]
most_frequent(numbers)  
```

## Embed
 
### Youtube
  {% include embed provider="youtube" src="QILiHiTD3uc" %}
### Vimeo
   {% include embed provider="vimeo" src="66140585" %}

### Dailymotion
  {% include embed provider="dailymotion" src="xsr67x" %}

### Google Maps
  {% include embed src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d387144.0075834208!2d-73.97800349999999!3d40.7056308!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew+York%2C+NY!5e0!3m2!1sen!2sus!4v1394298866288" %}

### Getty
  {% include embed src="//embed.gettyimages.com/embed/137668307?et=0kKQE3OQU06k6Y-tD9FdZA&sig=MuEspy0rbDdvg7lpUAk77Pwaha2oc1_tUWsZTdH6IHE=" %}

### Infogram
  {% include embed provider="infogram" src="covid-19-1hd12y0w9qrw6km" %}


  Text after