# Given two strings, a and b, determine if they share a common substring.
#
# Input Format
#
# The first line contains a single integer, p, denoting the number of (a,b) pairs you must check.
# Each pair is defined over two lines:
#
# The first line contains string a.
# The second line contains string b.
#
# Output Format
#
# For each (a,b) pair of strings, print YES on a new line if the two strings share a common substring; if no such common substring exists, print NO on a new line.
#
# Sample Input
# 2
# hello
# world
# hi
# world
#
# Sample Output
# YES
# NO
#
# Explanation
#
# We have c = 2 pairs to check:
#
# a = 'hello', b = 'world'. The substrings 'o' and 'l' are common to both a and b, so we print YES on a new line.
# a = 'hi', b = 'world'. Because a and b have no common substrings, we print NO on a new line.

# Enter your code here. Read input from STDIN. Print output to STDOUT
num = gets.strip.to_i

num.times do |time|
    a = gets.strip.split('').uniq!
    b = gets.strip.split('').uniq!

    a.each.with_index do |letter, idx|
        if b.include?(letter)
            puts 'YES'
            break
        elsif idx == a.length - 1
            puts 'NO'
        end
    end
end
