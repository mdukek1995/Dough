//
//  AccountView.swift
//  Dough
//
//  Created by Megan Dukek on 10/10/22.
//

import SwiftUI

struct AccountView: View{
    // @State var expenses: String = ""
    //@State var income: String = ""
    let accountCalculations = AccountCalculations().self
    
        var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    HStack{
                        Image("dough-dark")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            .padding()
                        Spacer()
                    }
                        List {
                            Section(header:
                                        
                                        HStack {
                                Text("Expenses")
                                    .font(.title2)
                                    .bold()
                                    .padding(.horizontal, 5.0)
                                NavigationLink(destination: ExpenseTypes()) {
                                    Image(systemName: "slider.vertical.3")
                                }
                            })
                            {
                                Text("Selected expenses will go here")
                                HStack{
                                    Text("Total")
                                    Text("$" + String(accountCalculations.expenses))
                                }
                                
                            }
                            Section(header:
                                        HStack {
                                Text("Income")
                                    .font(.title2)
                                    .bold()
                                    .padding(.horizontal, 5.0)
                                Image(systemName: "slider.vertical.3")
                            }) {
                                Text("Listed income")
                                HStack{
                                    Text("Total")
                                    Text("$" + String(accountCalculations.income))
                                }
                            }
                    
                        }

                    Spacer()
                }
            }
        }
    }
}
struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
