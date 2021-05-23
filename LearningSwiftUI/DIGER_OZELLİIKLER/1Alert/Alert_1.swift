//
//  Alert_1.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/3/21.
//

import SwiftUI

struct Alert_1: View {
    
    @State private var gorunsunAlert = false
    
    var mesajAlert = Alert(title: Text("Başlık"),
                           message: Text("Alert Mesajı"),
                           primaryButton: .default(Text("Sol Buton")) {
                            //primary button'a basıldığında olacakları belirler
        },
                           secondaryButton: .destructive(Text("Sağ Buton"),action: {
                            //secondary button'a basıldığında olacakları belirle
                           }))
    
    
    @State private var txtYasi = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Alert Örnek - 1").font(.largeTitle)
            
            
            VStack {
                
                HStack{
                    Text("Yaşınız : ")
                    TextField("Yaşınızı girin",text: $txtYasi)
                }
                
                Button("Kaydet"){
                    if Int(self.txtYasi)! > 18 {
                        self.gorunsunAlert = true
                    }
                }
                
                
            }
            Spacer()
            }.padding().alert(isPresented: $gorunsunAlert) {
                //self.mesajAlert
                
                Alert(title: Text("Hatalı Giriş Yaptınız"), message: nil, dismissButton: Alert.Button.cancel())
                
            }
    }
}

struct Alert_1_Previews: PreviewProvider {
    static var previews: some View {
        Alert_1()
    }
}
