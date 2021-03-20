//
//  UIButton.swift
//  CommonExtension
//
//  Created by Codigo Sheilar on 09/01/2020.
//  Copyright © 2020 42dot. All rights reserved.
//

import UIKit

public extension UIButton {
    func setBackgroundColor(_ color: UIColor, for state: UIControl.State) {
        UIGraphicsBeginImageContext(CGSize(width: 1.0, height: 1.0))
        guard let context = UIGraphicsGetCurrentContext() else {
            return
        }
        context.setFillColor(color.cgColor)
        context.fill(CGRect(x: 0.0, y: 0.0, width: 1.0, height: 1.0))

        let backgroundImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        self.setBackgroundImage(backgroundImage, for: state)
    }

    func setShadowRoundStyle() {
        self.layer.cornerRadius = self.bounds.height / 2
        self |> applySketchShadow(color: .black, alpha: 0.12, xPoint: 0, yPoint: 1, blur: 6, spread: 0)
    }
}
