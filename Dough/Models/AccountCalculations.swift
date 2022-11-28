//
//  AccountCalculations.swift
//  Dough
//
//  Created by Megan Dukek on 10/10/22.
//

import Foundation


struct AccountCalculations {
    
    
    var expenses: Float = 1700
    
    var income: Float = 2000
    var goal: Float = 250
    
    func excess() -> Float {
        let excessMoney = income-expenses
        return excessMoney
    }
    
    func spendings() -> Float {
        let spendingMoney = excess()-goal
        return spendingMoney
    }
}


