a=0
read name
while [ $a -lt $1 ]
do
echo $name
i=`expr $i+1`
done
