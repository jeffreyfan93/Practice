# John's clothing store has a pile of n loose socks where each sock i is labeled with an integer, ci, denoting its color. He wants to sell as many socks as possible, but his customers will only buy them in matching pairs. Two socks, i and j, are a single matching pair if ci == cj.
#
# Given n and the color of each sock, how many pairs of socks can John sell?
#
# Input Format
#
# The first line contains an integer, n, denoting the number of socks.
# The second line contains n space-separated integers describing the respective values of c0, c1, c2, ..., c(n-1).
#
# Output Format
#
# Print the total number of matching pairs of socks that John can sell.
#
# Sample Input
# 9
# 10 20 20 10 10 30 50 10 20
#
# Sample Output
# 3
#
# Explanation
#
# As you can see from the figure above, we can match three pairs of socks. Thus, we print 3 on a new line.

#!/bin/ruby

n = gets.strip.to_i
c = gets.strip
c = c.split(' ').map(&:to_i)

total = 0
socks = Hash.new(0)
c.each do |num|
   socks[num] += 1
end

socks.each do |color, count|
    total += (count / 2)
end

print total
