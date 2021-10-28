//
//  Resolver+Extension.swift
//  Resolver Workshop
//
//  Created by Kevin van den Hoek on 28/10/2021.
//

import Resolver

typealias Container = Resolver

protocol Assembly {
    func assemble(container: Container)
}

struct Provider<Service> {
    
    var instance: Service {
        Resolver.main.resolve()
    }
}

extension Resolver {
    
    @discardableResult
    func register<Service>(_ service: Service.Type, factory: @escaping (Resolver) -> Service) -> ResolverOptions<Service> {
        return register(factory: { factory(self) as Service })
    }
    
    @discardableResult
    func autoregister<Service>(_ service: Service.Type, initializer: @escaping () -> Service) -> ResolverOptions<Service> {
        return register(factory: { initializer() as Service })
    }
    
    @discardableResult
    func autoregister<Service, A>(_ service: Service.Type, initializer: @escaping (A) -> Service) -> ResolverOptions<Service> {
        return register(factory: {
            initializer(self.resolve()) as Service
        })
    }
    
    @discardableResult
    func autoregister<Service, A, B>(_ service: Service.Type, initializer: @escaping (A, B) -> Service) -> ResolverOptions<Service> {
        return register(factory: {
            initializer(self.resolve(), self.resolve()) as Service
        })
    }
    
    @discardableResult
    func autoregister<Service, A, B, C>(_ service: Service.Type, initializer: @escaping (A, B, C) -> Service) -> ResolverOptions<Service> {
        return register(factory: {
            initializer(self.resolve(), self.resolve(), self.resolve()) as Service
        })
    }
    
    @discardableResult
    func autoregister<Service, A, B, C, D>(_ service: Service.Type, initializer: @escaping (A, B, C, D) -> Service) -> ResolverOptions<Service> {
        return register(factory: {
            initializer(self.resolve(), self.resolve(), self.resolve(), self.resolve()) as Service
        })
    }
}

enum SwinjectObjectScope {
    case container
    
    var resolverScope: ResolverScope {
        switch self {
        case .container:
            return .application
        }
    }
}

extension ResolverOptions {
    
    func inObjectScope(_ objectScope: SwinjectObjectScope) -> ResolverOptions<Service> {
        return scope(objectScope.resolverScope)
    }
}
