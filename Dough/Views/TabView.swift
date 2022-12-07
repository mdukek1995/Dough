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
                GoalList()
                    .tabItem {
                        Image(systemName: "list.star")
                        Text("Goals")
                    }
                Text("Articles about finance related to goals")
                    .tabItem {
                        Image(systemName: "quote.opening")
                        Text("Money Tips")
                    }
                AccountView()
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
