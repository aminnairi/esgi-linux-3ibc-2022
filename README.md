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
Hello, world!
```

You can also make a script executable by updating its permissions. Note that in this case, you have to put a shebang to tell the interpreter what shell to use to execute the script.

```bash
chmod +x ./main.sh
./main.sh
Hello, world!
```

### Variables

A variable in a shell script is used to store data that can be accessed elsewhere in a script. Variables are declared using the equal sign and should not contain any space between and after that symbol. Variable can be surrounded by double or single quotes.

```bash
#!/bin/sh

MESSAGE="Hello, world!"

echo $MESSAGE
# Hello, world!
```

### Built-in variables

There are a number of variables that are pre-defined in our script. We can get the name of the script.

```bash
#!/bin/sh

echo "Script name is $0"
```

```bash
sh main.sh
Script name is main.sh
```

We can get the first argument passed to our script.

```bash
#!/bin/sh

echo "First argument is $1"
```

```bash
sh main.sh here
First argument is here
```

We can get the 10th argument passed to our script.

```bash
#!/bin/sh

echo "10th argument is ${10}"
```

```bash
sh main.sh a b c d e f g h i j
10th argument is j
```

We can get the number of arguments passed to our script.

```bash
#!/bin/sh

echo "Number of arguments: $#"
```

```bash
sh main.sh first second third
Number of arguments: 3
```

We can get the status code from the last executed program of our script

```bash
#!/bin/sh

echo "Hello"
echo "Last status: $?"
```

```bash
Hello
Last status: 0
```

We can get all of the arguments at the same time.

```bash
#!/bin/sh

echo "Arguments passed: $@"
```

```bash
sh main.sh first second third
Arguments passed: first second third
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

### Arithmetic operations

We can use arithmetic operations to do calculus on our variables. All of the basic operations like additions, subtractions, divisions and multiplications are available.

```bash
#!/bin/sh

FIRST="2"
SECOND="4"
RESULT="$(( $FIRST * $SECOND ))"

echo "$FIRST times $SECOND is $RESULT"
```

```bash
sh main.sh
2 times 4 is 8
```

Operations and results are always integers.

```bash
#!/bin/sh

NUMERATOR="1"
DENOMINATOR="2"
RESULT="$(( $NUMERATOR / $DENOMINATOR ))"

echo "$NUMERATOR divided by $DENOMINATOR is $RESULT"
```

```bash
1 divided by 2 is 0
```

Also, if one of the operands is not an integer, the result will always be zero.

```bash
#!/bin/sh

FIRST="1.1"
SECOND="2.2"
RESULT="$(( $FIRST / $SECOND ))"

echo "$FIRST plus $SECOND is $RESULT"
```

```bash
sh main.sh
1.1 plus 2.2 is 0
```

### Conditionals

You can have specific algorithm by using an if statement in your bash script to help you customize the behavior of your scripts. Note that in this case, the space between the brackets are importants because this is actually a program called `[` that accept values and check if they are true or false according to the arguments passed.

We can check the equality of a value.

```bash
#!/bin/sh

VERSION="1"

if [ "$version" == "1" ]
then
  echo "First stable version"
else
  echo "Some version"
fi
```

We can check for the inequality of a value.

```bash
#!/bin/sh

VERSION="1"

if [ "$version" != "1" ]
then
  echo "Some version"
else
  echo "First stable version"
fi
```

We can check if a value is alphabetically greater than another one.

```bash
#!/bin/sh

VERSION="1"

if [ "$version" > "0" ]
then
  echo "Stable version"
else
  echo "Unstable version"
fi
```

We can check if a value is alphabetically lower than another one.

```bash
#!/bin/sh

VERSION="1"

if [ "$version" < "1" ]
then
  echo "Unstable version"
else
  echo "Stable version"
fi
```

We can check if an arithmetic value is greater than another one.

```bash
#!/bin/sh

COUNTER="10"

if [ "$COUNTER" -gt "1" ]
then
  echo "Greater than one"
else
  echo "Lower or equal to one"
fi
```

We can check if an arithmetic value is lower than another one.

```bash
#!/bin/sh

COUNTER="10"

if [ "$COUNTER" -lt "1" ]
then
  echo "Lower than one"
else
  echo "Greater or equal to one"
fi
```

We can check if an arithmetic value is equal to another one.

