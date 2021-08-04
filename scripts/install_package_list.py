#!/usr/bin/env python3

import os
import sys
import csv

def print_usage():
    print()
    print("Usage:")
    print("    " + os.path.basename(__file__) + " [options] " + "<csv file>")
    print()

    print("csv file should contain (package manager info is hard coded in this script):")
    print("    first pm,        second pm,          third pm")
    print("    packagename 1,   [packagename 2],    [packagename 3]")
    print("    ... ,            ... ,               ... ,")
    print()

    print("example file:")
    print("    pacman,  apt")
    print("    sudo pacman -S,  apt ")
    print("    tmux,    tmux")
    print()

    print("options:")
    print("    -d   dry run, print packages that will be installed, give warnings.")
    exit()

if len(sys.argv)==1:
    print("No arguments specified")
    print_usage()

sys.argv.pop(0)

dry_run=False
if sys.argv[0].startswith("-d"):
    dry_run=True
    sys.argv.pop(0)
    print("Dry run!")

if len(sys.argv)==0:
    print("missing file argument")
    print_usage()



