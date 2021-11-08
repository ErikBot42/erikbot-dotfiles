#!/usr/bin/env python3

# A hastily written script to automatically install a list of packages.

import os
import sys
import csv


option_dry_run = False
option_verbose = False

def run_command(cmdstr, dry_run = False):
    if option_verbose:
        print("Command: " + cmdstr)
    
    if not dry_run:
        return os.system(cmdstr)==0
    
    

class package_manager:
    name="" # name of pm
    install="" # pm install command (non interactive)
    query="" # check if pm has package of given name
    def __init__(self, name, install, query):
        self.name = name # to test if installed              
        self.install = install
        self.query = query # optional

    def install_package(self, package):
        return run_command(self.install + package, option_dry_run)

    def query_package(self, package):
        return run_command(self.query + package) 

    def try_install_package(self, package):
        if query_package(package):
            if not install_package(package):
                print("Error installing: " + package)
                print_usage()
        else:
            print("Invalid package: " + package)
            print_usage()

    def is_installed(self):
        return run_command("command -v " + self.name)

#TODO: flatpak
package_managers = [
    package_manager(name="pacman", install="sudo pacman -S ",       query="pacman -Si "),
    package_manager(name="apt",    install="sudo apt-get install ", query="apt-cache show ")
    #package_manager(name="pacman", install="sudo pacman -S",       query="pacman -Ss")
]

def print_usage():
    print()
    print("Usage:")
    print("    " + os.path.basename(__file__) + " [options] " + "<csv file>")
    print()

    print("csv file should contain (package manager info is hard coded in this script):")
    print("    pm name,         pm name 2,          pm name 3")
    print("    packagename 1,   [packagename 2],    [packagename 3]")
    print("    ... ,            ... ,               ... ,")
    print()

    print("example file:")
    print("    pacman,  apt")
    print("    tmux,    tmux")
    print()
    
    print("current implemented package managers are:")
    for pman in package_managers:
        print("    " + pman.name)
    print()

    print("options:")
    print("    -d   dry run, print what packages would be installed, give warnings.")
    print("    -r   run commands.")
    print("    -v   print every command that will/would be run.")
    exit()



if len(sys.argv)==1:
    print("No arguments specified")
    print_usage()

sys.argv.pop(0)


if sys.argv[0].startswith("-"):
    options = sys.argv[0]
    option_dry_run = 'd' in options
    option_verbose = 'v' in options

    sys.argv.pop(0)

if len(sys.argv)==0:
    print("missing file argument")
    print_usage()

print(package_managers)
package_managers[0].install("tmux")


