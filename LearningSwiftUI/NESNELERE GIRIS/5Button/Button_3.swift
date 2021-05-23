//
//  Button_3.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/2/21.
//

import SwiftUI

struct Button_3: View {
    var body: some View {
        VStack(spacing: 50) {
            
            Text("Button Örnek-3").font(.largeTitle)
            
            Text("Arka Planlı Butonlar").font(.title).foregroundColor(.gray)
            
            Text("SwiftUI ile butonlara arka plan ataması yapılabilir ve gölge eklenebilir").padding().frame(maxWidth: .infinity).background(Color.purple).layoutPriority(1).foregroundColor(.white).font(.title)
            
            Button(action: {}) {
                Text("Sade Buton").padding().foregroundColor(.white)
                    .background(Color.purple).cornerRadius(12)
            }
            
            
            Button(action: {}) {
                Text("Gölgelerin Gücü Adına").padding().foregroundColor(.white).background(Color.purple)
                .cornerRadius(8)
            }.shadow(color: Color.purple, radius: 20, x: 0, y: 5)
            
            Button(action: {}) {
                Text("Köşeleri Yuvarlak").padding(.init(top: 12, leading: 20, bottom: 12, trailing: 20))
                    .foregroundColor(.white)
                    .background(Color.purple).cornerRadius(.infinity)
                
                
            }
            
        }.frame(maxWidth: .infinity,maxHeight: .infinity).background(Color.black).foregroundColor(.white)
    }
}

struct Button_3_Previews: PreviewProvider {
    static var previews: some View {
        Button_3()
    }
}
