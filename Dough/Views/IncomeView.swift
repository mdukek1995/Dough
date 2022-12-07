//
//  IncomeView.swift
//  Dough
//
//  Created by Megan Dukek on 12/7/22.
//

import SwiftUI

import SwiftUI

struct IncomeView: View {
    @Environment(\.dismiss) var dismiss

    @State var expense: String = ""
    @State var total = Float()
    
    
    
    let formatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter
    }()
    
    
    var body: some View {
        NavigationView{
                VStack {
                    Button("X", action: {
                        dismiss()
                    })
                    .foregroundColor(Color.primary.opacity(0.50))
                    .font(.title)
                    .padding(.trailing, 270)
                    VStack{
                        TextField("How did you make money?", text: $expense)
                            .disableAutocorrection(true)
                            .padding()
                            .modifier(FlatGlassView())
                        HStack {
                            TextField("$", value: $total, formatter: formatter)
                                .padding()
                                .keyboardType(.decimalPad)
                                .modifier(FlatGlassView())
                            Spacer()
                        }
                        .padding()
                        
                    }
                    .padding()
                    .background(.ultraThinMaterial)
                    .foregroundColor(Color.primary.opacity(0.60))
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
                    Spacer()
                }
            }
            .padding()
        }
    func save() {}
    }
    
struct IncomeView_Previews: PreviewProvider {
    static var previews: some View {
        IncomeView()
    }
}
