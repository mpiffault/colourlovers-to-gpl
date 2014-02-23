#!/bin/bash

wget -O palettes.xml -U "Mozilla/5.0 (X11; Linux x86_64; rv:26.0) Gecko/20100101 Firefox/26.0" 'http://www.colourlovers.com/api/palettes/top'

./xmltogpl2.pl < palettes.xml