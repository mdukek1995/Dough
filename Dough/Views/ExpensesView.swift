//
//  ExpensesView.swift
//  Dough
//
//  Created by Megan Dukek on 10/26/22.
//

import SwiftUI

struct ExpensesView: View {
    
    @State var string: String = ""
    @State var double: Double = 0.0
    
    func save() {
        double = Double(string)!
    }
    let formatter: NumberFormatter = {
            let formatter = NumberFormatter()
            formatter.numberStyle = .decimal
            return formatter
        }()

    
    var body: some View {
        Form {
           TextField("", text: $string)
               .disableAutocorrection(true)
           HStack {
               Text("Cost")
               Spacer()
               TextField("", value: $double, formatter: formatter)
                   .fixedSize()
                   .keyboardType(.decimalPad)
           }
           // show live value changes
            Text("String: \(string) Double: \(String(double))")
            TextField("0.00", text: $string).keyboardType(.decimalPad)
            Button(action: save) { Text("Save") }
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
