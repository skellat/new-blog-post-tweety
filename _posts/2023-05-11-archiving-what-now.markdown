---
layout: post
title:  "Archiving What Now?"
date:   2023-05-11 11:45:00 -0400
categories: blather
---
Yes, it is time to talk code snippets again.  In this instance we're talking the invocation of various commands in bash/zsh.  We look first at [yt-dlp](https://github.com/yt-dlp/yt-dlp).  Consider:

```bash
yt-dlp --xattr-set-filesize --restrict-filenames --continue --embed-thumbnail --video-multistreams --audio-multistreams --write-auto-subs --embed-subs --embed-metadata --embed-chapters --xattrs --concurrent-fragments 32 --downloader aria2c --downloader-args "-s16 -j16 -x16" --windows-filenames --trim-filenames 64 --mtime --no-remove-chapters 
```

Working backwards in terms of the selected options, this invocation of yt-dlp will:

* Do not remove any chapters from the file (default)
* Use the Last-modified header to set the file modification time (default)
* Limit the filename length (excluding extension) to the specified number of characters (64)
* Force filenames to be Windows-compatible
* Use *aria2c* as an external downloader and pass arguments to that external program
* Number of fragments of a dash/hlsnative video that should be downloaded concurrently (default is 1) (Chosen is 32)
* Write metadata to the video file's xattrs (using dublin core and xdg standards)
* Add chapter markers to the video file (Alias: --add-chapters)
* Embed metadata to the video file.  Also embeds chapters/infojson if present unless --no-embed-chapters/--no-embed-info-json are used (Alias: --add-metadata)
* Embed subtitles in the video (only for mp4, webm and mkv videos)
* Write automatically generated subtitle file (Alias: --write-automatic-subs)
* Allow multiple audio streams to be merged into a single file
* Allow multiple video streams to be merged into a single file
* Resume partially downloaded files/fragments (default)
* Restrict filenames to only ASCII characters, and avoid "&" and spaces in filenames
* Set file xattribute ytdl.filesize with expected file size

Some of those may be duplicative and overlapping in scope.  Some of those are defaults and don't need to be specified.  This is the base set of options that I use to archive videos by my church from YouTube.  In theory the settings can be rearranged to only grab the subtitles file so that that can be mangled into being a transcript.  

The yt-dlp tool is very useful at this point in life.  Downloading something completely *first* prior to playback helps ensure smooth viewing experiences.  Our local broadband can be sketchy at the most inopportune times.

Now we shift to considering [wkhtmltopdf](https://wkhtmltopdf.org/).  Our stanza in question looks like:

```bash
wkhtmltopdf --image-quality 100 --image-dpi 600 --margin-bottom 2.54cm --margin-left 2.54cm --margin-right 2.54cm --margin-top 2.54cm --orientation portrait --page-size letter --use-xserver --background --default-header --enable-external-links --enable-forms --images --enable-internal-links --enable-javascript --load-error-handling skip --load-media-error-handling skip 
```

This invocation effectively turns off compression of images, specifies an image dpi of 600, puts one inch margins on the generated PDF pages, sets "portrait" orientation, sets letter paper size, and slaps a default header onto what is grabbed.  Backgrounds are rendered as are external links, forms, images, and internal links.  Error handling is handled by just skipping things that refuse to load.  

This tool is great for taking a nice snapshot of a cooperating web page.  It isn't perfect, though, as it will barf on things that have tracking pixels.  Trying to run it on a page from the site of my local daily broadsheet is almost impossible due to the number of errors that erupt.

There are other tools out there for archiving but these are low-level ones that are useful.
