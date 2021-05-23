//
//  Opacity_1.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/3/21.
//

import SwiftUI

struct Opacity_1: View {
    var body: some View {
        VStack{
            Text("Opacity Örnek - 1").font(.largeTitle)
            Text("Giriş").font(.title).foregroundColor(.gray)
            
            Group{
                Color.blue.frame(width: 300, height: 75).opacity(1).overlay(Text("1"))
                Color.blue.frame(width: 300, height: 75).opacity(0.8).overlay(Text("0.8"))
                Color.blue.frame(width: 300, height: 75).opacity(0.6).overlay(Text("0.6"))
                Color.blue.frame(width: 300, height: 75).opacity(0.4).overlay(Text("0.4"))
                Color.blue.frame(width: 300, height: 75).opacity(0.2).overlay(Text("0.2"))
                Color.blue.frame(width: 300, height: 75).opacity(0).overlay(Text("0"))
            }.padding().foregroundColor(.black)

        }
    }
}

struct Opacity_1_Previews: PreviewProvider {
    static var previews: some View {
        Opacity_1()
    }
}
