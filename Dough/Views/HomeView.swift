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
    
    let formatter: NumberFormatter = {
            let formatter = NumberFormatter()
            formatter.numberStyle = .currency
            return formatter
        }()
    
    @State var trackSpending : Bool = false
    @State var trackIncome : Bool = false
    var body: some View {
        
        
        ZStack {

            VStack{
                ScrollView(.vertical) {
                    Spacer()

                    HStack{
                        Image("dough-light")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            .padding()
                        Spacer()
                    }
                    VStack{
            
                        Text("GOALS")
                            .font(.title3)
                            .fontWeight(.light)
                        Spacer()
                        if #available(iOS 16.0, *) {
                            Chart(data) {
                                BarMark(
                                    x: .value("goalName", $0.goalName),
                                    y: .value("Savings", $0.savingsTotal)
                                )
                            }
                            .padding()
                            .background(.ultraThinMaterial)
                            .foregroundColor(CustomColor.orange)
                            .foregroundStyle(.ultraThinMaterial)
                            .cornerRadius(20)
                        } else {
                            // Fallback on earlier versions
                        }
                    }
                    .padding()
                    .foregroundColor(Color.white.opacity(0.80))
                    HStack {
                        Spacer()
                        Button(action: addTravel, label: {
                                VStack{
                                    Image(systemName: "airplane")
                                    Text("Travel")
                            }
                        })
                        .padding()
                        .foregroundColor(Color.white.opacity(0.50))
                        .frame(maxWidth:.infinity,maxHeight: .infinity)
                        .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .stroke(Color.white.opacity(0.50), lineWidth: 3))
                        Spacer()
                        Button(action: addHouse, label: {
                            VStack{
                                Image(systemName: "house.fill")
                                Text("House")
                            }
                        })
                        .padding()
                        .foregroundColor(Color.white.opacity(0.50))
                        .frame(maxWidth:.infinity,maxHeight: .infinity)
                        .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .stroke(Color.white.opacity(0.50), lineWidth: 3))
                        Spacer()
                        Button(action: addTravel, label: {
                            VStack{
                                Image(systemName: "car.fill")
                                Text("Car")
                            }
                        })
                        .padding()
                        .foregroundColor(Color.white.opacity(0.50))
                        .frame(maxWidth:.infinity,maxHeight: .infinity)
                        .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .stroke(Color.white.opacity(0.50), lineWidth: 3)
                                   )
                        Spacer()
                    }
                    .padding()
                }
                .background(CustomColor.lightblue)
                .cornerRadius(20)
                .edgesIgnoringSafeArea(.top)
                .frame(minHeight: 500)
                VStack{
                    Text("You can spend")
                        .font(.body)
                    
                    Text("$" + String(accountCalculations.spendings()))
                        .font(.title)
                        .fontWeight(.black)
                    Text("and still meet your goals!")
                        .font(.body)
                    
                }
                .frame(width: 360)
                .padding(.vertical, 15)
                .background(Color.gray.opacity(0.05)
                )
                .cornerRadius(14)
                .padding()
                .foregroundColor(CustomColor.darkblue)
                
                if #available(iOS 16.0, *) {
                    Menu {
                        Button("I spent money", action:
                                identifySpending)
                        Button("I made money", action: identifyIncome)
                    } label: {
                        Label("TRACK", systemImage: "plus.circle.fill")
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .foregroundColor(CustomColor.darkblue)
                    .background(CustomColor.mint)
                        .padding()
                        .cornerRadius(20)
                        .shadow(color: Color.primary.opacity(0.20), radius:5, x: 5, y: 5)
    
                }
                Spacer(minLength: 100)
            }
            .sheet(isPresented: $trackSpending, content: {
                SpendingView()
                
            })
            .sheet(isPresented: $trackIncome, content: {
                IncomeView()
                
            })
        }

    }
func identifySpending() {
    trackSpending.toggle()
}
func identifyIncome() {
    trackIncome.toggle()
}
func addTravel(){}
func addHouse(){}
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
