# Consider two sets of positive integers, A = {a0, a1, ..., a(n-1)} and B = {b0, b1, ..., b(n-1)}. We say that a positive integer, x, is between sets A and B if the following conditions are satisfied:
#
# All elements in A are factors of x.
# x is a factor of all elements in B.
# Given A and B, find and print the number of integers (i.e., possible x's) that are between the two sets.
#
# Input Format
#
# The first line contains two space-separated integers describing the respective values of n (the number of elements in set A) and m (the number of elements in set B).
# The second line contains n distinct space-separated integers describing a0, a1, ..., a(n-1).
# The third line contains m distinct space-separated integers describing b0, b1, ..., b(n-1).
#
# Output Format
#
# Print the number of integers that are considered to be between A and B.
#
# Sample Input
# 2 3
# 2 4
# 16 32 96
#
# Sample Output
# 3
#
# Explanation
#
# The integers that are between A = {2, 4} and B = {16, 32, 96} are 4, 8, and 16.

#!/bin/ruby

n,m = gets.strip.split(' ')
n = n.to_i
m = m.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)
b = gets.strip
b = b.split(' ').map(&:to_i)

start = a.max
finish = b.min
count = 0
(start..finish).each do |num|
    count += 1 if ((a.all? { |anum| num % anum == 0}) && (b.all? {|bnum| bnum % num == 0}))
end

print count
