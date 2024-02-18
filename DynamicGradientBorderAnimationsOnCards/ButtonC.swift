//
//  ButtonC.swift
//  DynamicGradientBorderAnimationsOnCards
//
//  Created by Gatotkaca on 19/02/24.
//

import SwiftUI

struct ButtonC: View {
    @State var rotation:CGFloat = 0.0
    
    var body: some View {
        ZStack{
            Color("bg")
                
            RoundedRectangle(cornerRadius: 20,
                             style: .continuous)
            .frame(width: 500, height: 480)
            .foregroundStyle(LinearGradient(
                gradient: Gradient(colors: [
                    .red,
                    .orange,
                    .yellow,
                    .green,
                    .blue,
                    .purple,
                    .pink
                ]),
                startPoint: .top, endPoint: .bottom ))
            .rotationEffect(.degrees(rotation))
            .mask{
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .stroke(lineWidth: 3)
                    .frame(width: 250, height: 335)
                    .blur(radius: 10)
            }
            
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(width: 260, height: 340)
                .foregroundColor(.black)
                .shadow(color: .black.opacity(0.5),
                    radius: 10,
                        x: 0,
                        y: 0)
                    
            
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(width: 500, height: 440)
                .foregroundStyle(
                    LinearGradient(
                        gradient: Gradient(
                            colors: [
                                .red,
                                .orange,
                                .yellow,
                                .green,
                                .blue,
                                .purple,
                                .pink
                            ]),
                        startPoint: .top,
                        endPoint: .bottom))
                .rotationEffect(.degrees(rotation))
                .mask{
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .stroke(lineWidth: 3)
                        .frame(width: 256, height: 336)
                }
            
            Text("CARD-C").bold()
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

struct ButtonC_Previews: PreviewProvider {
    static var previews: some View {
        ButtonC()
    }
}
