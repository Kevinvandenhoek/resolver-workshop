//
//  ServiceAssembly.swift
//  Resolver Workshop
//
//  Created by Kevin van den Hoek on 28/10/2021.
//

import Resolver

struct ServiceAssembly: Assembly {
    
    func assemble(container: Container) {
        container.autoregister(LoginWorker.self, initializer: LoginService.init)
        container.autoregister(APIWorker.self, initializer: APIService.init)
        container.autoregister(AWorker.self, initializer: AService.init)
        container.autoregister(BWorker.self, initializer: BService.init)
        container.autoregister(CWorker.self, initializer: CService.init)
    }
}
