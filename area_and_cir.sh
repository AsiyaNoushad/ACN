echo "enter the radius :"
read r
area=`echo 3.14\*$r\*$r|bc`
cir=`echo 2\*3.14\*$r|bc`
echo "area : $area"
echo "circumference : $cir"
