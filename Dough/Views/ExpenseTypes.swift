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
                        NavigationLinksModel(expenseName: "Rent", iconImageName: "building.2.fill")
                        NavigationLinksModel(expenseName: "Mortgage", iconImageName: "house.fill")
                            .frame(
                            minWidth: 130)

                        NavigationLinksModel(expenseName: "Gas", iconImageName: "fuelpump.fill")
                    }
                    .padding()
                    HStack {

                        NavigationLinksModel(expenseName: "Insurance"
                          , iconImageName: "shield.fill")
                        .frame(
                        minWidth: 130)
           
                        NavigationLinksModel(expenseName: "Car", iconImageName: "car.fill")
     
                        NavigationLinksModel(expenseName: "School", iconImageName: "graduationcap.fill")
         
                    }
                    .padding()
                    HStack {
      
                        NavigationLinksModel(expenseName: "Utilities", iconImageName: "lightbulb.fill")
            
                        NavigationLinksModel(expenseName: "Medicine", iconImageName: "cross.case.fill")
                            .frame(
                            minWidth: 110)
          
                        NavigationLinksModel(expenseName: "Daycare", iconImageName: "figure.and.child.holdinghands")
                
                    }
                    .padding()
                    NavigationLinksModel(expenseName: "Other", iconImageName: "questionmark")
                        .frame(maxWidth: 360)
                    
                }
            }
            .navigationTitle("Choose your expenses")
            .navigationBarTitleDisplayMode(.automatic)
            .navigationBarHidden(false)
        }
    }

struct ExpenseTypes_Previews: PreviewProvider {
    static var previews: some View {
        ExpenseTypes()
    }
}
