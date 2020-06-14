---
title:  "Build your personal site with Jekyll, Docker and Github"
date:   2020-05-30 10:32:42 -0300
categories: howto
excerpt: ""
header:
  overlay_image: https://s3.wasabisys.com/psrandom/img/p/jekyll-github-docker-header-overlay.jpg
  overlay_filter: 0.8
  actions:
    - label: "Jekyll"
      url: "https://jekyllrb.com/"
    - label: "Docker"
      url: "https://www.docker.com/"
    - label: "Github"
      url: "https://www.github.com/"
  teaser: https://s3.wasabisys.com/psrandom/img/p/jekyll-github-docker-header-teaser.jpg
tldr: | 
    Jekyll is a simple, blog-aware, static site generator that we can deploy for free in github. In this post we use docker to automate and make deployment easier. deployment. 

    First `fork` my github project [psrandom.github.io](https://github.com/psrandom/psrandom.github.io), change the project name in settings to `<your_github_username>.github.io` and clone project.

    ```bash
    git clone git@github.com:/<your_github_username>/<your_github_username>.github.io.git
    ```

    Edit `_config.yml` and change my personal data to yours then execute this commands in your `terminal`

    ```bash
    chmod -R +x script/*
    rm -rf _recipes _projects
    rm _posts/*
    script/compose up
    ``` 

    See your site running in `http://localhost:4000` then `git push origin master`. Now your site is also available at `<your_github_username>.github.io` url.
    To learning how to create posts feel free to check mines in [_posts](https://github.com/psrandom/psrandom.github.io/tree/master/_posts).
tags: "jekyll github docker devops"
toc: true
---

For this first post, nothing seems fair to me than talking about how I build this site 😜. 

As young people, we always think that we can keep all information inside our mind in a organized way and that is a waste of time to write those things.

But...time passes and we started to value the exchange and sharing of information. That was my motivation to create this blog `(of course the curiosity to know how jekyll works and the dev skill points earned helped a lot 😆)`.

First I did a research of what kind of framework I would use to build the site and I realized that a traditional content manager like wordpress and django that have lots of heavy plugins (a sledgehammer to crack a nut) or those web builder like Wix and Weebly doesn't fit what I want. 

So why I choose `jekyll`?

- [x] I wanted something that allowed me to write posts or edit configurations **offline** too. Then easily deploy changes when goes online.
- [x] A **full customizable engine** but without tons of plugins, javascripts and stylesheets.
- [x] Posts are easy to write because you all most only need to know **markdown** syntax.
- [x] Althought customizable, it is a **static site**, i.e, all content is precompiled and you don't have the overhead of queryng database in runtime to build the interface.
- [x] As a static site, a **page load time** is much better than in other tools.
- [x] You can deploy your site directly in github thanks to `Github Pages`. 
    
    There are other options like [netlify](https://www.netlify.com/).
    {: .notice--info}
- [x] You can run **locally** to test before production deployment.


## Getting started

After that decision I choose `docker` to build the environment (install ruby, node, all project dependencies and run the development server). Docker is a container-based solution to isolate your project configuration from your machine.

For further information read the installation [tutorial](https://docs.docker.com/engine/install/).
{: .notice--info}

I presume that you already understand a little about how Docker works to proceed.

### Creating your Jekyll project 

Create a new directory, (as an example `my_blog` in the `home` folder) then to create a project you are going to execute a single command in your `terminal`. `docker run` will download (if not cached) the jekyll image from [Docker Hub](https://hub.docker.com/) repository, execute `jekyll new` inside the container to create a clean jekyll project than `--rm` removes the container created.


```terminal
mkdir ~/my_blog && cd ~/my_blog
docker run --rm -v "$PWD":/srv/jekyll jekyll/jekyll:4.0 jekyll new .
```

The output will be a tree structure like that
```terminal
├── 404.html
├── about.markdown
├── _config.yml
├── Gemfile
├── index.markdown
├── _posts/
|  └── 2020-05-30-welcome-to-jekyll.markdown
```
The files in `_posts` folder have the current date as prefix. So **2020-05-30** is the day when I created this project example.
{: .notice--info}

Edit `Gemfile` and change this code snippet to include `github-pages` gem. Also remove or comment `gem "jekyll"` and `gem "minima"` lines.
```ruby
group :jekyll_plugins do
  gem "jekyll-feed", "~> 0.12"
  gem "github-pages"
end
```

### Launching your local site

Run docker again and notice what happened. `jekyll build ` created `_site` folder the static content compiled. Besides that `bundle exec jekyll serve -H 0.0.0.0 -t` launchs your local server ans thanks to `-p 4000:4000` you can see that your site is already running in `http://localhost:4000`.
```terminal
docker run --rm -v "$PWD":/srv/jekyll -p 4000:4000 jekyll/jekyll:4.0 sh -c "jekyll build && bundle exec jekyll serve -H 0.0.0.0 -t"
```
During build time, jekyll execute a `bundle install`, so it create the `Gemfile.lock` to freeze all gem versions and avoid unintentionally updates.
{: .notice--info}

## Using github.io domain

`Github Pages` is the github service that hosts content directily from your repository. For that you need to follow some name conventions.
First of all, log in your github account and create a empty github repository with `<username>.github.io`. Start git in `my_blog` directory, point to the remote repository, commit your current changes and push the new content to the remote server.
```terminal
git init
git remote add origin git@github.com:<username>/<username>.github.io.git
echo ""
git commit -a -m "First amazing blog commit."
git push -u origin master
```
Test your new site running at `http://<username>.github.io`. 🍷
In your remote repository settins you can **Enforce HTTPS**.
{: notice--info}

**Pro Tip:** Github Pages doesn't allow to customize your build command, so if you need something different than `jekyll build` during build time you can try other solutions like including a CI service (Travis CI is a good option) or deploy your site in another place as [netlify](https://www.netlify.com/).
{: .notice--info}

**Pro Tip:** Read my post about [how to use a custom domain in GitHub Pages]({% post_url 2020-05-31-using-a-custom-domain-for-your-github-page %}).
{: .notice--info}


## Configuring Docker-Compose

With [docker-compose](https://docs.docker.com/compose/) you use a **YAML** file to configure and run multi-container Docker applications, but in our case we are goingo to run only one.
Let's create a `docker-compose.yml` file to make a clean configuration for our development server.
```yaml
version: '3'

services:
  web:
    image: jekyll/jekyll:4.0 
    command: sh -c 'bundle update && bundle exec jekyll build && bundle exec jekyll serve -H 0.0.0.0 -t'
    volumes:
      - .:/srv/jekyll
    ports:
      - 4000:4000
```
And in your terminal
```terminal
docker-compose up
```

### Dockerfile
Now let's create a `Dockerfile` file in your project root to separate build and server contexts. This away you don't need to install everything all the time.
```docker
FROM jekyll/jekyll:4.0
WORKDIR /srv/jekyll
COPY Gemfile Gemfile.lock ./
RUN bundle install --jobs 20 --retry 5
CMD bundle exec jekyll build  
```

and make some changes in `docker-compose.yml` to use your new Dockerfile to build the image and include `--livereload` so everytime you change a post your browse will automatically reload the content.

```yaml
version: '3'

services:
  web:
    build: 
      context: .
    image: blog:1.0
    command: bundle exec jekyll serve -H 0.0.0.0 -t --force_polling --livereload
    volumes:
      - .:/srv/jekyll
    ports:
      - 4000:4000
    user: "1000:1000"
```
Sadly **autoreload** doesn't work when you change something in '_config.yml'. You need to restart the docker container for changes takes effect.
{: .notice--warning}

Run `build` to force image to be rebuild if it already exist than `up`. And you can notice that the up command is far more faster than before.
```terminal
docker-compose build
docker-compose up
```

**Pro Tip:** Now as bonus you can create script files to normalize and organize your post development process. Check my [scripts to rule them all]({% post_url 2020-06-04-scripts-to-rule-them-all %}) post or check jekyll scripts in my [github repository](https://github.com/psrandom/psrandom.github.io/tree/master/script).
{: .notice--info}


## Conclusion
Now your site barebone is running, if you want to make it functional read my post about [choosing the right theme to jekyll]({% post_url 2020-05-31-choose-and-import-the-right-jekyll-theme %}).
