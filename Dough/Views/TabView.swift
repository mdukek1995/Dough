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
                   Text("Friends Screen")
                       .tabItem {
                           Image(systemName: "list.star")
                           Text("Goals")
                   }
                   Text("Nearby Screen")
                       .tabItem {
                           Image(systemName: "creditcard.fill")
                           Text("Your Money")
        }
                    Text("Nearby Screen")
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
