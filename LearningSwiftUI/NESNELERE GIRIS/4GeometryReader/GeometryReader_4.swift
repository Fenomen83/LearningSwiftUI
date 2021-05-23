//
//  GeometryReader_4.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/2/21.
//

import SwiftUI

struct GeometryReader_4: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Geometry Reader Örnek-4").font(.largeTitle)
            
            Text("Koordinat bilgilerini alma").foregroundColor(.gray)
            
            Text("Geometry View için koordinat bilgilerini almak biraz farklı oluyor. İsterseniz bir örnek yapalım ").layoutPriority(1)
            
            
            GeometryReader{ geometry in
                
                VStack(spacing: 10) {
                    Text("X: \(geometry.frame(in: .local).origin.x)")
                   
                    Text("Y: \(geometry.frame(in: .local).origin.y)")
                }.foregroundColor(.white).font(.title)
                
                
                
            }.background(Color.blue)
            
            Text("Local Koordinat Uzayı Daime 0 ve 0 sonuçlarını üretir")
            Text("Bakmamız gereken değer global koordinat değerleri olmalı")
            
            GeometryReader { geometry in
                VStack(spacing: 10) {
                    Text("X : \(geometry.frame(in: .global).origin.x)")
                    Text("Y : \(geometry.frame(in: .global).origin.y)")
                }.foregroundColor(.white).font(.title)
                
                }.background(Color.blue).padding()
            
            
        }
    }
}

struct GeometryReader_4_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader_4()
    }
}
