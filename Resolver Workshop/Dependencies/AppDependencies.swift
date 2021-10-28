//
//  AppDependencies.swift
//  Resolver Workshop
//
//  Created by Kevin van den Hoek on 28/10/2021.
//

import Swinject

struct AppDependencies {
    
    let container = Container()
    
    init() {
        let assemblies: [Assembly] = [
            SingletonAssembly(),
            ServiceAssembly(),
            SceneAssembly()
        ]
        assemblies.forEach({ $0.assemble(container: container) })
    }
}

extension AppDependencies {
    
    func resolve<Service>() -> Service {
        return container.resolve(Service.self)!
    }
    
    func resolve<Service>(_ type: Service.Type) -> Service {
        return container.resolve(Service.self)!
    }
}
