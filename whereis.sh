#!/usr/bin/env bash

alias .whereis='/usr/bin/whereis'     # maintain command line access to default whereis

# 📌 whereis() - macro of whereis.  find a program or a file and return path
#    Usage:  whereis <progrem>, whereis <filename>
whereis() {
  [[ -z ${1}            ]] && { shift; ${FUNCNAME[0]} -?; return; }             # if 1st param is empty
  [[ "${1}" == "?"      ]] || [[ "${1}" == "-?" ]] || [[ "${1}" == "help" ]] || [[ "${1}" == "-h" ]] && {   # ${FUNCNAME[0]} -?
    echo -e "
    PURPOSE: whereis is a bash function that overloads whereis. It locates programs
    (using native 'whereis') or locates a file (i.e. script, etc).

    NOTE: uses 'find' which excludes ~\Library, searches current folder structure.
    Also Bash does not have a way to find the source of a function.  Therefore a
    fucntion is just displayed with 'less' when found.

    ${FUNCNAME[0]} <options> | <program name> | <file name>

    OPTIONS:
     -? | help     Display this usage help message.

    USAGE:
     ${FUNCNAME[0]} which      - returns '/usr/bin/which'
     ${FUNCNAME[0]} whereis    - returns '/usr/bin/whereis'
     ${FUNCNAME[0]} dotfile.sh - returns locations of dotfiles.sh (w/find)
     ${FUNCNAME[0]} chknet.sh  - returns locations of chknet.sh (w/find)
    "
    return;
    }
    which ${1};
    find ~ -path ~/Library -prune -false -o -name ${1};
    return;
 }
 export -f whereis;
