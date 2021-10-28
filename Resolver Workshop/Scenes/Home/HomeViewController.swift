//
//  HomeViewController.swift
//  Resolver Workshop
//
//  Created by Kevin van den Hoek on 28/10/2021.
//

import UIKit

final class HomeViewController: UIViewController {
    
    let loginWorker: LoginWorker
    
    required init?(coder: NSCoder) { fatalError() }
    
    init(loginWorker: LoginWorker) {
        self.loginWorker = loginWorker
        super.init(nibName: nil, bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
    }
}
