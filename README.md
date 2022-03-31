# esgi-linux-3ibc-2022

## Lesson 1: Shell scripting

### File extension

A shell script ends with the `.sh` extension.

```bash
echo -e "#!/bin/sh\necho Hello, world!" > main.sh
```

### Execution

You can execute a script by using the default `sh` interpreter.

```bash
sh main.sh
```

You can also make a script executable by updating its permissions. Note that in this case, you have to put a shebang to tell the interpreter what shell to use to execute the script.

```bash
chmod +x ./main.sh
./main.sh
```

### Variables

A variable in a shell script is used to store data that can be accessed elsewhere in a script. Variables are declared using the equal sign and should not contain any space between and after that symbol. Variable can be surrounded by double or single quotes.

```bash
#!/bin/sh

MESSAGE="Hello, world!"

echo $MESSAGE
# Hello, world!
```

### Strings

Strings are used to store data. We can also use variables inside of our strings to create more complex ones.

```bash
#!/bin/sh

MAJOR_VERSION="1"
MINOR_VERSION="2"
PATCH_VERSION="3"
VERSION="$MAJOR_VERSION.$MINOR_VERSION.$PATCH_VERSION"

echo "Version is: $VERSION"
# Version is 1.2.3
```

## Exercises

### Exercise 1

Create a script that accepts a temperature and a format. According to the format (celsius or fahrenheit), this script should output the correct transformed degres. This script should be available globally.

```bash
degres 15 fahrenheit
59

degres 95 celsius
35
```

### Exercise 2

Create a script that accepts the name of a GitHub repository and clones it in the desired folder. If the script tries to clone an already existing folder, pull instead from it. The script should be available globally.

```bash
clone aminnairi/node-static aminnairi-node-static
Cloning into 'node-static'...
remote: Enumerating objects: 39, done.
remote: Counting objects: 100% (39/39), done.
remote: Compressing objects: 100% (27/27), done.
remote: Total 39 (delta 11), reused 36 (delta 8), pack-reused 0
Receiving objects: 100% (39/39), 64.29 KiB | 378.00 KiB/s, done.
Resolving deltas: 100% (11/11), done.

clone aminnairi/node-static aminnairi-node-static
Already up to date.
```

### Exercise 3

Create a script that accepts an IP address and displays the wanted information from it following the https://ipapi.co API. This script should be available globally.

```bash
ipinfo 1.1.1.1 city
Sidney

ipinfo 1.1.1.1 country_name
Australia
```

## Next lesson

```bash
git checkout lesson2
```
