//
//  VStack_2.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/2/21.
//

import SwiftUI

struct VStack_2: View {
    var body: some View {
        VStack(spacing: 80) {
            Text("VStack Spacing Örneği").font(.largeTitle)
            Text("BOŞLUK").font(.title)
                .foregroundColor(.green)
            
            Text("VStack init metodu bize Stack'in barındırdığı tüm nesneler için, içerden boşluk verme imkanı sağlıyor.")
                .frame(maxWidth: .infinity)
            .padding()
            .layoutPriority(1)
                .background(Color.blue)
                .font(.title)
                .foregroundColor(.white)
            
            Image(systemName:  "arrow.up.and.down.circle.fill").font(.largeTitle)
            
            Text("Buradaki tüm nesneler arasında 80 boşluk var").font(.title)
        }
        
    }
}

struct VStack_2_Previews: PreviewProvider {
    static var previews: some View {
        VStack_2()
    }
}
