//
//  ContentView.swift
//  Dough
//
//  Created by Megan Dukek on 9/18/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Image("logo")
            .resizable()
            .frame(width: 100, height: 100)
            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            
            TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
                Text("Financial Goal #1").tabItem { /*@START_MENU_TOKEN@*/Text("Goal #1")/*@END_MENU_TOKEN@*/ }.tag(1)
                Text("Financial Goal #2").tabItem { /*@START_MENU_TOKEN@*/Text("Goal #2")/*@END_MENU_TOKEN@*/ }.tag(2)

            }
            Spacer()
                .padding(.vertical, 0.0)
            Text("You can spend")
            Text("$732.89")
                .font(.title)
                .fontWeight(.bold)
                .padding(.vertical)
            Text("(and still reach your goals)")
                .padding(.bottom)
            Spacer()
            Image("add button")
                .resizable()
                .frame(width: 40.0, height: 40.0)

        }
    }
    
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
}

struct AccountCalculations {
    //calculating financials -will need user input//
    var expenses = 1700
    var income = 2000
    var goal = 250
    
    //find difference between income & expenses//
    //func excess(){
       // income-expenses;
  //  }
    
    //determine spending//
   // func spending(){
      //  excess-goal;
   // }
}

struct AccountView: View{
    var body: some View {
        VStack{
            Image("logo")
            .resizable()
            .frame(width: 100, height: 100)
            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            
            Text("Expenses")
            .bold()
           
            // Text("$" + AccountCalculations.init(expenses))
            
            Spacer()
            
            Text("Income")
            .bold()
          //  Text("$" + /(AccountCalculations.init(income)))
            
            Spacer()
            
            Text("Goals")
                .bold()
                .padding()
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
