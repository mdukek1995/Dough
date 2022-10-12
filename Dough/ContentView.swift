//
//  ContentView.swift
//  Dough
//
//  Created by Megan Dukek on 10/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Account")
                }
        }
        .font(.headline)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
