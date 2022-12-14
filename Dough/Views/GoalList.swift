//
//  GoalList.swift
//  Dough
//
//  Created by Megan Dukek on 12/7/22.
//

import SwiftUI

struct GoalList: View {
    var body: some View {
        NavigationView{
            VStack{
                List {
                    Section(header: Text("Achieved"))
                    {
                        Text("Goal1")
                        Text("Goal2")
                    }
                    Section(header: Text("Active"))
                    {
                        HStack{
                            Image(systemName: "airplane")
                            Text("Travel")
                            Spacer()
                            Text("$50/$300")
                        }
                        HStack{
                            Image(systemName: "house.fill")
                            Text("House")
                            Spacer()
                            Text("$1100/$12500")
                        }
                        HStack{
                            Image(systemName: "car")
                            Text("Car")
                            Spacer()
                            Text("$500/$4200")
                        }
                    }
                    
                }
                NavigationLink(destination: GoalsView()) {
                    Text("ADD")
                }
                .padding()
                .frame(maxWidth:.infinity)
                .foregroundColor(CustomColor.mint)
                .background(CustomColor.lightblue)
                .shadow(color: Color.primary.opacity(0.20), radius:5, x: 5, y: 5)
                .cornerRadius(20)
                .padding()
                
                Spacer()
                    .padding()
                
            }
        }
    }
    func newItem(){}
}

struct GoalList_Previews: PreviewProvider {
    static var previews: some View {
        GoalList()
    }
}
