//
//  IlkGiris7.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/2/21.
//

import SwiftUI

struct IlkGiris7: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("ŞEKİLLER").font(.largeTitle)
            
            Text("Köşeleri yuvarla")
                .multilineTextAlignment(.center)
                .frame(width: 100, height: 100)
                .padding()
                .foregroundColor(.white)
                .background(RoundedRectangle(cornerRadius: 20).foregroundColor(Color.blue))
            
            Image("apple")
                .cornerRadius(120)
                .background(Color.blue)
        }
    }
}

struct IlkGiris7_Previews: PreviewProvider {
    static var previews: some View {
        IlkGiris7()
    }
}
