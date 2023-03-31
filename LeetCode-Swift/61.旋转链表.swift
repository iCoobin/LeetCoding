/*
 * @lc app=leetcode.cn id=61 lang=swift
 *
 * [61] 旋转链表
 */

// @lc code=start
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    /// 旋转链表，并右移 k 个位置
    /// 解题思路，遍历到链表末尾，记录节点数 count ，在末尾处将链表连成环状。
    /// 在沿着环遍历 n = count - k % count 次得到新链表首位交点，断开环返回新链表
    /// 时间复杂度 O(n)
    /// 空间复杂度 O(1)
    /// - Parameters:
    ///   - head: 
    ///   - k: 
    /// - Returns: 
    func rotateRight(_ head: ListNode?, _ k: Int) -> ListNode? {
        if head?.next == nil {
            return head
        }
        var newHead: ListNode? = nil
        var prev = head
        var count = 1;
        while prev?.next != nil {
            prev = prev?.next
            count += 1
        }
        prev?.next = head
        var n = count - k % count
        while n > 0 {
            n -= 1
            prev = prev?.next
        }
        newHead = prev?.next
        prev?.next = nil
        return newHead
    }
}
// @lc code=end

