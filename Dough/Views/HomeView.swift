//
//  HomeView.swift
//  Dough
//
//  Created by Megan Dukek on 10/26/22.
//

import SwiftUI

struct HomeView: View {
    
    let accountCalculations = AccountCalculations().self
    
    var body: some View {
            VStack{
                Image("logo")
                .resizable()
                .frame(width: 100, height: 100)
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                Text("Goals")
                TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
                    Text("Progress Graph").tabItem { Text("Goal 1") }.tag(1)
                    Text("Progress Graph").tabItem { Text("Goal 2") }.tag(2)
                }
                Spacer()
                Text("You can spend")
                Text("$" + String(accountCalculations.spendings()))
                Text("and still meet your goals!")
                Spacer()
            }
}
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
