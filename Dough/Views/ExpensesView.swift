//
//  ExpensesView.swift
//  Dough
//
//  Created by Megan Dukek on 10/26/22.
//

import SwiftUI

struct ExpensesView: View {
    
    @State var expenseType: String = ""
    @State var cost = Float()
    
    
    let formatter: NumberFormatter = {
            let formatter = NumberFormatter()
            formatter.numberStyle = .currency
            return formatter
        }()
    
    func save() {
        let value = Float(cost) 
        var totalExpenses : [String:Float] = [:]
        totalExpenses[expenseType]=value
        print(totalExpenses)
    }
    
    
    var body: some View {
        VStack {
            VStack{
           TextField("Expense type", text: $expenseType)
               .disableAutocorrection(true)
               .padding()
               .background(
                              VStack {
                                  Spacer()
                                  Color(UIColor.systemGray4)
                                      .frame(height: 2)
                              }
                          )
           HStack {
               TextField("$", value: $cost, formatter: formatter)
                   .fixedSize()
                   .keyboardType(.decimalPad)
               Spacer()
           }
            .padding()
        
            }
            .overlay {
                       RoundedRectangle(cornerRadius: 8, style: .continuous)
                           .stroke(Color(UIColor.systemGray4), lineWidth: 2)
            }
            .padding()
    

            HStack {
                Spacer()
                Button(action: save) { Image(systemName: "chevron.down.circle.fill")
                        .font(.system(size: 40))
                        .padding(.leading, 8.0)
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
