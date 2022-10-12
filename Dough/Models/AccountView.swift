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
            VStack{
                Image("logo")
                .resizable()
                .frame(width: 100, height: 100)
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                
                Text("Your Details")
                    .font(.largeTitle)
                    .padding([.leading, .bottom, .trailing], 19.0)
      
                
                Text("Expenses")
                    .font(.title2)
                    .bold()
                Text("$" + String(accountCalculations.expenses))
                    .padding(.vertical, 20.0)
                
                
                Text("Income")
                    .font(.title2)
                    .bold()
                Text("$" + String(accountCalculations.income))
                    .padding(.vertical, 20.0)
                            
                Text("Goals")
                    .font(.title2)
                    .bold()
                    .padding(.vertical, 20.0)
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
struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
