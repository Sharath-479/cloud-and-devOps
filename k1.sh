read count
a=$1
if (( $count >= `wc -w <$a` ))
then
echo " less"
else
echo " greater" 
fi

