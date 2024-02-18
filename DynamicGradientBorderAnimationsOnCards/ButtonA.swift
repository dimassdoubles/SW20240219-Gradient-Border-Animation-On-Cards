//
//  ButtonA.swift
//  DynamicGradientBorderAnimationsOnCards
//
//  Created by Gatotkaca on 19/02/24.
//

import SwiftUI

struct ButtonA: View {
    @State var rotation:CGFloat = 0.0
    
    var body: some View {
        ZStack{
            Color("bg")
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(width: 260, height: 340)
                .foregroundColor(Color.black)
            
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(width: 130, height: 500)
                .foregroundStyle(
                    LinearGradient(
                        gradient: Gradient(
                            colors: [Color("lt"), Color("lb")]),
                        startPoint: .top,
                        endPoint: .bottom))
                .rotationEffect(.degrees(rotation))
                .mask{
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .stroke(lineWidth: 7)
                        .frame(width: 256, height: 336)
                }
            
            Text("CARD-A").bold()
                .font(.largeTitle)
                .foregroundColor(Color.white)
            
        }
        .ignoresSafeArea()
        .onAppear{
            withAnimation(
                .linear(duration: 4)
                .repeatForever(autoreverses: false)) {
                    rotation = 360
                }
        }
    }
}

struct ButtonA_Previews: PreviewProvider {
    static var previews: some View {
        ButtonA()
    }
}
