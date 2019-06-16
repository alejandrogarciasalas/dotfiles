# Personal Cheatsheet
## cd
cd - # Changes the working directory to the previous working directory
bd # we installed a zsh plugin for going back, let's see if we'll use it

## ls
ls -l # the l stands for long format
ls -la # includes directories that begin with a .
ls -lt # sort by time
ls -lt --r or # or --reverse ^

## less
less was called less after a play on words on a previous program called more

#cp mv rm
* try using them in interactive (-i) or (-u) update mode to prevent bad things
* when using a wildcard use ls first to test it!

## link
hard link vs soft links
A **hard link** then just creates another file with a link to the same underlying inode. ... The inode is only deleted (or deletable/over-writable) when all links to the inode have been deleted.

A **symbolic link ** is a link to another name in the file system.

use `ln` to create new hard link and `ln -s` to create a new symbolic or soft link

symbolic links were created to overcome two disadvantages of hard links: hard links cannot span physical devices and hard links cannot reference directories, only files.

symbolic links start with an l, e.g. lrwxr-xr-x

# searching for files
use `find` and regex to search inside a directory recursively

# redirect vs pipe
The both do the same basic thing; they redirect a file descriptor of the process executed. The difference lies in how.
* A pipe connects the stdout of one process to the stdin of another
* whereas redirection redirects from/to a file (> from stdout to a file, < from a file to stdin).

`>>` will append to a file (rather than overwriting it)

file descriptors:
standard input - `1`
standard output - `2`
standard error - `3`

for redirecting standard error we need to use it's file descriptor, for example:
`ls -l /bin/usr 2> ls-error.txt`

# /dev/null
redirect to /dev/null for disposing unwanted output

# cat
`cat > new_file` and you can use cat as a very simple text editor :)

# filtering

useful commands include
* sort
* uniq
* wc (specially wc -l)
* grep
* head and tail (by default they print 10 lines but can be adjusted with `-n` useful for getting top 10, last 10 etc.)

example usages
 ` ls /bin /usr/bin | sort | uniq -d | less`
 ` ls /bin /usr/bin | sort | uniq | grep zip `

# expansions
## pathname expansion
stuff like wildcard expansion (*) for file names and paths `echo D*` and `echo /usr/*/share`

## tilde expansion
~ expands to home directory

## arithmetic expansion
`echo $((2 + 2))` some nifty math

## brace expansion
create multiple text strings from a pattern containing braces, stuff like:
`echo Front-{A,B,C}-Back`
`echo Number_{1..5}`
`echo {Z..A}`
`echo {2007..2009}-0{1..9} {2007..2009}-{10..12}`
can be comma separated or a range

## parameter expansion
printing environment variables and such
`echo $USER`
also, `printenv` to see a list of all available variables

## command substitution
stuff like `echo $(ls)`
and `ls -l $(which cp)`

also back ticks in old OS `echo `ls``

## controlling expansions through quoting
**double quotes**
suppresses all expansions except "$", "\" and "`"
useful for avoiding word splitting in cases  like `echo $(cal)` fix-> echo `$echo "$(cal)"`

**single quotes**
supresses ALL expansions

**escaping characters**
use backslash for escaping characters e.g.
`echo "The balance for user $USER is: \$5.00" `

**some interesting backslash escape sequence (this originated on C and then got copied)**
\a – bell
\b – backspace
\n – newline
\r – carriage return
\t – tab

"\n vs \r"
linux\unix and mac os uses `\n` for new line windows uses `\r\n` when pressing enter

## **handy shortcuts**
### **moving**
alt-f – move cursor forward one word
alt-b – move cursor backward one word
(same thing with Ctrl except just one character)
Ctrl-l – yet another way to clean the screen
### **cutting and pasting**
Ctrl-k – kills from the cursor location to the end of the line (Ctrl-u kills to the begining of the line)
Alt-d – kill text from the cursor location to the **end** of the current word
Alt-backspace – kill text from the cursor location to the **beginning** of the current word
Ctrl-y – yank it back fron the kill ring

### History Commands (only ones that I really find useful)
Ctrl-r – reversal incremental search. Searches incrementally from the current command line up the history list
Ctrl-o – execute the current item in the history list and advance to the next one. Handy if trying to re-execute a sequencve of commands in the history list

### History expansions
!number – list item number repeat history
!string – repeat last history list item starting with string
!?string – repeat last history list item containing string

**NOTE ON METAKEY - ON MODERN KEYBOARDS this maps to ALT**

## Permissions
10 characters in fron of file (e.g. drwxrwxrwx)
1st one type of file either:
- "-" (regular file)
- d (directory)
- l (symbolic link)
- c (character special file) a device that handles a stream of bytes like a terminal or mode
- b (block special file) device that handles data in blocks like a hard dtive

the next 9 are for Owner, Group, World
this also translates as UGO (user, group, other)
rwx (read, write, execute)

important commands:
chown you some_file
chgrp new_group some_file – change group ownership (this is older and you can pretty much do everything you did with this command now with chown)

**chmod "desired_permissions_seetings" some file**
* you can write this in two ways octal notation

passwd – for changing your password

octal notation:
**this is how permissions work for example**
rwx rwx rwx = 111 111 111
rw- rw- rw- = 110 110 110
rwx --- --- = 111 000 000

octal goes up to 7 (1,2,3,4,5,6,7,10,11,12,13,14,15,16,17,20...)so works the same as converting decimal to binary, in case you forget... https://www.khanacademy.org/math/algebra-home/alg-intro-to-algebra/algebra-alternate-number-bases/v/decimal-to-binary

**symbolic notation**
u "user"
g group owner
o "others" but means world
a short for "all"

notation examples:
u+x
u-x
+x (applies to owner, group, and world, same as a+x)
go=rw
u+x, go=rx

**su vs sudo**
In some distributions, most notably Ubuntu, an alternate method is used. Rather than using su, these systems employ the sudo command instead. With sudo, one or more users are granted superuser privileges on an as needed basis (rather than changing into a mode). su is short for *substitute user*


# ************** VSCODE **************
in case I forget while still learning:
https://stackoverflow.com/questions/35157786/vscode-open-file-from-file-explorer-with-enter-key-on-mac-osx
solution is **cmd+down**

**keybindings**

* how to select next appearance of word **cmd+d**
* kill line **cmd+k** different than **cmd+x** that will cut
* duplicates cursor **shift+control+up**
* will just copy line **cmd+c**
* select all ocurrences of a word **command+^+g**
* move cursor to next word for selected word **command+k+command+d**
* undo last cursor action **command+u**
