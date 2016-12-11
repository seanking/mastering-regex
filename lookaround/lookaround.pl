$text = "The population of 298444215";
$text =~ s/(?<=\d)(?=(\d\d\d)+$)/,/g;
print "$text\n";