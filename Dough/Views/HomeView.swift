//
//  HomeView.swift
//  Dough
//
//  Created by Megan Dukek on 10/26/22.
//

import SwiftUI
import Charts

struct HomeView: View {
    
    let accountCalculations = AccountCalculations().self
    
    struct Goals: Identifiable {
        let id = UUID()
        let goalName: String
        let savingsTotal: Double
    }

    let data: [Goals] = [
        Goals(goalName: "Travel", savingsTotal: 300),
        Goals(goalName: "House", savingsTotal: 12500),
        Goals(goalName: "Car", savingsTotal: 4500),
       
    ]
    
    var body: some View {
        ZStack {
            ScrollView{
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                VStack{
                    Spacer()
                        .padding()
                    Text("Goals")
                    Spacer()
                        .padding()
                    if #available(iOS 16.0, *) {
                        Chart(data) {
                            BarMark(
                                x: .value("goalName", $0.goalName),
                                y: .value("Savings", $0.savingsTotal)
                            )
                        }
                        .padding(.horizontal, 40)
                        .foregroundColor(CustomColor.vibrantblue)
                    } else {
                        // Fallback on earlier versions
                    }
                    Spacer()
                        .padding()
                    VStack{
                        Text("You can spend")
                        Text("$" + String(accountCalculations.spendings()))
                            .bold()
                        Text("and still meet your goals!")
                        
                    }
                    Spacer()
                }
                .padding()
                .background(.ultraThinMaterial)
                .foregroundColor(Color.primary.opacity(0.35))
                .foregroundStyle(.ultraThinMaterial)
                .cornerRadius(35)
                .padding()
            }
        }
        .background(Image("piggybank").resizable()
                .edgesIgnoringSafeArea(.all))
    }
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
