# A numeric string, s, is beautiful if it can be split into a sequence of two or more positive integers, a1, a2, ..., an, satisfying the following conditions:
#
# ai - a(i-1) = 1 for any 1 < i <= n (i.e., each element in the sequence is 1 more than the previous element).
# No ai contains a leading zero. For example, we can split s = 10203 into the sequence {1, 02, 03}, but it is not beautiful because 02 and 03 have leading zeroes.
# The contents of the sequence cannot be rearranged. For example, we can split s = 312 into the sequence {3, 1, 2}, but it is not beautiful because it breaks our first constraint (i.e., 1 - 3 != 1).
# The diagram below depicts some beautiful strings:
#
# You must perform q queries, where each query consists of some string s. For each query, print whether or not the string is beautiful on a new line. If it's beautiful, print YES x, where x is the first number of the increasing sequence (if there are multiple such values of x, choose the smallest); otherwise, print NO instead.
#
# Input Format
#
# The first line contains an integer denoting q (the number of strings to evaluate).
# Each of the q subsequent lines contains some string s for a query.
#
# Output Format
#
# For each query, print its answer on a new line (i.e., either YES x where x is the smallest first number of the increasing sequence, or NO).
#
# Sample Input 0
#
# 7
# 1234
# 91011
# 99100
# 101103
# 010203
# 13
# 1
# Sample Output 0
#
# YES 1
# YES 9
# YES 99
# NO
# NO
# NO
# NO
# Explanation 0
#
# The first three numbers are beautiful (see the diagram above). The remaining numbers are not beautiful:
#
# For , all possible splits violate the first and/or second conditions.
# For , it starts with a zero so all possible splits violate the second condition.
# For , the only possible split is , which violates the first condition.
# For , there are no possible splits because  only has one digit.
