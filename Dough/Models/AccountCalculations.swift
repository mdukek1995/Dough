//
//  AccountCalculations.swift
//  Dough
//
//  Created by Megan Dukek on 10/10/22.
//

import Foundation


struct AccountCalculations {
    var totalExpenses = ExpensesView().totalExpenses
    
    let expenses = ExpensesView().totalExpenses.compactMap { $0.value }.reduce(0, +)
    
 
    
    var income: Float = 2000.00
    var goal: Float = 250.00
    
    func excess() -> Float {
        let excessMoney = income-expenses
        return excessMoney
    }
    
    func spendings() -> Float {
        let spendingMoney = excess()-goal
        return spendingMoney
    }
}


