# gitignore bash script

Bash script that downloads gitignore files from [github gitignore repo](https://github.com/github/gitignore/tree/main) and save it in the local directory as .gitignore.

Usage:

    $ gitignore Python

Pascal case is used for the language names in the repo so provide the language name with pascal case when invoking the script.

    Android
    C++
    C
    Go
    Node
    Unity
    UnrealEngine

*Will not overwrite* an existing gitignore file, just warn and exit.


**Example installation on macOS**

 Make the script executable:

    $ chmod +x gitignore.sh

Move the script to bin and rename it to gitignore:

    $ sudo mv gitignore.sh /usr/local/bin/gitignore
