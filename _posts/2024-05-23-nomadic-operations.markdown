---
layout: post
title:  "Nomadic Operations?"
date:   2024-05-23 00:09:00 -0400
categories: blather
---
The `README.md` for this site says on Launchpad something fairly curious.  The new sentence added states:  

>*We haven't gone *nomadic* yet but that is always possible.*  

Essentially I've been having to conceptualize from time to time what it would look like to maintain a blog *off-line* in a git repo that was distributed through unusual means.  For example, what would a blog look like if a base [git bundle](https://www.git-scm.com/docs/git-bundle) were distributed and then had updates sent via [git-format-patch](https://git-scm.com/docs/git-format-patch) that were applied using [git-am](https://git-scm.com/docs/git-am)?  You'd essentially have a living document set that would be a self-contained off-line website potentially if you used a static site generator like [Jekyll](https://jekyllrb.com).  It would depend if you wanted to ship your entire source or just the final build product, I suppose.  

You couldn't use [Git Large File Storage](https://git-lfs.com) with such a thing since it would introduce an external dependency on a server and [Jekyll](https://jekyllrb.com) doesn't play nice with it anyhow.  RSS wouldn't exactly work well with it either.  Shipping binary bits would need to be limited.  

Conceivably this could also be done with [mdbook](https://rust-lang.github.io/mdBook/) and might make more sense that way.  Shifting from a blog to "Captain's Log..." would fit such a note in the bottle style of distribution.

Why even think of something like this?  I am based in a rural area that the MAGA people would easily forget about and leave behind in their plans for retribution and dominance.  Alternative and oddball communications methods are likely to be essentially in 2025 if that alleged criminal returns to being President of the United States.
  