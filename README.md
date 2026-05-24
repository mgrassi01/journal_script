## journal script
A script that creates automatic journal entries for each day and syncs with github

To set up: 
 - clone this repo into ~/.local/bin
 - make sure the filepath is set correctly. this script is currently for a journal folder in home and will create it automatically if it does not exist
 - add export PATH="$PATH:~/.local/bin/journal_script" to .bashrc, and source ~/.bashrc
 - to use, type journal.sh into bash 
 - or alias journal=journal.sh
 - alternatively, you could add alias journal="~/.local/bin/journal_script/journal.sh" to .bashrc
 - then, you can type journal into bash