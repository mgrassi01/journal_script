#!/bin/bash

# A script to create and open a daily journal file


# DIR="/c/Users/240148438/journal"
DIR="$HOME/journal"

if [ ! -d "$DIR" ]; then
    cd $HOME
    git clone git@github.com:mgrassi01/journal.git
fi

# cd "$HOME/journal"
cd "$DIR"
git add .
git commit -m "updated previous journal entry"
git pull -q


# Create a new file path and store it in a variable
filename=$DIR/journal_$( date '+%Y-%m-%d' ).md

#check if the file exists or not
if [ ! -f "$filename" ]; then
    echo "## $( date '+%A, %d %B %Y' )" >> "$filename"
fi

# add the previous contents of the journal folder (yesterday, etc) to a git commit
cd "$DIR"
git add . -q
git commit -m "created new journal"
git push -q

# Open the file in VS Code whether it already existed or not
code "$filename"