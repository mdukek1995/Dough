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
            ZStack{
                
                VStack {
                    VStack{
                        TextField("Expense type", text: $expenseType)
                            .disableAutocorrection(true)
                            .padding()
                            .modifier(FlatGlassView())
                        HStack {
                            TextField("$", value: $cost, formatter: formatter)
                                .padding()
                                .keyboardType(.decimalPad)
                                .modifier(FlatGlassView())
                            Spacer()
                        }
                        .padding()
                        
                    }
                    .padding()
                    .background(.ultraThinMaterial)
                    .foregroundColor(Color.primary.opacity(0.35))
                    .foregroundStyle(.ultraThinMaterial)
                    .cornerRadius(35)
                    .padding()
                    
                    
                    HStack {
                        Spacer()
                        Button(action: save) { Image(systemName: "chevron.down.circle.fill")
                                .padding(.trailing, 40.0)
                                .font(.system(size: 40))
                                .foregroundColor(CustomColor.darkblue)
                                .shadow(color: CustomColor.lightblue.opacity(0.5),
                                        radius: 5, x:2, y:2)
                        }
                        
                    }
                    
                }}
            .padding()
        }
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
