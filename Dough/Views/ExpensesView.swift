//
//  ExpensesView.swift
//  Dough
//
//  Created by Megan Dukek on 10/26/22.
//

import SwiftUI

struct ExpensesView: View {
    
    @State var rent: Double
    @State var insurance: Double
    @State var food: Double
    
    var body: some View {
        VStack {
            TextField(
                   "Enter rent total",
                   text: $rent
                   )}
    }
}

struct ExpensesView_Previews: PreviewProvider {
    static var previews: some View {
        ExpensesView()
    }
}
