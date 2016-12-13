//
//  MBView.swift
//  Pods
//
//  Created by Perry on 16/7/7.
//
//

import Foundation

extension UIView {
    func addMBSubView(_ subview:UIView, insets:UIEdgeInsets) {
        
        self.addSubview(subview)
        
        subview.translatesAutoresizingMaskIntoConstraints = false
        
        let views:[String:UIView] = ["subview":subview]
        let layoutStringH:String = "H:|-" + String(describing: insets.left) + "-[subview]-" + String(describing: insets.right) + "-|"
        let layoutStringV:String = "V:|-" + String(describing: insets.top) + "-[subview]-" + String(describing: insets.bottom) + "-|"
        let contraintsH:[NSLayoutConstraint] = NSLayoutConstraint.constraints(withVisualFormat: layoutStringH, options:NSLayoutFormatOptions(rawValue: 0), metrics:nil, views: views)
        let contraintsV:[NSLayoutConstraint] = NSLayoutConstraint.constraints(withVisualFormat: layoutStringV, options:NSLayoutFormatOptions(rawValue: 0), metrics:nil, views: views)
        
        self.addConstraints(contraintsH)
        self.addConstraints(contraintsV)
    }
}