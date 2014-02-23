#!/usr/bin/perl

$hex_regex = qr!<hex>([0-9a-f]{2})([0-9a-f]{2})([0-9a-f]{2})</hex>!i;

$title_regex = qr@<title><!\[CDATA\[(.*)\]\]></title>@;

$palette_regex = qr!</palette>!;

foreach (<>)
{
    if ($_ =~ $title_regex)
    {
	if ($title)
	{
	    close($title);
	}
	$title = $1 =~ s/\s/_/rg;
	open ($title, ">", "${title}.gpl");
	print $title "GIMP Palette\nName: ".$title;
	print $title "\nColumns: 0\n#\n"
    }

    $_ =~ $hex_regex && print $title unpack('u',pack 'u',hex($1))."\t".unpack('u',pack 'u',hex($2))."\t".unpack('u',pack 'u',hex($3))."\n";



}
