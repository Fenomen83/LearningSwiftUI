//
//  Button_2.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/2/21.
//

import SwiftUI

struct Button_2: View {
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Button Örnek-2").font(.largeTitle)
            Text("Text Birleştirme").font(.title).foregroundColor(.gray)
            
            Text("Butonlara birden fazla text nesnesini ekleyebilirsiniz. Böyle bir durumda eklenen text nesneleri varsayılan halde (siz eklemediğiniz halde) HStack yapısında gösterilir.").font(.title).padding().background(Color.orange)
            
            Button(action: {}) {
                Text("Yeni Kullanıcı").font(.title)
                Text("(Kayıt Ol)")
                
            }
            
            Text("VStack Kullanarak").padding().frame(maxWidth: .infinity).background(Color.purple).layoutPriority(1).foregroundColor(.white).font(.title)
            
            Button(action: {}) {
                VStack {
                    Text("Parolanı mı Unuttun?").bold()
                    Text("Sıfırlamak İstiyorum").font(.footnote)
                }.foregroundColor(.black)
            }
            
            
            
            
            
            
        }
    }
}

struct Button_2_Previews: PreviewProvider {
    static var previews: some View {
        Button_2()
    }
}
