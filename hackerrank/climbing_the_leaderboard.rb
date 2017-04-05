# Alice is playing an arcade game and wants to climb to the top of the leaderboard. Can you help her track her ranking as she beats each level? The game uses Dense Ranking, so its leaderboard works like this:
#
# The player with the highest score is ranked number 1 on the leaderboard.
# Players who have equal scores receive the same ranking number, and the next player(s) receive the immediately following ranking number.
# For example, four players have the scores 100, 90, 90, and 80. Those players will have ranks 1, 2, 2, and 3, respectively.
#
# When Alice starts playing, there are already n people on the leaderboard. The score of each player i is denoted by si. Alice plays for m levels, and we denote her total score after passing each level j as alicej. After completing each level, Alice wants to know her current rank.
#
# You are given an array, scores, of decreasing leaderboard scores, and another array, alice, of Alice's cumulative scores for each level of the game. You must print m integers. The jth integer should indicate the current rank of alice after passing the jth level.
#
# Input Format
#
# The first line contains an integer, n, denoting the number of players already on the leaderboard.
# The next line contains n space-separated integers describing the respective values of scores0, scores1, ..., scores(n-1).
# The next line contains an integer, m, denoting the number of levels Alice beats.
# The last line contains m space-separated integers describing the respective values of alice0, alice1, ..., alice(m-1).
#
# Output Format
#
# Print m integers. The jth integer should indicate the rank of alice after passing the jth level.
#
# Sample Input 0
# 7
# 100 100 50 40 40 20 10
# 4
# 5 25 50 120
#
# Sample Output 0
# 6
# 4
# 2
# 1
#
# Explanation 0
# Alice starts playing with 7 players already on the leaderboard, which looks like this:
#
# After Alice finishes level 0, her score is 5 and her ranking is 6:
#
# After Alice finishes level 1, her score is 25 and her ranking is 4:
#
# After Alice finishes level 2, her score is 50 and her ranking is tied with Caroline at 2:
#
# After Alice finishes level 3, her score is 120 and her ranking is 1:

#!/bin/ruby

n = gets.strip.to_i
scores = gets.strip
scores = scores.split(' ').map(&:to_i)
m = gets.strip.to_i
alice = gets.strip
alice = alice.split(' ').map(&:to_i)
# your code goes here

def b_search(array, target)


    mid_idx = array.length / 2
    mid_num = array[mid_idx]

    return mid_idx if array.length < 1

    if target == mid_num
        return mid_idx
    elsif target < mid_num
        idx = b_search(array[(mid_idx + 1)..-1], target)
        return (idx + mid_idx + 1)
    else
        return b_search(array[0...mid_idx], target)
    end

end

mod_scores = scores.uniq


alice.each do |ascore|
    idx = b_search(mod_scores, ascore)
    puts idx + 1
end
