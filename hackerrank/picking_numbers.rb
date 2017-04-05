# Given an array of integers, find and print the maximum number of integers you can select from the array such that the absolute difference between any two of the chosen integers is <= 1.
#
# Input Format
#
# The first line contains a single integer, n, denoting the size of the array.
# The second line contains n space-separated integers describing the respective values of a0, a1, ..., a(n-1).
#
# Output Format
#
# A single integer denoting the maximum number of integers you can choose from the array such that the absolute difference between any two of the chosen integers is <= 1.
#
# Sample Input 0
# 6
# 4 6 5 3 3 1
#
# Sample Output 0
# 3
#
# Explanation 0
# We choose the following multiset of integers from the array: {4, 3, 3}. Each pair in the multiset has an absolute difference <= 1 (i.e., |4 - 3| = 1 and |3 - 3| = 0), so we print the number of chosen integers, 3, as our answer.
#
# Sample Input 1
# 6
# 1 2 2 3 1 2
#
# Sample Output 1
# 5
#
# Explanation 1
# We choose the following multiset of integers from the array: {1, 2, 2, 1, 2}. Each pair in the multiset has an absolute difference <= 1 (i.e., |1 - 2| = 1, |1 - 1| = 0, and |2 - 2| = 0), so we print the number of chosen integers, 5, as our answer.

#!/bin/ruby

n = gets.strip.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)

counts = Hash.new(0)

a.each do |num|
   counts[num] += 1
end

min = a.min
max = a.max

count = 0

(min..max).each do |num|
    curr_count = counts[num] + counts[num + 1]
    count = curr_count if curr_count > count
end

print count
