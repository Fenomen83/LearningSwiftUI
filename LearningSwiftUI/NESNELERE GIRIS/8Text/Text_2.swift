//
//  Text_2.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/3/21.
//

import SwiftUI

struct Text_2: View {
    @State private var duzenlemeAktif = true
    
    var body: some View {
        
        VStack(spacing: 20) {
            Text("Bold").bold()
            Text("Italic").italic()
            
            Text("Geçersiz").strikethrough() // üstü çizili
            
            
            Text("Kırmızı Üstü Çizili").strikethrough(duzenlemeAktif, color: .red)
            
            
            Text("Yazının Rengi Mavi").foregroundColor(.blue)
            
            
            Text("Altı Çizili").underline()
            Text("Mor Altı Çizili").underline(duzenlemeAktif, color: .purple)
            
            
            Toggle("Düzenleme Aktif : ",isOn: $duzenlemeAktif)
            
            
            
            
            VStack(spacing: 10) {
                Text("Senden sonra arabaya binip yola çıkabilirim istersen").padding(.horizontal).foregroundColor(.red).lineLimit(1)
                
                
                Text("Senden sonra arabaya binip yola çıkabilirim istersen")
                    .padding(.horizontal)
                    .foregroundColor(.green)
                    .lineLimit(1)
                .allowsTightening(true)
                
                
                Text("Bugün hava sıcak olmasına rağmen insanlar dışarda gezmeye devam ediyor")
                    .foregroundColor(.red).padding(.horizontal).lineLimit(1).minimumScaleFactor(0.3)
                
                
            }
            
            
        }
    }
}

struct Text_2_Previews: PreviewProvider {
    static var previews: some View {
        Text_2()
    }
}
