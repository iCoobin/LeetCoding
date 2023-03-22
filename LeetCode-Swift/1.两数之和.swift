/*
 * @lc app=leetcode.cn id=1 lang=swift
 *
 * [1] 两数之和
 */

// @lc code=start
class Solution {
    // 时间复杂度 O(n)
    // 空间复杂度 O(n)
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        // 两数之和，返回下标
        var dict = [Int: Int]() // 用于存储数组中的值和下标
        for i in 0..<nums.count {
            let num = nums[i]
            if let index = dict[target - num] {
                return [index, i]
            }
            dict[num] = i
        }
        return []
    }
}
// @lc code=end

