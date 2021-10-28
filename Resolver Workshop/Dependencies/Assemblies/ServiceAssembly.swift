//
//  ServiceAssembly.swift
//  Resolver Workshop
//
//  Created by Kevin van den Hoek on 28/10/2021.
//

import Swinject
import SwinjectAutoregistration

struct ServiceAssembly: Assembly {
    
    func assemble(container: Container) {
        container.autoregister(LoginWorker.self, initializer: LoginService.init)
    }
}
