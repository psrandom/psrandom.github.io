---
layout: splash
permalink: /about/
title: "About Us"
header:
  overlay_image: https://images.unsplash.com/photo-1489447068241-b3490214e879?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80
  caption: "Photo credit: [**Pedro Rodrigues**](https://www.pirpedro.com.br)"
excerpt: >-
      <div style="width:100%">
      <div>
         <h1>We write about <span class="typed" style="color:#800000"></span></h1>
      </div>
      </div>     
layouts_gallery:
  - url: https://s3.wasabisys.com/psrandom/img/page/unsplash-image-1.jpg
    image_path: https://s3.wasabisys.com/psrandom/img/page/unsplash-image-1.jpg
    alt: "splash layout example"
  - url: https://s3.wasabisys.com/psrandom/img/page/unsplash-image-2.jpg
    image_path: https://s3.wasabisys.com/psrandom/img/page/unsplash-image-2.jpg
    alt: "single layout with comments and related posts"
  - url: https://s3.wasabisys.com/psrandom/img/page/unsplash-image-3.jpg
    image_path: https://s3.wasabisys.com/psrandom/img/page/unsplash-image-3.jpg
    alt: "archive layout example"
last_modified_at: 2020-05-01T10:15:22-04:00
toc: true
footer_scripts: "/assets/js/typed.js"
script_snippet: | 
            (function(){
              $(".typed").typed({
                strings: ["Tech.","Food.","Places.","Data Science."],
                typeSpeed: 100,
                loop: true,
                backDelay: 1000
               });
            })();

lista:
  - name      : "Andressaaaaaa"
    avatar    : "https://s3.wasabisys.com/psrandom/img/a/andressa-contarato-gray-bio.jpg"
    bio       : >-   
                Mozi mozão.
    location  : "Rio de Janeiro, RJ"
    email     : &email "pir.pedro@gmail.com"
    links:
      - label: "Website"
        icon: "fas fa-fw fa-link"
        url:  "http://pirpedro.com.br"
      - label: "Facebook"
        icon: "fab fa-fw fa-facebook-square"
        url:  "https://facebook.com/andressa.contarato"
  - name             : &name "Chef Pedro"
    avatar           : "https://s3.wasabisys.com/psrandom/img/a/chef-pedro-bio.jpg"
    bio              : &description >-   
      Cozinheiro de final de semana, masterchef do povo a busca de sua estrela michelin.
    location         : "Rio de Janeiro, RJ"
    email            : &email "pir.pedro@gmail.com"
    signature        : >-
                Bom apetite 😋
    links:
      - label: "Website"
        icon: "fas fa-fw fa-link"
        url: &site "http://pirpedro.com.br"
      - label: "Twitter"
        icon: "fab fa-fw fa-twitter-square"
        url: !Join [&twitter_url "https://twitter.com/", &twitter "pir_pedro"]
      - label: "Facebook"
        icon: "fab fa-fw fa-facebook-square"
        url: !Join [&facebook_url "https://facebook.com/", &facebook "pirpedro"]
      - label: "GitHub"
        icon: "fab fa-fw fa-github"
        url: !Join [&github_url "https://github.com/", &github "pirpedro"]
      - label: "Instagram"
        icon: "fab fa-fw fa-instagram"
        url: !Join [&instagram_url "https://instagram.com/", &instagram "pirpedro"]
      - label: "Linkedin"
        icon: "fab fa-fw fa-linkedin"
        url: !Join [&linkedin_url "https://www.linkedin.com/in/", &linkedin "pirpedro"]

---

<!-- {% include gallery id="layouts_gallery" caption="Examples of included layouts `splash`, `single`, and `archive`." %} -->


<h2 class="subtitle">
  <span>{{ site.data.ui-text[site.locale].team | default: "Team" }}</span>
</h2>
{% include circles %}
