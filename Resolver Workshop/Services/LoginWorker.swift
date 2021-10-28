//
//  LoginWorker.swift
//  Resolver Workshop
//
//  Created by Kevin van den Hoek on 28/10/2021.
//

import Foundation
import Resolver

protocol LoginWorker {
    func login(_ completion: @escaping (Bool) -> Void)
}

struct LoginService: LoginWorker {
    
    @LateInjected var apiWorker: APIWorker
    
    func login(_ completion: @escaping (Bool) -> Void) {
        apiWorker.call()
        delay(1) {
            completion(true)
        }
    }
}
