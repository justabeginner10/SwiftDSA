//
//  File.swift
//  
//
//  Created by Personal on 05/07/24.
//

import Foundation

public class LinkedListNode<Element> {
    public var value: Element
    public var next: LinkedListNode?

    public init(value: Element, next: LinkedListNode? = nil) {
        self.value = value
        self.next = next
    }
}

public class LinkedList<Element> {
    public var head: LinkedListNode<Element>?

    public init() {}

    public func append(_ value: Element) {
        let newNode = LinkedListNode(value: value)
        if var lastNode = head { // Use `var` to allow reassignment
            while let next = lastNode.next {
                lastNode = next
            }
            lastNode.next = newNode
        } else {
            head = newNode
        }
    }

    public func removeFirst() -> Element? {
        let firstValue = head?.value
        head = head?.next
        return firstValue
    }

    public var isEmpty: Bool {
        return head == nil
    }
}
