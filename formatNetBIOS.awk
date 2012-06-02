#!/bin/awk -f
{
    if (NR == 2)
        print $0;
}
