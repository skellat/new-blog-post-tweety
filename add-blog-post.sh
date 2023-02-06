#
# Weather Vodcast Script Builder version 0.0.3
# By Stephen Michael Kellat
#
# Commands to build the speaking part for the vodcast
#
# Dependencies: curl, a 2022 or later vintage of pandoc, A Suitable Editor, bash or zsh, shell built-ins
#
# MIT/Expat License
#


# 2023-01-11 Yes, this is a big hacky mess that needs cleaning up and simplifying.
# 2023-01-13 Until we get a bigger space to produce things in this will just lead to making narrated slideshows, it seems

# Declare variables

NOW=$( date "+%A, %B %d, %Y" )
WON=$( date "+%A-%d.txt")
DUB=$( date "+%A-%d-now.png")
WUB=$( date "+%A-%d-soon.png")
SLIDES=$( date "+%A-%d.pptx")

# Grab images from NOAA
curl -C - --retry-delay 3 --retry 5 --output $DUB "https://graphical.mdl.nws.noaa.gov/GraphicalNDFD.php?width=1920&timezone=EST&wfo=KCLE&element=wx&n=2"
curl -C - --retry-delay 3 --retry 5 --output $WUB "https://graphical.mdl.nws.noaa.gov/GraphicalNDFD.php?width=1920&timezone=EST&wfo=KCLE&element=wx&n=3"

# Build the slideshow using pandoc
cat > /tmp/interim.txt << BOG
% Your Weather Report
% $NOW

------------------

Insert the National Forecast chart graphic here

------------------

![]($DUB)

------------------

![]($WUB)

------------------

![](radio-pitch.jpg)

------------------


------------------

This program was produced by Erie Looking Productions, Ashtabula, Ohio.

BOG

pandoc /tmp/interim.txt -o $SLIDES

# Begin to build the rough script by pulling things in via curl straight from NOAA

cat > $WON << EOF
This is your evening weather report for $NOW based upon information released by the National Weather Service.

Example text: At Northeast Ohio Regional Airport in Denmark Township this afternoon the wind was out of the West South West at 3 miles per hour and the temperature was 32 degrees with a dew point of 24 degrees and a relative humidity of 72%.

EOF

curl ftp://tgftp.nws.noaa.gov/data/observations/metar/decoded/KHZY.TXT >> $WON

cat >> $WON << EOD

Example text: Out at Tom Ridge Field at Erie International Airport this afternoon the wind was out of the north at 3 miles per hour and the temperature was 31 degrees with a dew point of 24 degrees and a relative humidity of 75%.

EOD

curl ftp://tgftp.nws.noaa.gov/data/observations/metar/decoded/KERI.TXT >> $WON 

cat >> $WON << EOC

For the lakeshore area of Ashtabula County to the I-90 corridor:

EOC

curl ftp://tgftp.nws.noaa.gov/data/forecasts/zone/oh/ohz089.txt >> $WON

cat >> $WON << EOA

From the I-90 corridor south to the Ashtabula-Trumbull county line:

EOA

curl ftp://tgftp.nws.noaa.gov/data/forecasts/zone/oh/ohz014.txt  >> $WON

cat >> $WON << POE

And remember folks, for weather updates whenever you need them you need to make sure you go out and get a radio that can pick up NOAA Weather Radio.  You can pick up radios like that at RadioShack in Ashtabula Towne Square or at other fine electronics retailers.

Until next time, this program has been brought to you by Erie Looking Productions in Ashtabula.  Be seeing you...

POE

# Remind myself to go edit it into something readable and usable

echo Built!
echo 
echo Now go edit it down!

