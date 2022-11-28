//
//  ExpensesView.swift
//  Dough
//
//  Created by Megan Dukek on 10/26/22.
//

import SwiftUI

struct ExpensesView: View {
    
    @State var string: String = ""
    @State var float: Float = 0
    
    
    let formatter: NumberFormatter = {
            let formatter = NumberFormatter()
            formatter.numberStyle = .decimal
            return formatter
        }()
    
    func save() {
        print("Hi")
    }
    
    var body: some View {
        Form {
           TextField("Expense type", text: $string)
               .disableAutocorrection(true)
           HStack {
               TextField("$", value: $float, formatter: formatter)
                   .fixedSize()
                   .keyboardType(.decimalPad)
               Spacer()
           }
            HStack {
                Spacer()
                Button(action: save) { Image(systemName: "chevron.down.circle.fill")
                        .font(.system(size: 40))
                Spacer()
   
            }
            }}
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
