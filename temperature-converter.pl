print "Enter a temperature in Celsius:\n";
$celsius = <STDIN>;
chomp($celsius);

if ($celsius =~ m/^[0-9]+$/) {
    $fahrenhiet = ($celsius * 9/5) + 32;
    print "$celsius C is $fahrenhiet F.\n";
} else {
    print "Expecting a number, so I don't understand \"$celsius\".\n";
}
