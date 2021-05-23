//
//  Button_1.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/2/21.
//

import SwiftUI

struct Button_1: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Button Örnek - 1").font(.largeTitle)
            
            Text("Giriş").font(.title).foregroundColor(.gray)
            
            Text("Eğer sadece metinden ibaret bir buton oluşturmak istiyrsanız, butonun üzerinde gösterilmesini istediğiniz metni parametre olarak göndermeniz yeterli olur.").padding().font(.title).foregroundColor(.white).background(Color.pink)
            
            Button("Varsayılan Buton Tipi") { }
            
            Text("Butonun üzerindeki yazıyı isteğinize göre düzenleyebilirsiniz").frame(maxWidth: .infinity).padding().font(.title).foregroundColor(.white).background(Color.pink)
            
            
            Button(action: { }) {
                Text("Buton Metni").font(.title).bold()
            }
            
            Divider()
            Button(action: {}) {
                Text("Yeşil Renk").foregroundColor(.green).padding()
            }
            
            
            Button(action: {}) {
                Text("Thin Font Weight").fontWeight(.thin).foregroundColor(.blue).padding()
            }
            
            
            
            
        }.background(Color.black).foregroundColor(.white)
    }
}

struct Button_1_Previews: PreviewProvider {
    static var previews: some View {
        Button_1()
    }
}
