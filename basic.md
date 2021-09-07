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


## Invoking the script
* When you type `./test-script.sh`, you are basically telling shell to use the current directory path to invoke the script. 
* To add the current directory path to the `$PATH`, follow the steps below:
  * export PATH = $PATH:$(pwd)
  * This time just run `test-script.sh`.

## Redirects and pipes

* `ls 1>output.txt` -> redirect standard output to output.txt
* `ls % 2>error.txt` -> redirect standard error to error.txt
* `ls $ &>both.txt` -> redirects standard output and error to both.txt
* `ls % 1>output.txt 2>error.txt` -> edirect standard output to output.txt and standard output and error to error.txt 
* `ls % 1>output.txt 2>&1` -> standard error to standard output and standard output to output.txt.
* `cat file1.txt | head -5 | tail -3 | wc -l` -> returns bottom 3 lines from the top 5 lines and counts the number of lines returned.
