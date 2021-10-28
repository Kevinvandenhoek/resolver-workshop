//
//  LoginWorker.swift
//  Resolver Workshop
//
//  Created by Kevin van den Hoek on 28/10/2021.
//

import Foundation

protocol LoginWorker {
    func login(_ completion: @escaping (Bool) -> Void)
}

struct LoginService: LoginWorker {
    
    func login(_ completion: @escaping (Bool) -> Void) {
        completion(true)
    }
}
