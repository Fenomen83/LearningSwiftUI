//
//  Image_2.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/3/21.
//

import SwiftUI

struct Image_2: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Image Örnek - 2").font(.largeTitle)
            
            Text("Resizing").font(.title).foregroundColor(.gray)
            
            
            Text("Orijinal Görüntü")
            Image("macbook")
            
            Spacer()
            
            Text("Ölçeklendirme Olmadan")
            Image("macbook").resizable().frame(width: 150, height: 150)
            
            Text("Ölçeklendirmeli")
            Image("macbook").resizable().scaledToFit().frame(width: 150, height: 150)
                .background(Color.white)
            
            Image("macbook").resizable().scaledToFill().frame(width: 150, height: 150)
            
            
            
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.black.edgesIgnoringSafeArea(.vertical))
            .foregroundColor(.white)
    }
}

struct Image_2_Previews: PreviewProvider {
    static var previews: some View {
        Image_2()
    }
}
