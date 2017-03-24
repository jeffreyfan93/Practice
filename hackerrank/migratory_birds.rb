# A flock of n birds is flying across the continent. Each bird has a type, and the different types are designated by the ID numbers 1, 2, 3, 4, and 5.
#
# Given an array of n integers where each integer describes the type of a bird in the flock, find and print the type number of the most common bird. If two or more types of birds are equally common, choose the type with the smallest ID number.
#
# Input Format
#
# The first line contains an integer denoting n (the number of birds).
# The second line contains n space-separated integers describing the respective type numbers of each bird in the flock.
#
# Output Format
#
# Print the type number of the most common bird; if two or more types of birds are equally common, choose the type with the smallest ID number.
#
# Sample Input 0
# 6
# 1 4 4 4 5 3
#
# Sample Output 0
# 4
#
# Explanation 0
#
# The different types of birds occur in the following frequencies:
#
# Type 1: 1 bird
# Type 2: 0 birds
# Type 3: 1 bird
# Type 4: 3 birds
# Type 5: 1 bird
# The type number that occurs at the highest frequency is type 4, so we print 4 as our answer.


#!/bin/ruby

n = gets.strip.to_i
types = gets.strip
types = types.split(' ').map(&:to_i)
# your code goes here

count = Array.new(6,0)

types.each do |num|
    count[num] += 1
end

print count.index(count.max)