```bash
#!/bin/sh

COUNTER="10"

if [ "$COUNTER" -eq "1" ]
then
  echo "Greater than one"
else
  echo "Lower or equal to one"
fi
```

We can check if an arithmetic value is not equal to another one.

```bash
#!/bin/sh

COUNTER="10"

if [ "$COUNTER" -ne "1" ]
then
  echo "Not one"
else
  echo "One"
fi
```

We can check if an arithmetic value is lower or equal to another one.

```bash
#!/bin/sh

COUNTER="10"

if [ "$COUNTER" -le "1" ]
then
  echo "Lower or equal to one"
else
  echo "Greater than one"
fi
```

We can check if an arithmetic value is greater or equal to another one.

```bash
#!/bin/sh

COUNTER="10"

if [ "$COUNTER" -ge "1" ]
then
  echo "Greater or equal to one"
else
  echo "Lower than one"
fi
```

We can check if a file exists.

```bash
#!/bin/sh

FILE_PATH="/home/user/file.txt"

if [ -f "$FILE_PATH" ]
then
  echo "file.txt exists"
else
  echo "file.txt does not exist"
fi
```

We can check if a directory exists.

```bash
#!/bin/sh

DIRECTORY_PATH="/home/user/.vim"

if [ -d "$DIRECTORY_PATH" ]
then
  echo ".vim folder exists"
else
  echo ".vim folder does not exist"
fi
```

We can check if a file or folder exists and is readable.

```bash
#!/bin/sh

DIRECTORY_PATH="/home/user/.vim"

if [ -r "$DIRECTORY_PATH" ]
then
  echo ".vim folder exists and is readable"
else
  echo ".vim folder does not exist or is not readable"
fi
```

We can check if a file or folder exists and is writeable.

```bash
#!/bin/sh

DIRECTORY_PATH="/home/user/.vim"

if [ -w "$DIRECTORY_PATH" ]
then
  echo ".vim folder exists and is writeable"
else
  echo ".vim folder does not exist or is not writeable"
fi
```

We can check if a file or folder exists and is executable.

```bash
#!/bin/sh

FILE_PATH="/home/user/.local/bin/weather"

if [ -x "$FILE_PATH" ]
then
  echo "weather exists and is executable"
else
  echo "weather does not exist or is not executable"
fi
```

We can check if a file exists and is empty.

```bash
#!/bin/sh

FILE_PATH="/home/user/.local/bin/weather"

if [ -z "$FILE_PATH" ]
then
  echo "weather exists and is empty"
else
  echo "weather does not exist or is not empty"
fi
```

We can check if a file exists and is not empty.

```bash
#!/bin/sh

FILE_PATH="/home/user/.local/bin/weather"

if [ -s "$FILE_PATH" ]
then
  echo "weather exists and is not empty"
else
  echo "weather does not exist or is empty"
fi
```

We can combine tests using a logical AND.

```bash
#!/bin/sh

FILE_PATH="/home/user/.local/bin/weather"
DIRECTORY_PATH="/home/user/.vim"

if [ -d "$DIRECTORY_PATH" -a -f "$FILE_PATH" ]
then
  echo "weather is a file and .vim is a directory"
else
  echo "weather is not a file or .vim is not a directory"
fi
```

We can combine tests using a logical OR.

```bash
#!/bin/sh

FILE_PATH="/home/user/.local/bin/weather"
DIRECTORY_PATH="/home/user/.vim"

if [ -d "$DIRECTORY_PATH" -o -f "$FILE_PATH" ]
then
  echo "weather is a file or .vim is a directory"
else
  echo "weather is not a file and .vim is not a directory"
fi
```

We can reverse a test using a negation.

```bash
#!/bin/sh

FILE_PATH="/home/user/.local/bin/weather"
DIRECTORY_PATH="/home/user/.vim"

if [ ! -d "$DIRECTORY_PATH" -a ! -f "$FILE_PATH" ]
then
  echo "weather is not a file and .vim is not a directory"
else
  echo "weather is a file or .vim is a directory"
fi
```

### Arrays

We can create and display an array to store multiple variables as a collection.

```bash
#!/bin/sh

FRUITS=("banana" "apple" "pear")

echo "Fruits: ${FRUITS[@]}"
```

```
Fruits: banana apple pear
```

We can access each elements by their indexes.

