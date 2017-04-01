# Two cats named A and B are standing at integral points on the x-axis. Cat A is standing at point x and cat B is standing at point y. Both cats run at the same speed, and they want to catch a mouse named C that's hiding at integral point z on the x-axis. Can you determine who will catch the mouse?
#
# You are given q queries in the form of x, y, and z. For each query, print the appropriate answer on a new line:
#
# If cat A catches the mouse first, print Cat A.
# If cat B catches the mouse first, print Cat B.
# If both cats reach the mouse at the same time, print Mouse C as the two cats fight and mouse escapes.
#
# Input Format
#
# The first line contains a single integer, q, denoting the number of queries.
# Each of the q subsequent lines contains three space-separated integers describing the respective values of x (cat A's location), y (cat B's location), and z (mouse C's location).
#
# Output Format
#
# On a new line for each query, print Cat A if cat A catches the mouse first, Cat B if cat B catches the mouse first, or Mouse C if the mouse escapes.
#
# Sample Input 0
# 3
# 1 2 3
# 1 3 2
# 2 1 3
#
# Sample Output 0
# Cat B
# Mouse C
# Cat A
#
# Explanation 0
#
# Query 0: The positions of the cats and mouse are shown below:
#
# Cat B will catch the mouse first, so we print Cat B on a new line.
#
# Query 1: In this query, cats A and B reach mouse C at the exact same time:
#
# Because the mouse escapes, we print Mouse C on a new line.

#!/bin/ruby

q = gets.strip.to_i
for a0 in (0..q-1)
    x,y,z = gets.strip.split(' ')
    x = x.to_i
    y = y.to_i
    z = z.to_i
end
