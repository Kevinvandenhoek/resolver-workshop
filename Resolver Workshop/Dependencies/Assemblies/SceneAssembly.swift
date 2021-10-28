//
//  SceneAssembly.swift
//  Resolver Workshop
//
//  Created by Kevin van den Hoek on 28/10/2021.
//

import UIKit
import Resolver

struct SceneAssembly: Assembly {
    
    func assemble(container: Container) {
        container.autoregister(HomeViewControllerFactory.self, initializer: HomeViewControllerFactory.init)
    }
}
