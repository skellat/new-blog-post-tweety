---
layout: post
title:  "Solving Solved Problems"
date:   2023-04-22 16:30:00 -0400
categories: blather
---
Terence Eden put up a blog post [talking about how to replace the emergency alerts function](https://web.archive.org/web/20230421163049/https://shkspr.mobi/blog/2023/04/how-do-you-decentralise-emergency-alerts/) that Twitter previously served and now has effectively broken.  The post begins to put forward ideas on how to reinvent what existed on Twitter.  My problem is that it overlooks that much of this is already worked through.  Rather than build completely new software to handle the matter from scratch we could simply hit the appropriate APIs sooner and more appropriately.

Things like the [Integrated Public Alert and Warning System](https://www.fema.gov/emergency-managers/practitioners/integrated-public-alert-warning-system) already exists in the United States of America.  From there we have the [Open Platform for Emergency Networks](https://www.fema.gov/emergency-managers/practitioners/integrated-public-alert-warning-system/technology-developers/ipaws-open) or IPAWS-OPEN.  I mean, even PBS builds off that API to have [a warnings map to see what they look like across the entirety of the country](https://warn.pbs.org) and the IPAWS program office [had a webinar about this](https://www.fema.gov/event/pbs-warn-your-live-wea-map) recently.  The [Common Alerting Protocol](https://www.fema.gov/emergency-managers/practitioners/integrated-public-alert-warning-system/technology-developers/common-alerting-protocol) is the API in question.

Now, I'm not an Authority Having Jurisdiction in this case.  I can't make decisions about the EAS system as I'm not in charge of it.  All I can tell folks is to monitor more than one system for updates in severe weather.  That means having a NOAA Weather Radio receiver is a very, very prudent investment presently.

Could a botsinspace account be created to restore these auto-posts of National Weather Service reviews?  As far as I can tell, the answer to that is yes.  Is it likely?  No, not at all.

IPAWS is already configured to use so many communications routes as it is.  Will an ActivityPub-based repeater add much value at this point?  I'm just not sold on it.
