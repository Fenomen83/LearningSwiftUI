//
//  Blur_1.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/3/21.
//

import SwiftUI

struct Blur_1: View {
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Blur Örnek - 1").font(.largeTitle)
            Text("Giriş").font(.title).foregroundColor(.gray)
            
            VStack{
                Image("macbook").blur(radius: 1).overlay(Text("1").bold().foregroundColor(.white))
                Image("macbook").blur(radius: 10).overlay(Text("10").bold().foregroundColor(.white))
                Image("macbook").blur(radius: 30).overlay(Text("30").bold().foregroundColor(.white))
            }
        }.padding()
    }
}

struct Blur_1_Previews: PreviewProvider {
    static var previews: some View {
        Blur_1()
    }
}
