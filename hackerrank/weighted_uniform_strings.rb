# A weighted string is a string of lowercase English letters where each letter has a weight in the inclusive range from 1 to 26, defined below:
#
# We define the following terms:
#
# The weight of a string is the sum of the weights of all the string's characters. For example:
#
# A uniform string is a string consisting of a single character repeated zero or more times. For example, ccc and a are uniform strings, but bcb and cd are not (i.e., they consist of more than one distinct character).
# Given a string, s, let U be the set of weights for all possible uniform substrings (contiguous) of string s. You have to answer n queries, where each query i consists of a single integer, xi. For each query, print Yes on a new line if ; otherwise, print No instead.
#
# Note: The  symbol denotes that  is an element of set .
#
# Input Format
#
# The first line contains a string denoting s (the original string).
# The second line contains an integer denoting n (the number of queries).
# Each line i of the n subsequent lines contains an integer denoting xi (the weight of a uniform subtring of s that may or may not exist).
#
# Output Format
#
# Pring n lines. For each query, print Yes on a new line if ; otherwise, print No instead.
#
# Sample Input 0
# abccddde
# 6
# 1
# 3
# 12
# 5
# 9
# 10
#
# Sample Output 0
# Yes
# Yes
# Yes
# Yes
# No
# No
#
# Explanation 0
# The weights of every possible uniform substring in the string abccddde are shown below:
#
# We print Yes on the first four lines because the first four queries match weights of uniform substrings of . We print No for the last two queries because there are no uniform substrings in  that have those weights.
#
# Note that while de is a substring of  that would have a weight of , it is not a uniform substring.
#
# Note that we are only dealing with contiguous substrings. So ccc is not a substring of the string ccxxc.

#!/bin/ruby
require 'set'

s = gets.strip.split("")
n = gets.strip.to_i

alphabet = ('a'..'z').to_a
values = Set.new
prev_value = 0

s.each_with_index do |letter, idx|
    letter_value = alphabet.index(letter) + 1
    if idx == 0
        values.add(letter_value)
        prev_value = letter_value
    elsif letter == s[idx - 1]
        value = prev_value + letter_value
        values.add(value)
        prev_value = value
    else
        values.add(letter_value)
        prev_value = letter_value
    end
end

for a0 in (0..n-1)
    x = gets.strip.to_i
    # your code goes here
    if values.include?(x)
        puts 'Yes'
    else
        puts 'No'
    end
end
