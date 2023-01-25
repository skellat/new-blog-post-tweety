---
layout: post
title:  "Looking At Coding"
date:   2023-01-25 00:16:00 -0500
categories: blather
---

Am I great at slinging shell scripting?  I feel doubtful about that.  Consider the following excerpt:

~~~
# Declare variables

DUB=$( date "+%A-%d-now.png")
WUB=$( date "+%A-%d-soon.png")

# Grab images from NOAA
curl -C - --retry-delay 3 --retry 5 --output $DUB "https://graphical.mdl.nws.noaa.gov/GraphicalNDFD.php?width=1920&timezone=EST&wfo=KCLE&element=wx&n=2"
curl -C - --retry-delay 3 --retry 5 --output $WUB "https://graphical.mdl.nws.noaa.gov/GraphicalNDFD.php?width=1920&timezone=EST&wfo=KCLE&element=wx&n=3"
~~~

I don't have the logic working quite right here.  In theory this *should* grab maps showing weather conditions from the perspective of the National Weather Service forecast office in Cleveland.  In practice it is rather finicky and does not always return maps like it should.  

There is a *separate* API for the National Digital Forecast Database but it is a bit of a mess.  Either I am missing something when I follow the directions at <https://digital.weather.gov/staticpages/mapservices.php> or there is a step missing there.