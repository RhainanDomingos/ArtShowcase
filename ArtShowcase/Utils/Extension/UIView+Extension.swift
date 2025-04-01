//
//  UIView+Extension.swift
//  ArtShowcase
//
//  Created by Rhainan Domingos on 01/04/25.
//

import Foundation
import UIKit

extension UIView {
    
    func roundCorners(cornerRadiuns: Double,typeCorners: CACornerMask){
        self.layer.cornerRadius = CGFloat(cornerRadiuns)
        self.clipsToBounds = true
        self.layer.maskedCorners = typeCorners
    }
    
}
