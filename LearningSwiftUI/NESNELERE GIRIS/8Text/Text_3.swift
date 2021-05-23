//
//  Text_3.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/3/21.
//

import SwiftUI

struct Text_3: View {
    @State private var boslukMiktari = 10.0
    
    var body: some View {
        
        VStack(spacing : 20) {
            
            Text("Text Örnek -3").font(.largeTitle)
            
            Slider(value: $boslukMiktari,in: 1...50)
            
            Text("linespacing değeri birden fazla satırdan oluşan text nesnelerinin satırları arasında bırakılacak olan boşluğu ayarlar").font(.title).background(Color.black).foregroundColor(.white)
            .lineSpacing(CGFloat(boslukMiktari))
                .frame(maxHeight: 400)
            
            
            Text("SwiftUI ile uygulamarın görünümünü oluşturmak daha kolay hale gelebilir.").font(.title).foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .background(Color.purple)
                .multilineTextAlignment(.trailing)
            
            
        }
    }
}

struct Text_3_Previews: PreviewProvider {
    static var previews: some View {
        Text_3()
    }
}
