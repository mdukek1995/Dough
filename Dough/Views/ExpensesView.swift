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
    
    func save() {
        totalExpenses[expenseType]=cost
        print(totalExpenses)
        }
    
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
                    .foregroundColor(Color.primary.opacity(0.60))
                    .foregroundStyle(.ultraThinMaterial)
                    .cornerRadius(35)
                    .padding()
                    
                    
                    HStack {
                        Spacer()
                        Button("SAVE"){
                            save()
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .foregroundColor(CustomColor.mint)
                        .background(
                            CustomColor.darkblue
                                .cornerRadius(14)
                                .shadow(radius: 5, x: 5, y:5))
                        .padding()
                        
                    }
                    
                }}
            .padding()
        }
   }

    
}
struct ExpensesView_Previews: PreviewProvider {
    static var previews: some View {
        ExpensesView()
    }
}
