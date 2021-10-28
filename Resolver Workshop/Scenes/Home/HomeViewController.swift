//
//  HomeViewController.swift
//  Resolver Workshop
//
//  Created by Kevin van den Hoek on 28/10/2021.
//

import UIKit
import EasyPeasy

final class HomeViewController: ViewController {
    
    // MARK: Properties
    private let loginWorker: LoginWorker
    
    private lazy var label: UILabel = makeLabel()
    
    // MARK: Lifecycle
    required init?(coder: NSCoder) { fatalError() }
    
    init(loginWorker: LoginWorker) {
        self.loginWorker = loginWorker
        super.init(nibName: nil, bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
}

// MARK: Setup
private extension HomeViewController {
    
    func setup() {
        view.backgroundColor = .for(.background);
        view.addSubview(label)
        label.easy.layout(Edges())
        
        label.text = "Logging in..."
        loginWorker.login({ didLogin in
            self.label.text = "Is logged in: \(didLogin)"
        })
    }
}

// MARK: Factory
private extension HomeViewController {
    
    func makeLabel() -> UILabel {
        let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont(name: "Baskerville-Bold", size: 40)
        label.textColor = .for(.text);
        return label
    }
}
