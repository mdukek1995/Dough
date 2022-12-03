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
                VStack {
                    HStack {
                        Spacer()
                        NavigationLinksModel(expenseName: "Rent", iconImageName: "building.2.fill")
                        Spacer()
                        NavigationLinksModel(expenseName: "Mortgage", iconImageName: "house.fill")
                        Spacer()
                        NavigationLinksModel(expenseName: "Gas", iconImageName: "fuelpump.fill")
                        Spacer()
                    }
                    .padding()
                    HStack {
                        Spacer()
                        NavigationLinksModel(expenseName: "Insurance", iconImageName: "shield.fill")
                        Spacer()
                        NavigationLinksModel(expenseName: "Car", iconImageName: "car.fill")
                        Spacer()
                        NavigationLinksModel(expenseName: "School", iconImageName: "graduationcap.fill")
                        Spacer()
                    }
                    .padding()
                    HStack {
                        Spacer()
                        NavigationLinksModel(expenseName: "Utilities", iconImageName: "lightbulb.fill")
                        Spacer()
                        NavigationLinksModel(expenseName: "Medicine", iconImageName: "cross.case.fill")
                        Spacer()
                        NavigationLinksModel(expenseName: "Daycare", iconImageName: "figure.and.child.holdinghands")
                        Spacer()
                    }
                    .padding()
                    NavigationLinksModel(expenseName: "Other", iconImageName: "questionmark")
                    
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
