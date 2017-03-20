# You are given an array of n integers, a0, a1, ...a(n-1), and a positive integer, k. Find and print the number of (i,j) pairs where i < j and ai + aj is evenly divisible by k.
#
# Input Format
#
# The first line contains 2 space-separated integers, n and k, respectively.
# The second line contains n space-separated integers describing the respective values of a0, a1, ..., a(n-1).
#
# Output Format
#
# Print the number of (i,j) pairs where i < j and ai + aj is evenly divisible by k.
#
# Sample Input
# 6 3
# 1 3 2 6 1 2
#
# Sample Output
# 5

#!/bin/ruby

n,k = gets.strip.split(' ')
n = n.to_i
k = k.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)

count = 0

(0...(n-1)).each do |num1|
    (num1+1...n).each do |num2|
        count += 1 if ((a[num1]+a[num2]) % k == 0)
    end
end

print count
