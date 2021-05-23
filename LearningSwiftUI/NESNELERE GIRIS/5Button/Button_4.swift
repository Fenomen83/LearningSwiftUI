//
//  Button_4.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/2/21.
//

import SwiftUI

struct Button_4: View {
    var body: some View {
        VStack(spacing: 30 ) {
            Text("Buton Örnek-4").font(.largeTitle)
            Text("Butonlarda Kenarlık").font(.title).foregroundColor(.gray)
            
            Text("Butonlarınıza kenarlık ekleyerek onları daha güzel hale getirebilirsiniz").padding()
                .frame(maxWidth: .infinity).background(Color.orange).foregroundColor(.white).layoutPriority(1).font(.title)
            
            Button(action: {}) {
                Text("Kare Kenarlıklı Buton").padding().border(Color.orange,width: 3)
            }
            Button(action: {}) {
                Text("Yuvarlak Kenarlıklı Buton").padding().border(Color.orange,width: 5).cornerRadius(20)
            }
            
            Button(action: {}) {
                Text("Dairesel Kenarlıklı Buton").padding().background(RoundedRectangle(cornerRadius: 20).stroke(Color.orange,lineWidth: 5))
            }
            
            
        }
    }
}

struct Button_4_Previews: PreviewProvider {
    static var previews: some View {
        Button_4()
    }
}
