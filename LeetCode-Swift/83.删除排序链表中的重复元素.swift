/*
 * @lc app=leetcode.cn id=83 lang=swift
 *
 * [83] 删除排序链表中的重复元素
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

    /// 递归法，下一个无重复的链表是当前的 .next
    /// time: O(n)
    /// space: O(n) func 堆栈
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        if head == nil {
            return head
        }
        head?.next = deleteDuplicates(head?.next)
        if head?.val == head?.next?.val {
            head?.next = head?.next?.next
        }
        return head
    }


    /// 由于是排序链表，只需要每次把相邻重复的后面的 node 删除就可以了
    /// time: O(n)
    /// space: O(1)
    /// - Parameter 
    /// - head: 链表头
    /// - Returns: 新的链表
    // func deleteDuplicates(_ head: ListNode?) -> ListNode? {
    //     var prev = head
    //     while prev?.next != nil {
    //         if prev?.val == prev?.next?.val {
    //             prev?.next = prev?.next?.next
    //         } else {
    //             prev = prev?.next
    //         }
    //     }
    //     return head
    // }


    /// 删除链表中重复的元素
    /// 解题思路，使用hash表存储已出现过的数值
    /// - Parameter 
    /// - head: 链表头
    /// - Returns: 返回一个新的链表
    /// 时间复杂度 O(n)
    /// 空间复杂度 O(n)
    // func deleteDuplicates(_ head: ListNode?) -> ListNode? {
    //     var map = [Int:Int]()
    //     var prev = head
    //     while prev?.next != nil {
    //         map[prev!.val] = prev!.val
    //         if map[prev!.next!.val] == prev?.next?.val {
    //             prev?.next = prev?.next?.next
    //         } else {
    //             prev = prev?.next
    //         }
    //     }
    //     return head
    // }
}
// @lc code=end

