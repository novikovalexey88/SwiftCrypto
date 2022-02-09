//
//  UIApplication.swift
//  SwiftCrypto
//
//  Created by 668 on 27.01.2022.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
