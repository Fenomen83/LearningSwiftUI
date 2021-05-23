//
//  GeometryReader_1.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/2/21.
//

import SwiftUI

struct GeometryReader_1: View {
    var body: some View {
        VStack(spacing: 20){
            
            Text("Geometry Reader Örnek -1 ").font(.largeTitle)
            
            Text("Giriş").font(.title).foregroundColor(.gray)
            
            Text("Geometry Reader Push-Out türünde bir container view. Bu yüzden yerleştiği tüm boşluğu kaplamaya çalışır. Onu kullanarak barındırdığı viewleri konumlandırabiliriz.").font(.title).padding().layoutPriority(1)
            GeometryReader { _ in
                Text("Viewler Geometry Reader içinde merkeze konumlandırılır").font(.title)
            }.foregroundColor(.white).background(Color.blue)
            
            
            
            
            
        }
    }
}

struct GeometryReader_1_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader_1()
    }
}
