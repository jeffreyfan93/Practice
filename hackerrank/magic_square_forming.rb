# Consider a 3x3 matrix, s, of integers in the inclusive range [1,9]. Any digit, a, can be changed to any other digit, b, in the range [1,9] at cost |a-b|.
#
# Given matrix s, convert it into a magic square by changing zero, one, or more of the digits in s. You must do this in such a way that the cost is minimal and then print the minimum possible cost on a new line.
#
# Note: The resulting magic square must contain distinct integers in the inclusive range [1,9].
#
# Input Format
#
# There are 3 lines of input. Each line describes a row of the matrix in the form of 3 space-separated integers denoting the respective first, second, and third elements of that row.
#
# Constraints
#
# All integers in s are in the inclusive range [1,9].
# Output Format
#
# Print a single integer denoting the smallest possible cost of turning matrix s into a magic square.
#
# Sample Input
# 4 9 2
# 3 5 7
# 8 1 5
#
# Sample Output
# 1
#
# Explanation
#
# Matrix  initially looks like this:
#
# 4 9 2
# 3 5 7
# 8 1 5
# Observe that it's not yet magic, because not all rows, columns, and center diagonals sum to the same number.
#
# If we change the bottom right value, s[2][2], from 5 to 6 at a cost of |6-5| = 1, s will become a magic square at the minimum possible cost. Thus, we print the cost, 1, on a new line.

# Enter your code here. Read input from STDIN. Print output to STDOUT

perm = [
    [[8, 1, 6], [3, 5, 7], [4, 9, 2]],
    [[6, 1, 8], [7, 5, 3], [2, 9, 4]],
    [[4, 9, 2], [3, 5, 7], [8, 1, 6]],
    [[2, 9, 4], [7, 5, 3], [6, 1, 8]],
    [[8, 3, 4], [1, 5, 9], [6, 7, 2]],
    [[4, 3, 8], [9, 5, 1], [2, 7, 6]],
    [[6, 7, 2], [1, 5, 9], [8, 3, 4]],
    [[2, 7, 6], [9, 5, 1], [4, 3, 8]]
]

x = gets.strip.split(' ').map(&:to_i)
y = gets.strip.split(' ').map(&:to_i)
z = gets.strip.split(' ').map(&:to_i)
matrix = [x, y, z].join.split('').map(&:to_i)


min_cost = 99999

perm.each do |square|
    curr_cost = 0
    square = square.join.split('').map(&:to_i)
    (0..8).each do |num|
        curr_cost += (matrix[num] - square[num]).abs
    end
    min_cost = curr_cost if curr_cost < min_cost
end

print min_cost
