fun(){
x=$1
if [ $((x%2)) == 1 ];
then
echo "odd"
else
echo "even" 
fi
}
read a
fun $a
