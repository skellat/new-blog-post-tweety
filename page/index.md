## Draft Communications Action Planning

### Introduction

[John Goerzen](https://www.complete.org/john-goerzen/) has brought back to life [UUCP e-mail](https://datatracker.ietf.org/doc/html/rfc976) through the use of [NNCP](http://www.nncpgo.org/), apparently.  This beast is called [NNCPNET](https://changelog.complete.org/archives/10768-announcing-the-nncpnet-email-network) and [there is already a proof of concept implementation](https://salsa.debian.org/jgoerzen/docker-nncpnet-mailnode/-/wikis/home).  This can now optionally [gate to the Internet](https://changelog.complete.org/archives/10783-nncpnet-can-optionally-exchange-internet-email).

In light of the present challenged operating environment [(Simple English)](https://simple.wikipedia.org/wiki/Second_presidency_of_Donald_Trump) [(English)](https://en.wikipedia.org/wiki/Second_presidency_of_Donald_Trump), it is necessary to consider alternative communication systems.  After all, the possible implementation of [Palantir](https://www.yahoo.com/news/destroy-ring-trump-palantir-deal-163336897.html) upon federal data sets about citizens can lead to oppression.  Data flows might need to be removed from the open Internet.

Welcome to a nightmare in the style of [Cyberpunk 2020](https://en.wikipedia.org/wiki/Cyberpunk_(role-playing_game)#Second_edition:_Cyberpunk_2020), it seems.

### Random Thoughts

There are tools like [rss2email](https://wiki.archlinux.org/title/Rss2email).  Finding a counterpart that can dump to IMAP may be useful.  In any case, John's NNCPNET suite [has an Exim server bundled](https://changelog.complete.org/archives/10768-announcing-the-nncpnet-email-network) in its local kit.  That allows a local mail client like Thunderbird to interact normally with something while NNCP handles the transport.  NNCP can handle a sort of frozen transport where you can freeze your mail traffic to [a USB flash drive to be hand-carried to the next stop in its transfer route](https://www.complete.org/dead-usb-drives-are-fine-building-a-reliable-sneakernet/).  You can ultimately have disconnected, hand-carried e-mail.  Since rss2email can write HTML e-mails you can conceivably have a machine connected to the hostile Internet download RSS feeds once per day and write them to a shadow realm NNCPNET e-mail address.  When the mail gets bundled for transfer to the relatively gapped computer you can move reading material to the destination machine for reading.

This could function a bit like [El Paquete Semanal](https://en.wikipedia.org/wiki/El_Paquete_Semanal), I suppose.

### Development

Further development is required.


