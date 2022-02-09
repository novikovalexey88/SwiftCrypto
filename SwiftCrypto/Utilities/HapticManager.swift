//
//  HapticManager.swift
//  SwiftCrypto
//
//  Created by 668 on 01.02.2022.
//

import Foundation
import SwiftUI

class HapticManager {
    
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
      generator.notificationOccurred(type)
    }
    
}
