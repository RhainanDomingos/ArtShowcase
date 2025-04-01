//
//  UIViewController+Extension.swift
//  ArtShowcase
//
//  Created by Rhainan Domingos on 01/04/25.
//

import Foundation
import UIKit

extension UIViewController {
    func dismissKeyboard() {
        let tap = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing(_:)))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
}