```bash
#!/bin/sh

FRUITS=("banana" "apple" "pear")

echo "First fruit: ${FRUITS[0]}"
echo "Second fruit: ${FRUITS[1]}"
echo "Third fruit: ${FRUITS[2]}"
```

```
First fruit: banana
Second fruit: apple
Third fruit: pear
```

We can add values to an array.

```bash
#!/bin/sh

FRUITS=("banana" "apple")
FRUITS+=("pear")

echo "Fruits: ${FRUITS[@]}"
```

```bash
Fruits: banana apple pear
```

We can get the number of elements in an array.

```bash
#!/bin/sh

FRUITS=("banana" "apple" "pear")

echo "Number of fruits: ${#FRUITS[@]}"
```

```bash
Number of fruits: 3
```

### Loop

It is possible to use the `for` program to loop through every argument given after the `in` option.

```bash
#!/bin/sh

for letter in a b c
do
  echo "Letter is $letter"
done
```

```
Letter is a
Letter is b
Letter is c
```

We can loop through a range of numbers.

```bash
#!/bin/sh

for number in {1..5}
do
  echo "Number is $number"
done
```

```
Number is 1
Number is 2
Number is 3
Number is 4
Number is 5
```

We can loop through a range of numbers with a given step.

```bash
#!/bin/sh

for number in {1..10..2}
do
  echo "Number is $number"
done
```

```
Number is 1
Number is 3
Number is 5
Number is 7
Number is 9
```

We can loop a variable of strings separated by a space. Be aware that this variable should not be surrounded by double quotes in the loop.

```bash
#!/bin/sh

LANGUAGES="Haskell Elm Purescript Crystal V Nim"

for language in $LANGUAGES
do
  echo "I know $language"
done
```

```
I know Haskell
I know Elm
I know Purescript
I know Crystal
I know V
I know Nim
```

We can loop using a C-style flavor syntax.

```bash
#!/bin/sh

LIMIT="5"

for (( index = 1; index <= $LIMIT; index++ ))
do
  echo "Index is now $index"
done
```

```
Index is 1
Index is 2
Index is 3
Index is 4
Index is 5
```

We can loop through an array.

```bash
#!/bin/sh

FRUITS=("banana" "apple" "pear")

for fruit in "${FRUITS[@]}"
do
  echo $fruit
done
```

### Functions

It is possible to create functions that can accept arguments. Functions arguments are similar to script arguments. There is nothing inside the parens.

```bash
function hello() {
  echo "Hello, $1!"
}

hello "world"
```

```
sh main.sh
Hello, world!
```

### Standard input

We can read from the standard input and store the value in our script by using the `read` program.

```bash
#!/bin/sh

echo "First name:"

read FIRST_NAME

echo "Last name:"

read LAST_NAME

echo "Your name is $FIRST_NAME $LAST_NAME"
```

```bash
sh main.sh
First name:
John
Last name:
DOE
Your name is John DOE
```

To prevent line return caused by the `echo` program, we can prompt the user with a question.

```bash
#!/bin/sh

read -p "First name: " FIRST_NAME
read -p "Last name: " LAST_NAME

echo "Your name is $FIRST_NAME $LAST_NAME"
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

Create a script that waits for user inputs for creating a simple `package.json` file. This script should be available globally.

```bash
createpackagejson
Name: @aminnairi/static
Version: 0.1.0
Description: Serve your static assets quickly
Home: https://github.com/aminnairi/node-static
Bug: https://github.com/aminnairi/node-static/issues

cat package.json
{
  "name": "@aminnairi/static",
  "version": "0.1.0",
  "description": "Serve your static assets quickly",
  "homepage": "https://github.com/aminnairi/node-static",
  "bug": "https://github.com/aminnairi/node-static/issues"
}
```

### Exercise 3

Create a script that takes an IP address and a property and displays it on the standard output. The informations should be fetched from the https://ipapi.co API. This script should be available globally.

```bash
ipinfo 1.1.1.1 city
Sidney

ipinfo 1.1.1.1 country_name
Australia
```

### Exercise 5

Create a script that allows you to install the Archlinux distribution. The script should be hosted on GitHub and fetched from a virtual machine that is running the latest version of Archlinux. The user should be able to customize the following:

- The size of the root partition (in percentage or hardcoded)
- The size of the swap partition (in percentage or hardcoded)
- The packages installed
- The timezone
- The locale
- The console keymap
- The hostname

## Next lesson

```bash
git checkout lesson2
```
