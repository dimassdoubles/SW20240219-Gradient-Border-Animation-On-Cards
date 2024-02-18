//
//  ContentView.swift
//  DynamicGradientBorderAnimationsOnCards
//
//  Created by Gatotkaca on 18/02/24.
//

import SwiftUI

enum UIState {
    case A, B, C
}
//
struct ContentView: View {
    @State private var currentUIState: UIState = .A
    
    var body: some View {
        VStack{
            if currentUIState == .A {
                ButtonA().onTapGesture {
                    currentUIState = .B
                }
            } else if currentUIState == .B {
                ButtonB().onTapGesture {
                    currentUIState = .C
                }
            } else if currentUIState == .C {
                ButtonC().onTapGesture {
                    currentUIState = .A
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
