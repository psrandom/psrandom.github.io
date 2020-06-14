---
title:  "Using a custom domain for your Github Page"
date:   2020-05-31 09:22:16 -0300
#categories: howto
excerpt: "Easy steps to use a custom domain for your personal github website."
header:
  overlay_image: https://s3.wasabisys.com/psrandom/img/p/jekyll-github-docker-header-overlay.jpg
  overlay_filter: 0.8
  actions:
    - label: "Jekyll"
      url: "https://jekyllrb.com/"
    - label: "Github"
      url: "https://github.com"
  teaser: https://s3.wasabisys.com/psrandom/img/p/jekyll-github-docker-header-teaser.jpg
tags: "jekyll github devops" 
classes: wide
---

Most of you know how to transform a git repository in a web page available at `http://username.github.io`, but if I say that you can also use a custom domain like `www.example.com` to access that?!

First things first, buy a domain you like. Let's use `mydomain.com` as example. You can use any provider that you like that also provides a DNS Server as you can see later.

**Pro Tip**: If you dont't know where, you can rely on [GoDadddy](https://godaddy.com) or [NameCheap](https://www.namecheap.com).
{: .notice--info}

Now open your local repository and create a `CNAME` file with your domain content, commit and push to remote server the update.
```bash
echo "www.mydomain.com" >> CNAME
git commit -a -m "Including my custom domain configuration."
git push -u origin master
```
Do this **before** redirect your domain to github's servers because malicious people can steal your domain to use in another github page.
{: .notice--warning}

**Pro Tip:** Don't write the **Apex** subdomain (i.e., `mydomain.com`). Use the `www` subdomain instead. We are going to configure in a way that both will your to access your site.
{: .notice--info} 

Navigate to your DNS provider and create a `CNAME` record that points your subdomain `www.mydomain.com` to to the default domain for your site that can be `<username>.github.io`. After that create either multiple `ALIAS`, `ANAME` or `A` records pointing your apex domain to the four IP addresses for GitHub Pages.
```terminal
185.199.108.153
185.199.109.153
185.199.110.153
185.199.111.153
```

To confirm that everything is ok use the `dig` command in linux with both your subdomains.
```bash
$ dig www.mydomain.com +nostats +nocomments +nocmd
  >  www.mydomain.com.	565	IN	CNAME	username.github.io.
  >  username.github.io.	3565	IN	A	185.199.108.153
  >  username.github.io.	3565	IN	A	185.199.110.153
  >  username.github.io.	3565	IN	A	185.199.111.153
  >  username.github.io.	3565	IN	A	185.199.109.153
```
and 

```bash
$ dig mydomain.com +nostats +nocomments +nocmd
  >  mydomain.com.	    	IN	A
  >  mydomain.com.	3565	IN	A	185.199.108.153
  >  mydomain.com.	3565	IN	A	185.199.110.153
  >  mydomain.com.	3565	IN	A	185.199.111.153
  >  mydomain.com.	3565	IN	A	185.199.109.153
```

Be patient, it can take up to 24hs to the DNS replicate, but most of time takes only few minutes.
{: .notice--info}