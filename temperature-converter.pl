print "Enter a temperature in Celsius:\n";
$input = <STDIN>;
chomp($input);

if ($input =~ m/^([-+]?[0-9]+([\.0-9]*)?)([CF])$/) {
    $temp = $1;
    $type = $3;

    if ($type eq 'C') {
        $fahrenhiet = ($temp * 9/5) + 32;
        printf "%.2f C is %.2f F.\n", $temp, $fahrenhiet;
    } else {
        $celsius = ($temp -32) * 5/9;
        printf "%.2f F is %.2f C.\n", $temp, $celsius;
    }

} else {
    print "Expecting a number, so I don't understand \"$input\".\n";
}
