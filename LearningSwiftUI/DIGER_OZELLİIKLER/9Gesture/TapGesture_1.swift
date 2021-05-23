//
//  TapGesture_1.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/3/21.
//

import SwiftUI

struct TapGesture_1: View {
    
    @State private var ciftTiklama: Bool = false
    
    var body: some View {
        VStack{
            Text("Tap Gesture Örnek - 1").font(.largeTitle)
            Text("Giriş").font(.title).foregroundColor(.gray)
                .padding(.bottom, 40)
            
            VStack {
                Image(systemName: ciftTiklama ? "lightbulb" : "lightbulb.fill")
                    .font(.largeTitle)

            }
            .frame(width: 100, height: 100)
            .modifier(LightButton())
            .onTapGesture(count:2) {
                self.ciftTiklama.toggle()
            }
            
        }
    }
}

struct TapGesture_1_Previews: PreviewProvider {
    static var previews: some View {
        TapGesture_1()
    }
}
