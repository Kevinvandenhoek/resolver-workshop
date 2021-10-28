//
//  APIWorker.swift
//  Resolver Workshop
//
//  Created by Kevin van den Hoek on 28/10/2021.
//

import Foundation

protocol APIWorker {
    func call()
}

struct APIService: APIWorker {
    func call() { }
}

protocol AWorker {
    
}

struct AService: AWorker {
    
}

protocol BWorker {
    
}

struct BService: BWorker {
    
}

protocol CWorker {
    
}

struct CService: CWorker {
    
}
