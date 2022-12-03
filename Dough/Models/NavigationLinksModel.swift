//
//  NavigationLinksModel.swift
//  Dough
//
//  Created by Megan Dukek on 12/3/22.
//

import SwiftUI

struct NavigationLinksModel: View {

    var expenseName: String
    var iconImageName: String



    var body: some View {

        NavigationLink(destination: ExpensesView(expenseType: expenseName)) {
                VStack {
                    Image(systemName: iconImageName)
                        .font(.system(size:16))
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color.white)
                    Text(expenseName)
                        .foregroundColor(Color.white)
                }
            }
            .padding()
            .background(
                CustomColor.orange
                    .cornerRadius(10)
                    .shadow(radius: 10))
        }
    }

