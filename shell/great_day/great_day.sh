# 1. Write a script that will print "Today is a great day!" unless it's given a day name and then it should print "Today is "
# Note: no need to check whether the given argument is actually a valid day

if [ $1 != null ]; then
  echo "Today is "
else
  echo "Today is a great day!"
fi