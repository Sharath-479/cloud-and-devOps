fun(){
a=$@
sum=0
for i in $@
do
if ((i%2==1))
then
sum=$((i+sum))
fi
done 
echo "sum is : " $sum
}
fun $1 $2 $3 $4
