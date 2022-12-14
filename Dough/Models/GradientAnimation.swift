//
//  GradientAnimation.swift
//  Dough
//
//  Created by Megan Dukek on 12/3/22.
//

import Foundation
import SwiftUI

struct AnimatedGradientView1: View {
    
    @State var gradient = [Color.white, CustomColor.yellow]
    @State var startPoint = UnitPoint(x: 0, y: 0)
    @State var endPoint = UnitPoint(x: 0, y: 2)
    
    var body: some View {
        RoundedRectangle(cornerRadius: 8)
            .fill(LinearGradient(gradient: Gradient(colors: self.gradient), startPoint: self.startPoint, endPoint: self.endPoint))
            .onTapGesture {
                withAnimation (.easeInOut(duration: 3)){
                    self.startPoint = UnitPoint(x: 1, y: -1)
                    self.endPoint = UnitPoint(x: 0, y: 1)
                }
        }
    }
}
