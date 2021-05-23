//
//  VStack_3.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/2/21.
//

import SwiftUI

struct VStack_3: View {
    var body: some View {
        VStack(spacing: 20) {
            
            Text("VStack Örnek-3")
                .font(.largeTitle)
            
            Text("Alignment").font(.title)
                .foregroundColor(.gray)
            
            Text("Stack içine eklenen nesneler varsayılan halde merkezde konumlandırılır")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .font(.title)
            
            
            VStack(alignment: .leading, spacing: 40){
                Text("Leading Alignment").font(.title)
                Divider()
                Image(systemName: "arrow.left")
            }
            .padding()
            .foregroundColor(.white)
            .background(RoundedRectangle(cornerRadius: 10)).foregroundColor(.blue)
            .padding()
            
            VStack(alignment: .trailing, spacing: 40) {
                
                Text("Trailing Alignment").font(.title)
                
                Divider()
                
                Image(systemName: "arrow.right")
            }
            .padding()
            .foregroundColor(.white)
            .background(RoundedRectangle(cornerRadius: 10)).foregroundColor(.blue)
            .padding()
        }
    }
}

struct VStack_3_Previews: PreviewProvider {
    static var previews: some View {
        VStack_3()
    }
}
