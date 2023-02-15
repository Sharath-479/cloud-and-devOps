sum=0
fun1(){
x=$1
y=$2
sum=$((x+y))
return $sum
}
fun2(){
x=$1
avg=$((x/2))
echo $avg
}
read a
read b
fun1 $a $b
ret=$? 
fun2 $ret
