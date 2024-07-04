//
//  File.swift
//  
//
//  Created by Personal on 05/07/24.
//

import Foundation

public struct Stack<Element> {
    private var elements: [Element] = []

    public init() {}

    public mutating func push(_ element: Element) {
        elements.append(element)
    }

    public mutating func pop() -> Element? {
        return elements.popLast()
    }

    public func peek() -> Element? {
        return elements.last
    }

    public var isEmpty: Bool {
        return elements.isEmpty
    }

    public var count: Int {
        return elements.count
    }
}
