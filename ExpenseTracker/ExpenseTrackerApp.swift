//
//  ExpenseTrackerApp.swift
//  ExpenseTracker
//
//  Created by Joshua David Ang on 18/6/22.
//

import SwiftUI

@main
struct ExpenseTrackerApp: App {
    
    @StateObject var transactionListVMM = TransactionListViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(transactionListVMM)
        }
    }
}
