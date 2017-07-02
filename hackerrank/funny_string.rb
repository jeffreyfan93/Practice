# Suppose you have a String, S, of length N that is indexed from 0 to N - 1. You also have some String, R, that is the reverse of String S. S is funny if the condition |S[i] - S[i - 1]| = |R[i] - R[i - 1]| is true for every character i from 1 to N - 1.
#
# Note: For some String S, S[i] denotes the ASCII value of the ith 0-indexed character in S. The absolute value of an integer, x, is written as |x|.
#
# Input Format
#
# The first line contains an integer, T (the number of test cases).
# Each line i of the T subsequent lines contain a string, S.
#
# Output Format
#
# For each String Sj (where 0 <= j <= T - 1), print whether it is Funny or Not Funny on a new line.
#
# Sample Input
# 2
# acxz
# bcxz
#
# Sample Output
# Funny
# Not Funny
#
# Explanation
#
# Test Case 0: S = "acxz"
# |c - a| = 2 = |x - z|
# |x - c| = 21 = |c - x|
# |z - x| = 2 = |a - c|
# As each comparison is equal, we print Funny.
#
# Test Case 1: S = "bcxz"
# |c - b| = 1, but |x - z| = 2
# At this point, we stop evaluating S (as |c - b| != |x - z|) and print Not Funny.

# Enter your code here. Read input from STDIN. Print output to STDOUT
T = gets.strip.to_i

for a0 in (0..T-1)
    s = gets.strip
    r = s.reverse
    length = s.length
    (1..length-1).each do |idx|
        if (s[idx].ord-s[idx-1].ord).abs != (r[idx].ord-r[idx-1].ord).abs
           puts 'Not Funny'
           break
        end
        if ((s[idx].ord-s[idx-1].ord).abs == (r[idx].ord-r[idx-1].ord).abs) && (idx == length-1)
           puts 'Funny'
        end
    end

end

# asdf
