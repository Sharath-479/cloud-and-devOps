read -p 'Enter how many numbers to print: ' a
b=0
while [ $b -le $a ]
do
echo $b
b=`expr $b + 1`
done
