//
//  TapGesture_2.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/4/21.
//

import SwiftUI

struct TapGesture_2: View {
    @State private var ciftTiklama: Bool = false
    
    var body: some View {
        VStack{
            Text("Tap Gesture Örnek - 2").font(.largeTitle)
            Text("Giriş").font(.title).foregroundColor(.gray)
                .padding(.bottom, 40)
            
            Rectangle()
                .frame(width: 150, height: 150)
                .foregroundColor(Color.blue)
                .cornerRadius(40)
                .scaleEffect(ciftTiklama ? 1.2 : 1)
                .gesture(TapGesture(count: 2).onEnded({
                    self.ciftTiklama.toggle()
                }))
                .overlay(Text(ciftTiklama ? "1.2":"1").bold().font(.title))
            
            
        }
    }
}

struct TapGesture_2_Previews: PreviewProvider {
    static var previews: some View {
        TapGesture_2()
    }
}
