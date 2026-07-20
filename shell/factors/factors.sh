#Write a script that when given a number, will:

#- Check if the number has 2 as factor, if yes it will print "one factor"
#- Check if the number has 3 as factor, if yes it will print "one factor...actually two!"
#- If none of them (2 and 3) is a factor, print the number itself

if (( $1 % 2 == 0 )); then
  echo "one factor"
fi

if (( $1 % 3 == 0 )); then
  echo "one factor...actually two!"
fi

if (( $1 % 2 != 0 )) && (( $1 % 3 != 0 )); then 
  echo $1
fi