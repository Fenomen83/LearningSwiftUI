//
//  HStack_1.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/2/21.
//

import SwiftUI

struct HStack_1: View {
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Horizontal Stack Örnek-1").font(.largeTitle)
            
            Text("Giriş").font(.title).foregroundColor(.gray)
            Text("HStack nesnesi, barındırdığı viewlerini yatayda hizalar.").frame(maxWidth: .infinity).font(.title)
                .background(Color.blue)
            
            HStack{
                Text("Leading")
                Text("Middle")
                Text("Trailing")
            }.padding().border(Color.blue, width: 3)
            
            HStack(spacing: 10) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }.padding().font(.title)
            
            
            HStack(spacing: 20) {
                Image(systemName: "a.circle.fill")
                Image(systemName: "b.circle.fill")
                Image(systemName: "c.circle.fill")
                Image(systemName: "d.circle.fill")
                Image(systemName: "e.circle.fill")
                Image(systemName: "f.circle.fill")
            }.font(.largeTitle)
                .foregroundColor(.white)
            .padding()
            .background(RoundedRectangle(cornerRadius: 10))
                .foregroundColor(.blue)
            
            
            
            
            
        }
    }
}

struct HStack_1_Previews: PreviewProvider {
    static var previews: some View {
        HStack_1()
    }
}
