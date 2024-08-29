//
//  UIView + Ext.swift
//  FuckYouLottieSwUI
//
//  Created by Victor on 28.08.2024.
//

import SwiftUI

extension UIView {
    func pin(to superView: UIView) {
        translatesAutoresizingMaskIntoConstraints                             = false
        topAnchor.constraint(equalTo: superView.topAnchor).isActive           = true
        leadingAnchor.constraint(equalTo: superView.leadingAnchor).isActive   = true
        trailingAnchor.constraint(equalTo: superView.trailingAnchor).isActive = true
        bottomAnchor.constraint(equalTo: superView.bottomAnchor).isActive     = true
    }
}
