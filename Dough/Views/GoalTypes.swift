//
//  GoalTypes.swift
//  Dough
//
//  Created by Megan Dukek on 12/3/22.
//

import SwiftUI

struct GoalTypes: View {
    var body: some View {
        NavigationView {
                VStack {
                    HStack {
                        Spacer()
                        NavigationLinksModelGoals(goalName: "Travel", iconImageName: "airplane")
                        Spacer()
                        NavigationLinksModelGoals(goalName: "House", iconImageName: "house.fill")
                        Spacer()
                        NavigationLinksModelGoals(goalName: "Bike", iconImageName: "bicycle")
                        Spacer()
                    }
                    .padding()
                    HStack {
                        Spacer()
                        NavigationLinksModelGoals(goalName: "Health", iconImageName: "cross.fill")
                        Spacer()
                        NavigationLinksModelGoals(goalName: "Car", iconImageName: "car.fill")
                        Spacer()
                        NavigationLinksModelGoals(goalName: "Shopping", iconImageName: "cart.fill")
                        Spacer()
                    }
                    .padding()
                   
                    HStack {
                        Spacer()
                        NavigationLinksModelGoals(goalName: "Phone", iconImageName: "iphone")
                        Spacer()
                        NavigationLinksModelGoals(goalName: "Computer", iconImageName: "laptopcomputer")
                        Spacer()
                        NavigationLinksModelGoals(goalName: "Camera", iconImageName: "camera.fill")
                        Spacer()
                    }
                    .padding()
                    HStack {
                        Spacer()
                        NavigationLinksModelGoals(goalName: "Decor", iconImageName: "fan.and.light.ceiling.fill")
                        Spacer()
                        NavigationLinksModelGoals(goalName: "Pet", iconImageName: "pawprint.fill")
                        Spacer()
                        NavigationLinksModelGoals(goalName: "Shoes", iconImageName: "shoeprints.fill")
                        Spacer()
                    }
                    .padding()
                    HStack {
                        Spacer()
                        NavigationLinksModelGoals(goalName: "Tools", iconImageName: "screwdriver.fill")
                        Spacer()
                        NavigationLinksModelGoals(goalName: "Show", iconImageName: "theatermasks.fill")
                        Spacer()
                        NavigationLinksModelGoals(goalName: "Concert", iconImageName: "music.note")
                        Spacer()
                    }
                    .padding()
                    NavigationLinksModelGoals(goalName: "Other", iconImageName: "questionmark")
                    
                }
            }
            .navigationTitle("Choose your expenses")
            .navigationBarTitleDisplayMode(.automatic)
            .navigationBarHidden(true)
        }
    }

struct GoalTypes_Previews: PreviewProvider {
    static var previews: some View {
        GoalTypes()
    }
}
