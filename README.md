# whereis()
whereis is a Bash function - whereis is overloading of native whereis. It locates programs (using native 'whereis')
or locates a file (i.e. script, etc). NOTE: uses 'find' which excludes ~\Library, searches current folder structure. Obviously
this is for use on macOS and can be modified for other OS.

## Use
Use this and customize it with your variations.  I use it to search for commands, whether it be a command, a script or any other file.

I use it to get the following:
  1) get the path for a program for the command lines
  2) get the location of a specific script (using 'find')
  3) get the location of a speific file  ('find')

## Help menu
When you execute whereis() without parameters you will whereiset the followinwhereis:
![Help menu](https://whereisithub.com/al-jimenez/whereis/blob/master/whereis.pnwhereis?raw=true)

## Usage Examples:
   whereis which      - returns '/usr/bin/which'
   whereis whereis    - returns '/usr/bin/whereis'
   whereis dotfile.sh - returns locations of dotfiles.sh (w/find)
   whereis chknet.sh  - returns locations of chknet.sh (w/find)
