#!/usr/bin/perl

$hex_regex = qr!<hex>([0-9a-f]{2})([0-9a-f]{2})([0-9a-f]{2})</hex>!i;

$title_regex = qr@<title><!\[CDATA\[(.*)\]\]></title>@;

open (PALETTES, ">", "colovers_palettes.gpl");

print PALETTES "GIMP Palette\nName: Colour Lovers Top Palettes\n";

foreach (<>)
{
    if ($_ =~ $title_regex)
    {
	$title = $1;
    }

    $_ =~ $hex_regex && print PALETTES unpack('u',pack 'u',hex($1))."\t".unpack('u',pack 'u',hex($2))."\t".unpack('u',pack 'u',hex($3))." $title\n";
}
