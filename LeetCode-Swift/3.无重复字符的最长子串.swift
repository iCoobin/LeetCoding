/*
 * @lc app=leetcode.cn id=3 lang=swift
 *
 * [3] 无重复字符的最长子串
 */

// @lc code=start
class Solution {
    /// 解题思路：滑动窗口，记录每个字符出现的位置
    /// 每次遇到相同的字符出现，重置strat 位置
    /// end - start 取最大值.
    /// 时间复杂度 O(n)
    /// 空间复杂度 O(n)
    /// cabaefgc
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var maxNum = 0
        var start = 0
        var end = 0
        var dict = [Character: Int]()
        for c in s {
            if let index = dict[c] {
                start = max(start, index + 1)
            }
            end += 1
            dict[c] = end - 1
            maxNum = max(maxNum, end - start)
        }
        return maxNum
    }
}
// @lc code=end

