//
//  AccountCalculations.swift
//  Dough
//
//  Created by Megan Dukek on 10/10/22.
//

import Foundation

struct AccountCalculations {
    //calculating financials -will need user input//
   // let accountView = AccountView.self

    //let expenses = accountView.expenses
   // let income = accountView.income
    var income: Double = 2000
    var expenses: Double = 1700
    var goal: Double = 250
    
    func excess() -> Double {
        let excessMoney = income-expenses
        return excessMoney
    }
    
    func spendings() -> Double {
        let spendingMoney = excess()-goal
        return spendingMoney
    }
}