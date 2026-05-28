"""

Given the following list li = [2, 0 ,1, 7, 2, 0, 2, 2] perform the following:

1. Print the first item of the list
2. Print the last item of the list

Bonus:

3. Print random item of the list

"""
from random import choice

li = [2, 0, 1, 7, 2, 0, 2, 2]

print(li[0])
print(li[-1])
print(choice(li))
