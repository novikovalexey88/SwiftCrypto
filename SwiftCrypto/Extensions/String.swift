//
//  String.swift
//  SwiftCrypto
//
//  Created by 668 on 13.02.2022.
//

import Foundation

extension String {
    
    var removingHTMLOccurance: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
