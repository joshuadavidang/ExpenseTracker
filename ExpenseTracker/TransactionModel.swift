//
//  TransactionModel.swift
//  ExpenseTracker
//
//  Created by Joshua David Ang on 18/6/22.
//

import SwiftUI
import SwiftUIFontIcon

struct Transaction: Identifiable, Decodable, Hashable {
    let id: Int
    let date: String
    let institution: String
    let account: String
    var merchant: String
    let amount: Double
    let type: TransactionType.RawValue
    var categoryId: Int
    var category: String
    let isPending: Bool
    var isTransfer: Bool
    var isExpense: Bool
    var isEdited: Bool
    
    var icon: FontAwesomeCode {
        if let category = Category.all.first(where: { $0.id == categoryId }) {
            return category.icon
        }
        
        return .question
    }
    
    var dateParsed: Date {
        date.dateParse()
    }
    var signedAmount: Double {
        return type == TransactionType.credit.rawValue ? amount : -amount
    }
}

enum TransactionType: String {
    case debit = "debit"
    case credit = "credit"
}

struct Category {
    let id: Int
    let name: String
    let icon: FontAwesomeCode
    var mainCategoryId: Int?
}

extension Category {
    static let autoAndTransport = Category(id: 1, name: "Auto & Transport", icon: .car_alt)
    
    static let publicTransportation = Category(id: 101, name: "Public Transportation", icon: .bus, mainCategoryId: 1)
}

extension Category {
    static let categories: [Category] = [
        .autoAndTransport
    ]
    
    static let subCategories: [Category] = [
        .publicTransportation]
    
    static let all: [Category] = categories + subCategories
    
}
