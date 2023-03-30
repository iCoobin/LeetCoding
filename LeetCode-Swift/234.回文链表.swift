/*
 * @lc app=leetcode.cn id=234 lang=swift
 *
 * [234] 回文链表
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
    /// 解题思路：
    /// 时间复杂度要求：O(n)
    /// 空间复杂度要求：O(1)
    /// 通过快慢指针，当快指针到达末尾时，慢指针刚好到达中点。
    /// 慢指针从中点开始反转末尾的链表得到新的链表
    /// 从新比对两条链表释放一致，一致则是回文链表
    func isPalindrome(_ head: ListNode?) -> Bool {
        var fast: ListNode? = head
        var slow: ListNode? = head
        while fast != nil && fast?.next != nil {
            fast = fast?.next?.next
            slow = slow?.next
        }
        if fast != nil {
            slow = slow?.next
        }
        slow = reverse(slow)
        fast = head
        while slow != nil {
            if fast?.val != slow?.val {
                return false
            }
            fast = fast?.next
            slow = slow?.next
        }
        return true
    }

    func reverse(_ head: ListNode?) -> ListNode? {
        var head = head
        var prev: ListNode? = nil
        while head != nil {
            let next = head?.next
            head?.next = prev
            prev = head
            head = next
        }
        return prev
    }
}
// @lc code=end

