/*
 * @lc app=leetcode.cn id=203 lang=swift
 *
 * [203] 移除链表元素
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
    /// 遍历链表，val 相同的元素删除
    /// - Parameters:
    ///   - head: 链表 head
    ///   - val: val 值
    /// - Returns: 新的链表
    /// 时间复杂度 O(n)
    /// 空间复杂度 O(1)
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        var newHead: ListNode = ListNode()
        newHead.next = head
        var prev : ListNode? = newHead
        while (prev?.next != nil) {
            let temp : ListNode = prev?.next as! ListNode
            if temp.val == val {
                prev?.next = temp.next
            } else {
                prev = temp
            }
        }
        return newHead.next
    }
}
// @lc code=end

