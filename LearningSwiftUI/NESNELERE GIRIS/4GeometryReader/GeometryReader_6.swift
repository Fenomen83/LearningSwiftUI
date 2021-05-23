//
//  GeometryReader_6.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/2/21.
//

import SwiftUI

struct GeometryReader_6: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Geometry Reader Örnek - 6").font(.largeTitle)
            
            Text("Safe Area Inset").foregroundColor(.gray).font(.title)
            
            Text("Geometry Reader ile Safe Areanın Bilgilerini Alabiliriz").font(.title)
            
            GeometryReader{ geometry in
                
                VStack(spacing: 10){
                    Text("Soldan : \(geometry.safeAreaInsets.leading)").bold()
                    
                    Text("Sağdan : \(geometry.safeAreaInsets.trailing)").bold()
                    Text("Üstten : \(geometry.safeAreaInsets.top)").bold()
                    
                    Text("Alttan : \(geometry.safeAreaInsets.bottom)").bold()
                }.foregroundColor(.white)
            }.font(.title).background(Color.yellow)
            
            
        }
    }
}

struct GeometryReader_6_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader_6()
    }
}
