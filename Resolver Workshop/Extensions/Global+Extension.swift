//
//  Global+Extension.swift
//  Resolver Workshop
//
//  Created by Kevin van den Hoek on 28/10/2021.
//

import Foundation

@discardableResult
public func delay(_ delay: Double, on queue: DispatchQueue = .main, closure: @escaping () -> Void) -> DispatchWorkItem {
    let dispatchWorkItem = DispatchWorkItem(block: closure)
    queue.asyncAfter(deadline: .now() + delay, execute: dispatchWorkItem)
    return dispatchWorkItem
}
