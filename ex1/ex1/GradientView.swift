//
//  GradientView.swift
//  ex1
//
//  Created by Кох Александр Станиславович on 02.07.2023.
//

import UIKit

final class GradientView: UIView {

    private let gradient: CAGradientLayer = CAGradientLayer()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        layer.cornerRadius = 10
        layer.masksToBounds = true
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSublayers(of layer: CALayer) {
        super.layoutSublayers(of: layer)
        gradient.frame = bounds
    }

    override public func draw(_ rect: CGRect) {
        let blue = UIColor(named: "BlueColor")
        let red = UIColor(named: "RedColor")
        gradient.frame = bounds
        gradient.colors = [blue?.cgColor ?? UIColor.blue, red?.cgColor ?? UIColor.red]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 1)
        if gradient.superlayer == nil {
            layer.insertSublayer(gradient, at: 0)
        }
    }
}
