//
//  ZStack_2.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/2/21.
//

import SwiftUI

struct ZStack_2: View {
    var body: some View {
        ZStack {
            
            Color.gray
            
            VStack(spacing: 20 ){
                Text("ZStack Örnek - 2").font(.largeTitle)
                
                Text("Safe Area Göz Ardı Edilecek").foregroundColor(.white)
                Text("Eğer katmanların safe area'yı bir tampon kenar olarak kullanılması görevini sürdürsün istiyorsanız safe areayı göz ardı etmek hatalı olabilir.").frame(maxWidth: .infinity)
                .padding()
                    .background(Color.green)
                Spacer()
                
                
            }.font(.largeTitle)
            
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ZStack_2_Previews: PreviewProvider {
    static var previews: some View {
        ZStack_2()
    }
}
