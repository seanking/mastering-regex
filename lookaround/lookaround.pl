$text = "The population of 298444215 is growing";
$text =~ s/(?<=\d)(?=(\d\d\d)+(?!\d))/,/g;
print "$text\n";