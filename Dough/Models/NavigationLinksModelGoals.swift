//
//  NavigationLinksModelGoals.swift
//  Dough
//
//  Created by Megan Dukek on 12/3/22.
//

import SwiftUI

struct NavigationLinksModelGoals: View {

    var goalName: String
    var iconImageName: String



    var body: some View {

        NavigationLink(destination: GoalsView(goalType: goalName)) {
                VStack {
                    Image(systemName: iconImageName)
                        .font(.system(size:16))
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color.white)
                    Text(goalName)
                        .foregroundColor(Color.white)
                        .bold()
                        .scaledToFit()
                        .minimumScaleFactor(0.01)
                        .lineLimit(1)
                }
            }
            .padding()
            .frame(maxWidth:.infinity)
            .background(
                CustomColor.lightblue
                    .cornerRadius(10)
                    .shadow(radius: 5, x: 5, y:5))
        }
    }

