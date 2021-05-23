//
//  Shadow_1.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/3/21.
//

import SwiftUI

struct Shadow_1: View {
    var body: some View {
        VStack{
            Text("Shadow Örnek - 1").font(.largeTitle)
            Text("Giriş").font(.title).foregroundColor(.gray)
            
            Group{
                Color.blue.frame(width: 300, height: 75).shadow(radius: 1).overlay(Text("1"))
                Color.blue.frame(width: 300, height: 75).shadow(radius: 8).overlay(Text("8"))
                Color.blue.frame(width: 300, height: 75).shadow(radius: 20).overlay(Text("20"))
                Color.blue.frame(width: 300, height: 75).shadow(radius: 40).overlay(Text("40"))
            }.padding().foregroundColor(.white)
            
            Text("SHADOW").font(.largeTitle).foregroundColor(.red).shadow(color: Color.black.opacity(1), radius: 10)
            
            
            Group{
                Circle().fill(Color.blue).shadow(radius: 2, x:10, y: 10).overlay(Text("40"))
            }.padding().foregroundColor(.white)
        }
    }
}

struct Shadow_1_Previews: PreviewProvider {
    static var previews: some View {
        Shadow_1()
    }
}
