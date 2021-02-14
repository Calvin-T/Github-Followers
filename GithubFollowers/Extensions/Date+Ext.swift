//
//  Date+Ext.swift
//  GithubFollowers
//
//  Created by Calvin Tang on 2/13/21.
//

import Foundation

extension Date {
    func convertToShortMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM d, yyyy"
        return dateFormatter.string(from: self)
    }
}
