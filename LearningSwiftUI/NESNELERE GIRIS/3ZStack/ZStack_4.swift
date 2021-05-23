//
//  ZStack_4.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/2/21.
//

import SwiftUI

struct ZStack_4: View {
    var body: some View {
        VStack {
            
            Text("ZStack Örnek - 4").font(.largeTitle)
            
            Text("Layering & Aligning").font(.title).foregroundColor(.gray)
            
            Text("ZStack katmanların hizalanması için çok güzel bir araçtır. Örneğin bir görüntünün üzerine rahatlıkla yazı yazdırabilirsiniz. Bütün subviewleri ZSTack bünyesinde bu şekilde hizalayabilirsiniz(aligning)")
                .frame(maxWidth: .infinity, minHeight: 170)
                .padding().foregroundColor(.white)
                .background(Color.green).font(.title)
            
            ZStack(alignment: .bottomTrailing) {
                Image("apple").resizable().frame(width: 150, height: 200)
                Rectangle().foregroundColor(.blue).frame(width:150, height: 55)
                
                Text("APPLE").font(.title).padding(8).foregroundColor(.white)
                
            }
            
        }
    }
}

struct ZStack_4_Previews: PreviewProvider {
    static var previews: some View {
        ZStack_4()
    }
}
