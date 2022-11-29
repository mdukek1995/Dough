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
        var totalExpenses : [String:Float] = [:]
        totalExpenses[string]=float
        
    }
    
    var body: some View {
        VStack {
            VStack{
           TextField("Expense type", text: $string)
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
               TextField("$", value: $float, formatter: formatter)
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
