//
//  LateInjected.swift
//  Resolver Workshop
//
//  Created by Kevin van den Hoek on 28/10/2021.
//

import Foundation
import Resolver

@propertyWrapper
struct LateInjected<Service> {
    
    private let container = LazyContainer<Service>()
    var wrappedValue: Service {
        container.value
    }
}

final private class LazyContainer<Service> {
    
    lazy var value: Service = { return Resolver.main.resolve(Service.self) }()
}
