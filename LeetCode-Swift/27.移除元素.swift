/*
 * @lc app=leetcode.cn id=27 lang=swift
 *
 * [27] 移除元素
 */

// @lc code=start
class Solution {

    // 时间复杂度 O(n)
    // 空间复杂度 O(1)
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        nums = nums.filter{ $0 != val}
        return nums.count
    }

    // func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    //     // 移除元素，返回新数组长度
    //     var num = 0 // 记录新数组长度
    //     for i in 0..<nums.count {
    //         if nums[i] != val {
    //             nums[num] = nums[i]
    //             num += 1
    //         }
    //     }
    //     return num
    // }
}
// @lc code=end

