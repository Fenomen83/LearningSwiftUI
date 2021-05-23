//
//  ZStack_1.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/2/21.
//

import SwiftUI

struct ZStack_1: View {
    var body: some View {
        ZStack {
            Color.blue // Katman -1 En Gerideki Katman
            
            //2. Katman
            VStack(spacing:20) {
                Text("ZStack Örnek-1").font(.largeTitle)
                Text("Giriş").foregroundColor(.white)
                
                Text("ZStack ile arka planı ayarlamak çok daha kolay").frame(maxWidth: .infinity)
                .padding()
                    .background(Color.green)
                
                Text("Ama dikkat ederseniz renkler üst ve alt tarafta yayılmayı durduruyor. Yerini beyaz bölgelere bırakıyor")
                    .frame(maxWidth: .infinity)
                .padding()
                    .background(Color.green)
                
                
            }.font(.largeTitle)
            
            
        }
    }
}

struct ZStack_1_Previews: PreviewProvider {
    static var previews: some View {
        ZStack_1()
    }
}
