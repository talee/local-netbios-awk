#!/bin/awk -f
/^Nmap scan report/{
    print "\nIP: "$5;
}
/^MAC/{
    print $0;
}
/^\| +NetBIOS name/{
    match($0, /NetBIOS name: [^,]+/);
    print substr($0, RSTART, RLENGTH)" ";
}
/^Nmap done:/{
    print $0;
}
