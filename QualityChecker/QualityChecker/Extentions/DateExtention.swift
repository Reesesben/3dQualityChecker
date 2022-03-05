//
//  DateExtention.swift
//  QualityChecker
//
//  Created by Ben Erekson on 3/5/22.
//

import Foundation

extension Date {
    func asString() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        return dateFormatter.string(from: self)
    }
}
