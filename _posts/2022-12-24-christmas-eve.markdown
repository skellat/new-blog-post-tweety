---
layout: post
title:  "Generating Teletext Carousels"
date:   2022-12-24 00:33:00 -0500
categories: blather
---
This is more intended to log thoughts than to be a coherent essay.

I know I can use PowerPoint to do this.  I did *that* for one of the local cablecast channels for two years.  Hooking up a Raspberry Pi zero and using LibreOffice to push a repeating slideshow would not be too hard but for the problem of updating the slideshow.

I had been considering the notion of using a modified version of [feh](http://web.archive.org/web/20221222032104/https://feh.finalrewind.org/) that was not from the package archives.  That could be used to set up a slideshow.  I hadn't had the chance to test it yet but if I understood the mechanics correctly I could have a fixed set of filenames in a directory that feh would flip through then I could use sftp to replace those files dynamically as needed.  The filenames would be something like "first", "second", "third", etc.

Technically the "video bulletin board" that I referred to yesterday is more technically referred to as non-interactive in-vision teletext display.  At least [one GitHub repository](https://github.com/peterkvt80/vbit-iv) exists with software to decode teletext that could then be piped into OBS Studio or other software and then sent downstream to a streaming service.  This requires further investigation.
