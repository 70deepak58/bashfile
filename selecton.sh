echo -n “enter array limit”
read limit
echo -n “enter the elements”
index=0
while [ $index -lt $limit ]
do
read num
arr[$index]=$num
index=`expr $index + 1`
done
count=`expr $limit – 1`
i=0
while [ $count -gt 0 ]
do
j=`expr $i + 1`
icnt=$count
while [ $icnt -gt 0 ]
do
if [ ${arr[$i]} -gt ${arr[$j]} ]
then
temp=${arr[$i]}
arr[$i]=${arr[$j]}
arr[$j]=$temp
fi
j=`expr $j + 1`
icnt=`expr $icnt – 1`
done
count=`expr $count – 1`
i=`expr $i + 1`
done
echo -n “the sorted array is ”
index=0
while [ $index -lt $limit ]
do
echo -e “${arr[$index]} ”
index=`expr $index + 1`
done
echo -n “greatest number is ”
limit=`expr $limit – 1`
echo ${arr[$limit]}
