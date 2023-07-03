//
//  ViewController.swift
//  ex1
//
//  Created by Кох Александр Станиславович on 02.07.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    private let gradientView = GradientView()
    
    private var mainView: UIView = {
        let view = UIView()
        view.layer.shadowRadius = 8
        view.layer.shadowOffset = CGSize(width: 3, height: 3)
        view.layer.shadowOpacity = 0.5
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        view.addSubview(mainView)
        mainView.addSubview(gradientView)
        
        NSLayoutConstraint.activate([
            mainView.heightAnchor.constraint(equalToConstant: 100),
            mainView.widthAnchor.constraint(equalToConstant: 100),
            mainView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            mainView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            gradientView.centerYAnchor.constraint(equalTo: mainView.centerYAnchor),
            gradientView.centerXAnchor.constraint(equalTo: mainView.centerXAnchor),
            gradientView.heightAnchor.constraint(equalTo: mainView.heightAnchor),
            gradientView.widthAnchor.constraint(equalTo: mainView.widthAnchor)
        ])
    }
}
