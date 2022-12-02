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
    @State var totalExpenses : [String:Float] = [:]

    
    
    let formatter: NumberFormatter = {
            let formatter = NumberFormatter()
            formatter.numberStyle = .currency
            return formatter
        }()
    
    
    var body: some View {
        NavigationView{
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
                        .padding(.trailing, 40.0)
                        .font(.system(size: 40))
                }

            }
            
        }}
        .padding()
   }
    func save() {
        @State var value = Float(cost)
        totalExpenses[expenseType]=value
        print(totalExpenses)
    }
}
struct ExpensesView_Previews: PreviewProvider {
    static var previews: some View {
        ExpensesView()
    }
}
