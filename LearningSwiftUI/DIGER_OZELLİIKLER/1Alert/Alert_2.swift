//
//  Alert_2.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/3/21.
//

import SwiftUI

struct Alert_2: View {
    struct AlertVeri : Identifiable {
        var id = UUID()
        let baslik : String
        let mesaj : String
    }
    
    
    
    
    @State private var alertVeri : AlertVeri? = nil // Buraya bir değer aktarıldığında alert mesajı gösterilecek
    
    @State private var txtAdi = ""
    @State private var txtSonuc = ""
    
    let s1 = Int.random(in: 1...5)
    let s2 = Int.random(in: 1...5)
    
    
    var body: some View {
        VStack(spacing: 10) {
            
            HStack {
                Text("Adınız : ")
                TextField("Adınızı Girin",text: $txtAdi)
            }
            
            HStack{
                Spacer()
                Text(String(s1))
                Image(systemName: "plus")
                Text(String(s2))
                Image(systemName: "equal")
                TextField("Sonuç",text: $txtSonuc)
                Spacer()
            }.font(.title)
            
            Button("Giriş Yap") {
                
                if Int(self.txtSonuc) == (self.s1 + self.s2) {
                    self.alertVeri = AlertVeri(baslik: "Süper", mesaj: "Merhaba \(self.txtAdi) Başarıyla Giriş Yaptınız.")
                } else {
                    self.alertVeri = AlertVeri(baslik: "Üzgünüm", mesaj: "Merhaba \(self.txtAdi). Yanlış Giriş Yaptınız")
                }
                
            }
            
            
        }.padding().alert(item: $alertVeri) { alertVerisi in
            Alert(title: Text(alertVerisi.baslik), message: Text(alertVerisi.mesaj))
        }
    }
}

struct Alert_2_Previews: PreviewProvider {
    static var previews: some View {
        Alert_2()
    }
}
