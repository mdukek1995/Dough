//
//  ExpenseTypes.swift
//  Dough
//
//  Created by Megan Dukek on 11/30/22.
//

import SwiftUI

struct ExpenseTypes: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    HStack {
                        NavigationLink("Rent", destination: ExpensesView())
                            .foregroundColor(Color.white)
                            .padding()
                            .padding(.horizontal, 20)
                            .background(
                                Color.blue
                                    .cornerRadius(10)
                                    .shadow(radius: 10))
                        NavigationLink("Mortgage", destination: ExpensesView())
                            .foregroundColor(Color.white)
                            .padding()
                            .padding(.horizontal, 20)
                            .background(
                                Color.blue
                                    .cornerRadius(10)
                                    .shadow(radius: 10))
                            }
                    }
                    HStack {
                        Text("Rent")
                        Text("Mortgage")
                        Text("Auto Insurance")
                    }
                }
            }
            .navigationTitle("Choose your expenses")
            .navigationBarTitleDisplayMode(.automatic)
            .navigationBarHidden(true)
        }

    }


struct ExpenseTypes_Previews: PreviewProvider {
    static var previews: some View {
        ExpenseTypes()
    }
}
