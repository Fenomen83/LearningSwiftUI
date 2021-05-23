//
//  VStack_1.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/2/21.
//

import SwiftUI

struct VStack_1: View {
    var body: some View {
        VStack {
            
            Text("Vertical Stack").font(.largeTitle)
            
            Text("Giriş")
                .font(.title)
                .foregroundColor(.gray)
            
            Text("VStack yapısı diğer nesneleri barındırır.")
                .frame(maxWidth: .infinity, minHeight: 70)
            .padding()
                .font(.title)
                .background(Color.blue)
                .foregroundColor(.white)
            
            Text("Barındırılan Viewler Üst Üste Dizilir").font(.title)
            
            VStack {
                Text("VStack başka bir VStack nesnesini barındırabilir")
                .layoutPriority(1)
                
                Divider()
                Text("Arada Boşluk Bırakır")

                Divider()
                
                Text("10'dan fazla view eklendiğinde hata verir")
                
                
            }.font(.title)
            .layoutPriority(1)
            .padding()
                .foregroundColor(.white)
                .background( RoundedRectangle(cornerRadius: 10).foregroundColor(.blue))
            .padding()
             
            
            
        }
    }
}

struct VStack_1_Previews: PreviewProvider {
    static var previews: some View {
        VStack_1()
    }
}
