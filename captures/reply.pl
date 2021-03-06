
while ($line = <>) {
    if ($line =~ m/^\s*$/) {
        last;
    }
    
    if ($line =~ m/^Subject: (.*)/i) {
        $subject = $1;
    }
    
    if ($line =~ m/^Date: (.*)/i) {
        $date = $1;
    }
    
    if ($line =~ m/^Reply-To: (\S+)/i) {
        $reply_address = $1;
    }
    
    if ($line =~ m/^From: (\S+) \(([^()]*)\)/i) {
        $reply_address = $1;
        $from_name = $2;
    }
}

if ( not defined($subject) or not defined($date) or not defined($reply_address) or not defined($from_name)) {
   die "Couldn't find the required information"; 
}

print "To: $reply_address\n";
print "From: test\@test.com (Test Test)\n"; 
print "Subject: Re: $subject\n";
print "\n";
print "On $date $from_name wrote: \n";

while ($line = <>) {
    $line =~ s/^/|> /;
    print $line;
}

print "\n";
