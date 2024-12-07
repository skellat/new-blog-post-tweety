---
layout: post
title:  "Looking Back One Year"
date:   2023-12-25 10:13:00 -0500
categories: blather
---
To give you an idea of what was written roughly a year ago on the blog, these excerpts are offered.  Some of these things have been lurking in the background while I have been teaching for most of the year.  Eventually I will need to accelerate some of these plans forward.  After all, the local newspaper is starting to fade out in somewhat visible ways.  

### December 23, 2022

### What Frightful Weather We Have Had

* Development of the over-the-top network is stalled.  I have ordered a new Raspberry Pi 4B+ from PiHut in the UK.  That'll likely be used as a streaming head-end.  The problem is where the head-end would stream to in actual operations.
  * I really want to do a teletext carousel to push out on Twitch like TCI/Adelphia had on the old 1990s cable system on Channel 30.  That would help with the lack of prepared content at the moment.  YouTube has an example [out of Minneapolis](https://youtu.be/bhw25jFm5So) that presents the idea roughly.
  * I haven't finished putting my query together to fetch an appropriate weather conditions map from the National Digital Forecast Database.  That would be helpful to use in pushing a weather report in a semi-automated fashion.
  * A goal of such a project is to **NOT** do something like [this](https://vimeo.com/783282497) from [Conneaut CAT-TV](https://vimeo.com/user126359532) if we can help it.
  * Something arranged like [Geauga G-TV](https://geaugatv.org/contact) would probably work but we would ditch running on a cable system to be online only.  They have [video on-demand](https://vimeo.com/gtvvideos) on Vimeo.  Their work is funded via franchise fees received locally in Geauga County.
  * This still needs work.

### December 24, 2022

### Generating Teletext Carousels

This is more intended to log thoughts than to be a coherent essay.

I know I can use PowerPoint to do this.  I did *that* for one of the local cablecast channels for two years.  Hooking up a Raspberry Pi zero and using LibreOffice to push a repeating slideshow would not be too hard but for the problem of updating the slideshow.

I had been considering the notion of using a modified version of [feh](http://web.archive.org/web/20221222032104/https://feh.finalrewind.org/) that was not from the package archives.  That could be used to set up a slideshow.  I hadn't had the chance to test it yet but if I understood the mechanics correctly I could have a fixed set of filenames in a directory that feh would flip through then I could use sftp to replace those files dynamically as needed.  The filenames would be something like "first", "second", "third", etc.

Technically the "video bulletin board" that I referred to yesterday is more technically referred to as non-interactive in-vision teletext display.  At least [one GitHub repository](https://github.com/peterkvt80/vbit-iv) exists with software to decode teletext that could then be piped into OBS Studio or other software and then sent downstream to a streaming service.  This requires further investigation.

### December 26, 2022

### Boxing Up Boxing Day

Keeping in mind what Alistair Buxton had to say about teletext I intend to do some experimenting.  I really want to move forward on getting some sort of television programming up.  With all the emergency conditions we had over the weekend and as unreliable as Facebook has proven to be for disseminating information we need to have *something* in place.

I really do not want to go with the [penny press newspaper production via LaTeX](https://code.launchpad.net/~skellat/+git/auto-newspaper) plan instead.  The code for that is basically settled as it is.  What I *do not* have settled is production capacity to print a community startup newspaper akin to what *Zvezda* was trying not all that long ago over in the Russian Federation.  I don't have the seed capital to even start looking at gear from Konica Minolta at this point let alone other vendors.

### December 30, 2022

### Attempting To Avoid An Omnishambles

* I didn't expect there to be Debian packaging of [info-beamer](https://info-beamer.com/).  I need to read the documentation a bit further to see what I am getting into with this.  With luck I can use this on the streaming channel that is being developed as a "video bulletin board" programming set.

### December 31, 2022

### Last Words For 2022

I learned the hard way why Raspbian doesn't install LibreOffice on the Raspberry Pi Zero W.  Apparently the JRE doesn't install correctly and without that dependency LibreOffice won't run.  That set me back on testing using the Raspberry Pi Zero W as a video bulletin board generator.  The streaming effort that should launch in 2023 is somewhat delayed while I determine which alternate option to try with the Zero W.  

This is more of a frustration than a total roadblock.  I could probably whip up something using [feh](https://feh.finalrewind.org/) while I continue to work out how to use [info-beamer](https://github.com/info-beamer).  I also need to work out how to download appropriate tiles on an automated basis from <https://digital.weather.gov/> zoomed [in on the local area](https://digital.weather.gov/?zoom=8&lat=41.3043&lon=-80.55885&layers=F000BTTTTTT&region=0&element=4&mxmz=false&barbs=true&subl=TTTTF&units=english&wunits=nautical&coords=latlon&tunits=localt).  If I have to fall back to the vodcasting alternate plan then I can take advantage of [pre-existing work I did in 2022](https://coyote.works/howtouse.html).
