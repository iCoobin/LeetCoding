/*
 * @lc app=leetcode.cn id=258 lang=swift
 *
 * [258] 各位相加
 */

// @lc code=start
class Solution {

    /// 数学解法，直观解法
    /// 时间复杂度：O(1)
    /// 空间复杂度：O(1)
    func addDigits(_ num: Int) -> Int {
        if num == 0 {
            return 0
        } else if num%9 == 0 {
            return 9
        } else {
            return num % 9
        }
    }


    /// 解题思路：数学解法
    /// 1. 0-9 的各位相加结果都是 0-9
    /// 2. 10-18 的各位相加结果都是 1-9 
    /// 3. 19-27 的各位相加结果都是 1-9
    /// 4. 28-36 的各位相加结果都是 1-9
    /// 5. 37-45 的各位相加结果都是 1-9
    /// 6. 46-54 的各位相加结果都是 1-9
    /// 7. 55-63 的各位相加结果都是 1-9
    /// 8. 64-72 的各位相加结果都是 1-9
    /// 9. 73-81 的各位相加结果都是 1-9
    /// 10. 82-90 的各位相加结果都是 1-9
    /// 11. 91-99 的各位相加结果都是 1-9
    /// 12. 100-108 的各位相加结果都是 1-9
    /// 时间复杂度：O(1)
    /// 空间复杂度：O(1)
    // func addDigits(_ num: Int) -> Int {
    //     return (num - 1) % 9 + 1
    // }


    // 递归解决办法
    // 每次求一个 sum，如果 sum < 10，返回 sum，否则继续递归
    // 3333 -> 12 -> 3
    // 时间复杂度：O(n)
    // 空间复杂度：O(n)
    // func addDigits(_ num: Int) -> Int {
    //     if num < 10 {
    //         return num
    //     }
    //     var newNum = num
    //     var sum = 0
    //     while newNum > 0 {
    //         sum += newNum % 10
    //         newNum /= 10
    //     }
    //     return addDigits(sum)
    // }

    /// 循环解决办法
    /// 3333 -> 336 -> 39 -> 12 -> 3
    /// 时间复杂度：O(n)
    /// 空间复杂度：O(1)
    // func addDigits(_ num: Int) -> Int {
    //     var newNum = num
    //     while newNum >= 10 {
    //         newNum = newNum % 10 + newNum / 10
    //     }
    //     return newNum
    // }
}
// @lc code=end

