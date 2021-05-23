//
//  IlkGiris6.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/2/21.
//

import SwiftUI

struct IlkGiris6: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("KATMANLAR")
            
            Image("apple").opacity(0.25)
                .frame(maxWidth: .infinity)
                .background(Color.black.opacity(0.35))
                .background(Color.green.opacity(0.65))
                .background(Color.blue.opacity(0.45))
                .overlay(Text("APPLE Cihazları").foregroundColor(.white))
        }
        
        
    }
}

struct IlkGiris6_Previews: PreviewProvider {
    static var previews: some View {
        IlkGiris6()
    }
}
