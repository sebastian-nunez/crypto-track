//
//  Double.swift
//  crypto-track
//
//  Created by Sebastian on 12/5/23.
//

import Foundation

extension Double {
    private var currencyFormatter: NumberFormatter {
        let formatter = NumberFormatter()

        // config
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2

        return formatter
    }

    func toCurrency() -> String {
        return currencyFormatter.string(for: self) ?? "$0.00"
    }
}
