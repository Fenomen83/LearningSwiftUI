//
//  Button_6.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/2/21.
//

import SwiftUI

struct Button_6: View {
    var body: some View {
        ZStack {
            VStack(spacing: 40) {
                Text("Button Örnekleri-6").font(.largeTitle)
                
                Text("Sağ Alta Buton").font(.title).foregroundColor(.gray)
                
                Text("ZStack kullanarak Floating Button oluşturma işlemi çok daha kolay hale gelebiliyor.").padding()
                    .frame(maxWidth: .infinity).background(Color.orange).foregroundColor(.white).font(.title)
                Spacer()
            }
            
            VStack {
                Spacer()// butonu aşağı doğru ittik
                
                HStack {
                    Spacer()
                    Button(action: {}) {
                        Image(systemName: "plus").font(.largeTitle)
                    }.padding().foregroundColor(.white).background(Color.purple).cornerRadius(.infinity)
                }.padding(30)
                
            }
        }
    }
}

struct Button_6_Previews: PreviewProvider {
    static var previews: some View {
        Button_6()
    }
}
