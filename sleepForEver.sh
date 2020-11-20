a=0 
# -lt is less than operator 
  
#Iterate the loop until a less than 10 
echo "Start testing"
while [ $a -lt 4000 ] 
do 
    # Print the values
    now=$(date +"%T")
    echo "Current time : $now" 
    echo $a
    sleep 1 
    # increment the value 
    a=`expr $a + 1` 
done
echo "Start ending"
