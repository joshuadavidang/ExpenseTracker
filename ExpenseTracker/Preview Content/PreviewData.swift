//
//  PreviewData.swift
//  ExpenseTracker
//
//  Created by Joshua David Ang on 18/6/22.
//

import SwiftUI

var transactionPreviewData = Transaction(id: 1, date: "18/06/2022", institution: "Apple Store Marina Bay Sands",
                                         account: "DBS Live Fresh Credit Card", merchant: "Apple", amount: 2769, type: "debit",
                                         categoryId: 801, category: "MacBook Pro", isPending: false, isTransfer: false, isExpense: true, isEdited: false)

var transactionListPreviewData = [Transaction](repeating: transactionPreviewData, count: 10)
