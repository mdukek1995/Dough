//
//  TabView.swift
//  Dough
//
//  Created by Megan Dukek on 12/1/22.
//

import SwiftUI

struct BottomNav: View {
    var body: some View {
        
        TabView {
            HomeView()
                       .tabItem {
                           Image(systemName: "house.fill")
                           Text("Home")
                   }
                   GoalTypes()
                       .tabItem {
                           Image(systemName: "list.star")
                           Text("Goals")
                   }
                   AccountView()
                       .tabItem {
                           Image(systemName: "creditcard.fill")
                           Text("Your Money")
        }
                    Text("User Settings")
                        .tabItem {
                            Image(systemName: "person.fill")
                            Text("Account")
                        }
        }
    }
}
struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        BottomNav()
    }
}
