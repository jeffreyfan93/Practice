# Monica wants to buy one keyboard and one USB drive from her favorite electronics store. The store sells n different brands of keyboards and m different brands of USB drives. Monica has exactly s dollars to spend, and she wants to spend as much of it as possible (i.e., the total cost of her purchase must be maximal).
#
# Given the price lists for the store's keyboards and USB drives, find and print the amount money Monica will spend. If she doesn't have enough money to buy one keyboard and one USB drive, print -1 instead.
#
# Note: She will never buy more than one keyboard and one USB drive even if she has the leftover money to do so.
#
# Input Format
#
# The first line contains three space-separated integers describing the respective values of s (the amount of money Monica has), n (the number of keyboard brands) and m (the number of USB drive brands).
# The second line contains n space-separated integers denoting the prices of each keyboard brand.
# The third line contains m space-separated integers denoting the prices of each USB drive brand.
#
# Output Format
#
# Print a single integer denoting the amount of money Monica will spend. If she doesn't have enough money to buy one keyboard and one USB drive, print -1 instead.
#
# Sample Input 0
# 10 2 3
# 3 1
# 5 2 8
#
# Sample Output 0
# 9
#
# Explanation 0
#
# She can buy the 2nd keyboard and the 3rd USB drive for a total cost of 8 + 1 = 9.
#
# Sample Input 1
# 5 1 1
# 4
# 5
#
# Sample Output 1
# -1
#
# Explanation 1
#
# There is no way to buy one keyboard and one USB drive because 4 + 5 > 5, so we print -1.

#!/bin/ruby

s,n,m = gets.strip.split(' ')
s = s.to_i
n = n.to_i
m = m.to_i
keyboards = gets.strip
keyboards = keyboards.split(' ').map(&:to_i)
pendrives = gets.strip
pendrives = pendrives.split(' ').map(&:to_i)

sum = []
keyboards.each do |keyboard|
    pendrives.each do |pendrive|
        sum << (keyboard + pendrive)
    end
end

sum.select! {|total| total <= s}
if sum.empty?
    print -1
else
    print sum.max
end
