//
//  Injected.swift
//  Resolver Workshop
//
//  Created by Kevin van den Hoek on 28/10/2021.
//

import Resolver

@propertyWrapper
struct Injected<Service> {
    
    let wrappedValue: Service
    
    init() {
        wrappedValue = Resolver.main.resolve()
    }
}
