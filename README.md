colourlovers-to-gpl
===================

Dirty scripts to get top palettes from colourlovers api and transform 'em into inkscape/gimp gpl palettes.

If you want other palettes, please refer to colourlovers api at http://www.colourlovers.com/api and change the url in sh files accordingly.

To get one gpl file per palette, launch get_palettes.sh :

    ./get_palettes.sh

To get one gpl file with every top palettes

    ./get_one_palette.sh
    
You can copy the resulting files into

    ~/.config/inkscape/palettes # inkscape
    
    ~/.gimp-X.X/palettes # gimp