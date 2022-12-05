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
                    Image("logo")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    
                    Text("Your Money")
                        .font(.largeTitle)
                        .padding([.leading, .bottom, .trailing], 19.0)
                    
                    HStack {
                        Text("Expenses")
                            .font(.title2)
                            .bold()
                            .padding(.horizontal, 5.0)
                        NavigationLink(destination: ExpenseTypes()) {
                            Image(systemName: "slider.vertical.3")
                        }
                    }
                    Text("$" + String(accountCalculations.expenses))
                        .padding(.vertical, 20.0)
                    HStack {
                        Text("Income")
                            .font(.title2)
                            .bold()
                            .padding(.horizontal, 5.0)
                        Image(systemName: "slider.vertical.3")
                    }
                    Text("$" + String(accountCalculations.income))
                        .padding(.vertical, 20.0)
                    HStack {
                        Text("Goals")
                            .font(.title2)
                            .bold()
                            .padding(.vertical, 20.0)
                            .padding(.horizontal, 5.0)
                        Image(systemName: "plus.circle")
                    }
                    HStack{
                        VStack{
                            Image(systemName: "airplane")
                            Text("$300")
                        }
                        VStack{
                            Image(systemName: "house")
                            Text("$12,500")
                            
                        }
                        .padding(.horizontal)
                        VStack {
                            Image(systemName: "car")
                            Text("$4,200")
                        }
                    
                    }
                    Spacer()
                }
            }
        }
        .background(CustomColor.yellow)
    }
}
struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
