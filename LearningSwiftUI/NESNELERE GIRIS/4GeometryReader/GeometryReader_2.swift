//
//  GeometryReader_2.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/2/21.
//

import SwiftUI

struct GeometryReader_2: View {
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Geometry Reader Örnek -2").font(.largeTitle)
            
            Text("View Konumlandırma").font(.title).foregroundColor(.gray)
            
            Text("Geometry Reader'ın değişkenlerini kullanarak barındırdığı viewleri merkezinden başka yerlere de ekleyebiliriz ve konumlandırabiliriz").font(.title).layoutPriority(1).padding()
            
            GeometryReader{ geometry in
                
                Text("Sol Üst").position(x: 75, y: 50)
                
                Text("Sağ Alt").position(x: geometry.size.width-150, y: geometry.size.height - 40)
                
            }.background(Color.pink).foregroundColor(.white)
            
            
            
        }.font(.title)
    }
}

struct GeometryReader_2_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader_2()
    }
}
