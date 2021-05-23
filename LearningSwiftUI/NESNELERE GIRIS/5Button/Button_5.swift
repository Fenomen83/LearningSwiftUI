//
//  Button_5.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/2/21.
//

import SwiftUI

struct Button_5: View {
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Button Örnek-5").font(.largeTitle)
            
            Text("Butonlar ve SF Sembolleri").font(.title).foregroundColor(.gray)
            
            Text("SF Sembollerini Butonlarla Birlikte Kullanalım").padding().frame(maxWidth: .infinity).background(Color.blue).foregroundColor(.white).font(.title)
            
            Button(action: {}) {
                Text("Hediye Gönder").padding(.horizontal)
                Image(systemName: "gift.fill")
                }.padding().foregroundColor(.white).background(Color.blue).cornerRadius(10)
            
            
            Button(action: {}) {
                Image(systemName: "magnifyingglass")
                Text("Ara").padding(.horizontal)
                }.padding().foregroundColor(.white).background(Color.blue).cornerRadius(12)
            
            
            Button(action: {}){
                VStack(spacing: 5) {
                    Image(systemName: "video.fill")
                    Text("Kaydı Başlat").padding(.horizontal)
                }.padding().foregroundColor(.white).background(Color.blue).cornerRadius(.infinity)
                
                
            }
            
            Button(action: {}) {
                ZStack {
                    Image("manzara").renderingMode(.original).cornerRadius(40)
                    Text("Manzaraya Gel").font(.title).foregroundColor(.white).bold()
                }
            }
            
        }
    }
}

struct Button_5_Previews: PreviewProvider {
    static var previews: some View {
        Button_5()
    }
}
