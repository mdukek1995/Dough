//
//  ExpensesView.swift
//  Dough
//
//  Created by Megan Dukek on 10/26/22.
//

import SwiftUI

struct ExpensesView: View {
    
    @State var string: String = ""
    @State var float: Float = 0.00
    
    func save() {
        float = Float(string)!
    }
    let formatter: NumberFormatter = {
            let formatter = NumberFormatter()
            formatter.numberStyle = .decimal
            return formatter
        }()

    
    var body: some View {
        Form {
           TextField("Expense type", text: $string)
               .disableAutocorrection(true)
           HStack {
               Spacer()
               TextField("0.00", value: $float, formatter: formatter)
                   .fixedSize()
                   .keyboardType(.decimalPad)
               Button(action: save) { Text("Save") }
           }
       }
       .padding()
   }
   func saveToCoreData() {
       // save values into core data
   }
}
struct ExpensesView_Previews: PreviewProvider {
    static var previews: some View {
        ExpensesView()
    }
}
