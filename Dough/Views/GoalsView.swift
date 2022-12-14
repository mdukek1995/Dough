//
//  GoalsView.swift
//  Dough
//
//  Created by Megan Dukek on 12/3/22.
//

import SwiftUI


struct GoalsView: View {
    @State var goalType: String = ""
    @State var cost = Float()
    @State var goalList : [String:Float] = [:]



    let formatter: NumberFormatter = {
            let formatter = NumberFormatter()
            formatter.numberStyle = .currency
            return formatter
        }()

        var body: some View {
        NavigationView{
            ZStack{
                VStack {
                    VStack{
                        TextField("Goal type", text: $goalType)
                            .disableAutocorrection(true)
                            .padding()
                            .modifier(FlatGlassView())
                        HStack {
                            TextField("$", value: $cost, formatter: formatter)
                                .padding()
                                .keyboardType(.decimalPad)
                                .modifier(FlatGlassView())
                            Spacer()
                        }
                        .padding()
                        
                    }
                    .padding()
                    .background(.ultraThinMaterial)
                    .foregroundColor(Color.primary.opacity(0.35))
                    .foregroundStyle(.ultraThinMaterial)
                    .cornerRadius(35)
                    .padding()
                    
                    
                    HStack {
                        Spacer()
                        Button("SAVE"){
                            save()
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .foregroundColor(CustomColor.mint)
                        .background(
                            CustomColor.darkblue
                                .cornerRadius(14)
                                .shadow(radius: 5, x: 5, y:5))
                        .padding()
                        
                    }
                    
                }}
            .padding()
        }
    }
    func save() {
        @State var value = Float(cost)
        goalList[goalType]=value
    }


    }

struct GoalsView_Previews: PreviewProvider {
    static var previews: some View {
        GoalsView()
    }
}
