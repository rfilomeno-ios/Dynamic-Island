//
//  Extensions.swift
//  Dynamic Island
//
//  Created by Rodrigo Filomeno on 03/06/23.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...){
        views.forEach({
            addSubview($0)
        })
    }
}
