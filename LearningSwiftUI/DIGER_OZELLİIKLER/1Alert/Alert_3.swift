//
//  Alert_3.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/3/21.
//

import SwiftUI

struct Alert_3: View {
    @State private var gorunsunAlert = false
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Alert Örnek - 3").font(.largeTitle)
            Text("Alert Buton Seçenekleri").font(.title).foregroundColor(.gray)
            
            
            Button("Alert Tipleri") {
                self.gorunsunAlert = true
            }
            
        }.alert(isPresented: $gorunsunAlert) {
            
            Alert(title: Text("Oturumunuz Sonlandırıldı"))
            
            
           // Alert(title: Text("Başlık"), message: Text("Alert Mesajı"), dismissButton: .cancel())
            
            
            //Alert(title: Text("Onay"), message: Text("Devam etmek istiyor musunuz"), primaryButton: .default(Text("Devam Et"),action: {}), secondaryButton: .cancel(Text("İptal")))
            
           // Alert(title: Text("Silme İşlemi"), message: Text("Hesabınızı silmek istediğinize emin misiniz?"), primaryButton: .cancel(Text("İptal")), secondaryButton: .destructive(Text("Sil"),action: {}))
            
        }
    }
}

struct Alert_3_Previews: PreviewProvider {
    static var previews: some View {
        Alert_3()
    }
}
