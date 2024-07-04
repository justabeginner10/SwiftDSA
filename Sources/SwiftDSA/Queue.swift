//
//  File.swift
//  
//
//  Created by Personal on 05/07/24.
//

import Foundation

public struct Queue<Element> {
    private var elements: [Element] = []

    public init() {}

    public mutating func enqueue(_ element: Element) {
        elements.append(element)
    }

    public mutating func dequeue() -> Element? {
        guard !elements.isEmpty else { return nil }
        return elements.removeFirst()
    }

    public var isEmpty: Bool {
        return elements.isEmpty
    }

    public var count: Int {
        return elements.count
    }
}
