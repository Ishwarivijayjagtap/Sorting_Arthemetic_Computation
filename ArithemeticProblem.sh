 
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

