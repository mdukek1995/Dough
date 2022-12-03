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
                        Button(action: save) { Image(systemName: "chevron.down.circle.fill")
                                .padding(.trailing, 40.0)
                                .font(.system(size: 40))
                                .foregroundColor(CustomColor.darkblue)
                                .shadow(color: CustomColor.lightblue.opacity(0.5),
                                        radius: 5, x:2, y:2)
                        }
                        
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
