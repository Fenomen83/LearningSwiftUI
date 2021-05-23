//
//  HStack_3.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/2/21.
//

import SwiftUI

struct HStack_3: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("HSTack Örnek-3").font(.largeTitle)
            
            Text("Horizontal Alignment").font(.title).foregroundColor(.gray)
            
            Text("Varsayılan halde, HStack nesnesindeki tüm viewler DİKEYDE merkezde ve yan yana hizalanır").font(.title).frame(maxWidth: .infinity)
                .background(Color.blue)
                .foregroundColor(.black)
            
            
            HStack {
                Rectangle().foregroundColor(.blue).frame(width: 25)
                
                Text("Leading")
                Spacer()
                Text("Center")
                Spacer()
                Text("Trailing").padding(.trailing)
                
                
            }.border(Color.blue)
            
            
            HStack(alignment: .top) {
                Rectangle().foregroundColor(.blue).frame(width: 25)
                
                Text("Leading")
                Spacer()
                Text("Top")
                Spacer()
                Text("Trailing").padding(.trailing)
                
            }.border(Color.blue)
            
            
            
            HStack(alignment: .bottom) {
                Rectangle().foregroundColor(.blue).frame(width: 25)
                
                Text("Leading")
                Spacer()
                Text("Bottom")
                Spacer()
                Text("Trailing").padding(.trailing)
                
            }.border(Color.blue,width: 2)
            
            
            
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity).background(Color.black).foregroundColor(.white)
    }
}

struct HStack_3_Previews: PreviewProvider {
    static var previews: some View {
        HStack_3()
    }
}
