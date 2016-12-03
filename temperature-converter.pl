print "Enter a temperature in Celsius:\n";
$celsius = <STDIN>;
chomp($celsius);

if ($celsius =~ m/^[0-9]+$/) {
    $fahrenhiet = ($celsius * 9/5) + 32;
    printf "%.2f C is %.2f F.\n", $celsius, $fahrenhiet;
} else {
    print "Expecting a number, so I don't understand \"$celsius\".\n";
}
