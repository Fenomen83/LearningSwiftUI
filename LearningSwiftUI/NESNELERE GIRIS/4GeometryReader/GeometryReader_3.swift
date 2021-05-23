//
//  GeometryReader_3.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/2/21.
//

import SwiftUI

struct GeometryReader_3: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Geometry Reader Örnek - 3").font(.largeTitle)
            
            Text("Boyutları Öğrenme").foregroundColor(.gray)
            
            Text("Geometry Reader Kullanarak Bir Alanın Genişliği veya Yüksekliği Elde Edilebilir.").padding()
            
            GeometryReader { geometry in
                
                VStack(spacing: 10) {
                    Text("Genişlik : \(geometry.size.width)")
                    Text("Yükseklik : \(geometry.size.height)")
                }.foregroundColor(.white)
                
            }.background(Color.blue)
            
            
            //2. Geometry Reader Alaın
            GeometryReader{ geometry in
                
                VStack(spacing: 10) {
                    Text("Genişlik : \(geometry.size.width)")
                    Text("Yükseklik : \(geometry.size.height)")
                }.foregroundColor(.white)
                
                
                }.background(Color.blue).padding(25)
            
        }.font(.title)
    }
}

struct GeometryReader_3_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader_3()
    }
}
