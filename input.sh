#get inputs

#-p is to print the message
read -p "enter your name : " name
echo "Name is $name"


#special variables
#($0 to $n), $* or $@, $#

echo "the script name is $0"
echo " the first argument is $1"
echo "the secong argument is $2"
echo "the third argument is $3"
echo "all arguments are $*"
echo "total number of arugument is $#"
