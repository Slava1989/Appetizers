//
//  String+Ext.swift
//  Appetizers
//
//  Created by Slava Chirita on 13.01.2024.
//

import Foundation

extension String {
    var isValid: Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPredicate.evaluate(with: self)
    }
}
