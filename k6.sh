echo "Do you want to remove $1 ?"
read a
case $a in
"yes") rm $1
echo "file is removed"
;;
"no")
echo "file not removed"
;;
*)
echo "not understand your req"
esac

