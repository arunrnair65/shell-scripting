echo arun
echo -e This is "\e[31mRED\e[0m" color

#red   31
#green 32
#yellow 33
#blue   34
#magenta 35
#cyan 36
#syntax  : echo -e "\e[31mHello\e[0m"
# -e option to enable escape chars
# "" quotes are mandatory for colors to work, we can use singe quotes as well
# \e[COLm  -> To enable color, COL is colorcode
#\e[0m --> This is to disable the cole from continuing (stop color)

echo -e "Line1\nLine2"   #\n for new line
echo -e "Tab1\tTab2"   #\t for Tab


tdate = (date +%F)
echo -e "todays date is \e[32m$tdate\e[0m
