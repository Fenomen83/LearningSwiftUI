//
//  LongPressGesture_4.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/4/21.
//

import SwiftUI

struct LongPressGesture_4: View {
    @State private var uzunBasiliyor = false
    @State private var normalBasiliyor = false
    
    var body: some View {
        VStack{
            Text("Long Press Gesture Örnek - 1").font(.largeTitle)
            Text("Giriş").font(.title).foregroundColor(.gray)
                .padding(.bottom, 40)
            
            VStack {
                Image(systemName: uzunBasiliyor ? "lock.open.fill" : "lock.fill")
                    .font(.largeTitle)

            }
            .frame(width: 100, height: 100)
            .modifier(LightButton())
            .onLongPressGesture(minimumDuration: 3, pressing: { basiliyor in
                self.normalBasiliyor = basiliyor
            }){
                uzunBasiliyor.toggle()
            }
            .padding(.bottom)
            
            Text("Basmaya Devam Edin").bold().foregroundColor(.red).opacity(normalBasiliyor ? 1 : 0)
            
            
        }
    }
}

struct LongPressGesture_4_Previews: PreviewProvider {
    static var previews: some View {
        LongPressGesture_4()
    }
}
