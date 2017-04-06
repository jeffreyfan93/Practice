# We say that a string, s, contains the word hackerrank if a subsequence of the characters in s spell the word hackerrank. For example, haacckkerrannkk does contain hackerrank, but haacckkerannk does not (the characters all appear in the same order, but it's missing a second r).
#
# More formally, let p0, p1, ... p9 be the respective indices of h, a, c, k, e, r, r, a, n, k in string s. If p0 < p1 < p2 < ... < p9 is true, then  contains hackerrank.
#
# You must answer q queries, where each query i consists of a string, si. For each query, print YES on a new line if si contains hackerrank; otherwise, print NO instead.
#
# Input Format
#
# The first line contains an integer denoting q (the number of queries).
# Each line i of the q subsequent lines contains a single string denoting .
#
# Output Format
#
# For each query, print YES on a new line if si contains hackerrank; otherwise, print NO instead.
#
# Sample Input 0
# 2
# hereiamstackerrank
# hackerworld
#
# Sample Output 0
# YES
# NO
#
# Explanation 0
# We perform the following  queries:
#
#
# The characters of hackerrank are bolded in the string above. Because the string contains all the characters in hackerrank in the same exact order as they appear in hackerrank, we print YES on a new line.
#  does not contain the last four characters of hackerrank, so we print NO on a new line.

#!/bin/ruby

q = gets.strip.to_i
for a0 in (0..q-1)
    s = gets.strip.split('')
    # your code goes here
    word = 'hackerrank'.split('')
    s.each do |letter|
        if letter == word.first
            word.shift
        end
    end

    if word.empty?
        puts 'YES'
    else
        puts 'NO'
    end

end
