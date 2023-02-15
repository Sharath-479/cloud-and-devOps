fun1(){
echo $1
echo $2
echo $3
a=`expr $1 + $2 + $3`
return $a
}
fun1 2 4 5
ret=$?
echo $ret

