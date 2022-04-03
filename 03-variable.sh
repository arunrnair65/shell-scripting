a=100
b="Arun Ravi"

echo $a is the value
echo $b is my name

#add {} if you dont need space

echo -e "\e[31m${a}\e[0m"withoutspace


tdate=$(date +%F)
echo -e todays date is "\e[32m$tdate\e[0m"
echo -e "todays date is \e[32m$tdate\e[0m"

c=10
d=15

echo "the sum of $c and $d is $((c+d))"
echo the sum of $c and $d is $(($c+$d))

# myArray[index]=value

a=(1 2 "arun shivesh")
echo Array : first number is ${a[0]}
echo Array : third number is ${a[2]}
echo Array : all values of array is ${a[*]}

#environment variables  "sampleenv"
echo $SampleEnv