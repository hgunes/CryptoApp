//
//  Double.swift
//  CryptoApp
//
//  Created by Harun Gunes on 21/11/2022.
//

import Foundation

extension Double {
    
    private var currencyFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.currencySymbol = "zł"
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 6
        return formatter
    }
    
    func currencyFormatToString() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter.string(from: number) ?? "zł 0,00"
    }
    
    func currencyToString() -> String {
        return String(format: "%.2f", self)
    }
    
    func percentToString() -> String {
        return currencyToString() + " %"
    }
}
