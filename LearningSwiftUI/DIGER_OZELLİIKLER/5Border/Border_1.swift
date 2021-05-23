//
//  Border_1.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/3/21.
//

import SwiftUI

struct Border_1: View {
    var body: some View {
        VStack{
            Text("Border Örnek - 1").font(.largeTitle)
            Text("Giriş").font(.title).foregroundColor(.gray)
            
            Text("Birçok View'e border ekleyebiliriz. Varsayılan kalınlık değeri : 1")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .font(.title)
            
            Button(action: {
                
                
            }, label: {
                Text("Buton ve Border")
                    .padding()
            })
            .border(Color.red)
            
            Image("macbook").resizable().frame(width: 100, height: 100).border(Color.red, width: 5)
            
            RoundedRectangle(cornerRadius: 20).fill(Color.blue).padding()
                .border(Color.black, width: 5)
                .padding()
            
            Text("Buton ve Border")
            .padding()
            .foregroundColor(Color.white)
                .background(Capsule().fill(Color.blue))
                .overlay(Capsule().stroke(Color.red, lineWidth: 5))
        }
    }
}

struct Border_1_Previews: PreviewProvider {
    static var previews: some View {
        Border_1()
    }
}
