//
//  SingletonAssembly.swift
//  Resolver Workshop
//
//  Created by Kevin van den Hoek on 28/10/2021.
//

import UIKit
import Swinject
import SwinjectAutoregistration

struct SingletonAssembly: Assembly {
    
    func assemble(container: Container) {
        container.register(UIWindow.self, factory: { _ in UIWindow() }).inObjectScope(.container)
    }
}
