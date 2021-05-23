//
//  Image_1.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/3/21.
//

import SwiftUI

struct Image_1: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Image Örnek - 1").font(.largeTitle)
            
            Text("Asset Catalog'dan Görüntüler").font(.title).foregroundColor(.gray)
            
            Image("macbook")
            
            Image("macbook").resizable()//push out türünden davranmaya başlar
            
        }
    }
}

struct Image_1_Previews: PreviewProvider {
    static var previews: some View {
        Image_1()
    }
}
