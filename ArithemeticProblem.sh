 
  echo ""
  echo "Welcome to Arithmetic Computition and Sorting Problem"
   echo ""

   declare -A soln
   read -p "Enter a :" a
   read -p "Enter b :" b
   read -p "Enter c :" c
   echo "Inputs values are $a $b $c "
  
   echo "$a + $b * $c = $(( a + b * c ))"
    echo "$a * $b + $c = $(( a * b + c ))"
    echo "$c + $a / $b = $(( c + a / b ))"
    echo "$a % $b + $c = $(( a % b + c ))"
  soln[a+b*c]=$(( $a + $b * $c ))

  soln[a*b+c]=$(( $a * $b + $c ))

  soln[c+a/b]=$(( $c + $a / $b )) 

  soln[a%b+c]=$(( $a % $b + $c ))

  echo "Content in dictionary : "${soln[@]}
   echo "key values :" ${!soln[@]}
 arr=( ${soln[a+b*c]} ${soln[a*b+c]} ${soln[c+a/b]} ${soln[a%b+c]} )
 echo ${arr[@]}

  for((i=0;i<4;i++))
do
   for((j=0;j<4-i-1;j++))
do
   if [[ ${arr[j]} -lt ${arr[$((j+1))]} ]]
then
   temp=${arr[j]}
   arr[j]=${arr[$((j+1))]}
   arr[$((j+1))]=$temp
fi
done
done
echo "Sort in Descending order : " ${arr[@]}
