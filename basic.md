## Helpful `cd` commands
* `cd ~` -  Goes to the home directory of the current user
* `cd - ` - Goes to the directory you were there before the current

## Helpful `date` command

* `date +%H:%M:%S` - Prints hour, minutes and second of the current time

## Helpful `wc` command

* `wc -l <filename>` - prints # of new lines, total words and file size

## Helpful `grep` command
Does character/string matching

* `grep <word> <filename>` - Prints line containing the <word>.
* grep -o <word> <filename>` - Print the occurences of the <word> in different lines (-o -> only-mathcing)
* `grep -c <word> <filename>` - Prints total number of lines containing the word.
* `grep -v "*" <filename>` - Prints all the lines not matching that character or word (-v -> invert matching)
* `grep [[:digit:]] <filename>` - return lines containing any combination of digits
* `grep -A <number-of-lines> [[:digit:]] <filename> - return lines after context matching. It also includes the lines containing matching string or character

## Helpful `find` command
* `find <dir-location> -name <dir/file name> -type <dir/file>` - Returns file or directory locations matching the value specified for the `-name` flag.
* Examples:
 * `find /home/ -name "*.sh" -type f`
 * `find /home/ -maxdepth 1 -name "*.sh" -type f`
 * `find /home/ -name "*.sh" -type f -mtime [+50|50|-50]` -> 50 represents days and mtime is modified time
 * `find /home/ -name "*.sh" -type f -atime -3` -> atime is accessesd time
 * `find ~ -type f -size 10G`