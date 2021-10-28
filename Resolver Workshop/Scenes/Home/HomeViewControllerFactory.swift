//
//  HomeViewControllerFactory.swift
//  Resolver Workshop
//
//  Created by Kevin van den Hoek on 28/10/2021.
//

import Foundation
import Resolver
import UIKit

struct HomeViewControllerFactory {
    
    let loginWorkerProvider: Provider<LoginWorker> = .init()
    
    func make() -> HomeViewController {
        return HomeViewController(
            loginWorker: loginWorkerProvider.instance
        )
    }
}
