---
title:  "Choosing and importing the right Jekyll Theme"
date:   2020-05-31 08:22:16 -0300
#categories: howto
excerpt: ""
header:
  overlay_image: https://s3.wasabisys.com/psrandom/img/p/jekyll-github-docker-header-overlay.jpg
  overlay_filter: 0.8
  actions:
    - label: "Jekyll"
      url: "https://jekyllrb.com/"
    - label: "Minimal Mistakes Theme"
      url: "https://github.com/mmistakes/minimal-mistakes"
  teaser: https://s3.wasabisys.com/psrandom/img/p/jekyll-github-docker-header-teaser.jpg
tags: "jekyll webdesign" 
classes: wide
---
Jekyll comes with a simple theme named `minina` so the first thing that I did was to search a new template for my site.
I found different open source theme templates, that had custom pages for curriculum vitae, blog, documentation pages and finally chose [minimal mistakes theme](https://github.com/mmistakes/minimal-mistakes). A flexible two-column theme with minimalistic style and as few configuration files as possible for a extremily flexible theme.

## Learning about Jeckyll Directory Structure

Althought the project has few folders, `Jekyll` is using the buitin template ones from `minima` theme installed as a gem.
Let's take an overview of the most importants:

**Directory** | **Description**
------------- | ---------------
**_includes** | partial code and html snippets that cam be mixed with posts 
**_layouts** | The real post templates
**_sass** | parts of your stylesheet that cam bem imported to `main.scss` and generata a single `main.css` file
**_data** | a place to put well formed data to use as `site.data.<tag>` in other build files in `_layouts` or `_include`
**_posts** | The primary place to keep your posts files in the format `YYYY-mm-DD-post-name-separated-by-dash.md`
**_drafts** | A place to keep unpablished (almost unfinished) posts. You don't need to include a date in name
**assets** | Just by convention, create this folder to organize `images`, `javascript` and `stylesheet` files  

**Pro Tip:** Read Jekyll [documentation](https://jekyllrb.com/docs/structure/) to learn more about that.
{: .notice--info}

Every file in a theme can be override by creating the same file with the same gem folder structure inside your root folder.

## Importing themes

The next challenge was to chose the way I woudl import the theme content in my project. `Jekyll` gives to you three ways to do that.

### Ruby gem 
To install theme as a gem-based theme add it to your `Gemfile`
```ruby
gem "minimal-mistakes-jekyll"
```

Run `bundle update` in terminal to download or upgrade ruby gems.
And set `minimal mistakes` theme in your `_config.yml` file
```yaml
theme: minimal-mistakes-jekyll
```

### Remote Theme

Remote themes don't require a GemFile, `github-pages` gem install `jekyll-remote-theme` plugin that downloads the theme from github and keep it in a temporary folder during jekyll build time.

If you don't have **github-pages** gem in your `Gemfile` don't forget to include and install it.
{: .notice--warning}

If you opted for `minimal-mistakes` you need to include `jekyll-include-cache`  to the `plugins` array in `_config.yml`.
```yaml
plugins:
  - jekyll-paginate
  - jekyll-sitemap
  - jekyll-gist
  - jekyll-feed
  - jekyll-include-cache
```

Add `mmistakes/minimal-mistakes`as a remote theme in `_config.yml`. You can specify the version that is nothing more than a git tag number.
```yaml
remote_theme: mmistakes/minimal-mistakes@4.19.2
```

### Fork the project

At least and not less important, you can fork the project or just copy all files from the theme repository to your own project respecting the same directory structure.

Please don't forget to give credits in your site to the project that you forked.
{: .notice--warning}

## Moving on

I don't like the first approach because maybe the place where you are going to deploy doesn't accept the include of extra gems. The second approach works fine to someone that don't think to change the template a lot, so you keep your projects with only the important content, the posts.
In the first week I had already changed practically all the theme files 😆 so I just import everything to my project and stopped using `theme` or `remote-theme` in my `_config.yml`.

Choose wisely but don't worry because it's easy to change your approach later.