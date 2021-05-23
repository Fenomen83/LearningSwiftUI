//
//  Image_3.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/3/21.
//

import SwiftUI

struct Image_3: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Image Örnek - 3")
            
            Text("Circle")
            Image("macbook").clipShape(Circle())
            
            Text("Rounded Rectangle")
            Image("macbook").clipShape(RoundedRectangle(cornerRadius: 10)).shadow(radius: 10 , x:1 , y:2)
            
            Text("Capsule ve Offset")
            Image("macbook").clipShape(Capsule().offset(x: -80, y: 0))
            
            Text("Deneme").offset(x: -200)
        }
    }
}

struct Image_3_Previews: PreviewProvider {
    static var previews: some View {
        Image_3()
    }
}
