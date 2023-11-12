---
layout: post
title:  "Pondering Groupware"
date:   2023-01-13 01:02:00 -0500
categories: blather
---
One of the ways to get past the lack of room is to start implementing groupware.  I recently had the chance to consider unique ways Microsoft Teams could be used to provide for a "virtual office".  At present the commercial real estate market in the Ashtabula area is just not that good.  There are plenty of unusable properties that have overinflated prices attached to them and frankly nothing that is anywhere close to usable.

How would Teams provide for a "virtual office"?  Assuming I could find collaborators I would end up having to provision the Cloud PBX and other telephony options.  We would need ways to receive phone calls as well as be able to call each other directly.  Teams also interoperates with OBS Studio so a person could use it to stream their video from another location to my own for recording.  A theoretical use in that case would be to have two presenters at different locations piping their audiovisual content over Teams back to me to route and mix down.  Storage via OneDrive for Business would allow for easier transfer of bulky rich media files.

Could this be done with a hosted NextCloud service vendor?  The answer to that is *maybe*.  It wouldn't be nearly as slick as the unified communications component is not as tightly integrated.  I would likely need to set up Asterisk, look at the starfish book, and contract with somewhere like `voip.ms` for a SIP trunk line to the Public Switched Telephone Network.  None of this includes the video conferencing component that would still need to be set up.  OBS Studio has integrations out of the box to work with [Skype](https://techcommunity.microsoft.com/t5/modern-work-app-consult-blog/how-to-host-a-live-streaming-with-multiple-participants-using/ba-p/1291745), [Teams](https://adoption.microsoft.com/en-us/inside-microsoft-teams/bonus-clips/connecting-microsoft-teams-obs/), and Zoom.  Anything else would require looking for potentially an add-on to OBS Studio or different recording orchestration software due to [limits](https://obsproject.com/kb/virtual-camera-guide).

Do I like going down this path?  No, not really.  I'm just gobsmacked at people locally asking for a quarter of a million dollars for tiny commercial buildings that are no bigger than three portable outhouses placed side by side.  I could understand pricing like that in New York City but not in Ashtabula City.  It is almost a form of "malicious compliance" by putting something up for sale to meet someody's requirements but setting the price absurdly high so that no buyer would touch it.

There is plenty more to think about in this case, I think.
