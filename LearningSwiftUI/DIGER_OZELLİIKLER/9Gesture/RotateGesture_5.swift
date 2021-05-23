//
//  RotateGesture_5.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/4/21.
//

import SwiftUI

struct RotateGesture_5: View {
    @State private var donusBitti = true
    @State private var  rotation : Angle = .zero
    
    var body: some View {
        VStack{
            Text("Rotate Gesture Örnek - 1").font(.largeTitle)
            Text("Giriş").font(.title).foregroundColor(.gray)
                .padding(.bottom, 40)
            
            VStack {
                Image(systemName: self.donusBitti ? "lock.fill" : "lock.open.fill")
                    .font(.largeTitle)

            }
            .frame(width: 200, height: 200)
            .modifier(LightButton())
            .animation(.default)
            .rotationEffect(rotation)
            .gesture(RotationGesture().onChanged({ value in
                self.rotation = value
                
                print(value)
                self.donusBitti = false
            }).onEnded({_ in
                self.donusBitti = true
            }))
        }
    }
}

struct RotateGesture_5_Previews: PreviewProvider {
    static var previews: some View {
        RotateGesture_5()
    }
}
