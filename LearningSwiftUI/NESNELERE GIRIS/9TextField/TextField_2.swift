//
//  TextField_2.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/3/21.
//

import SwiftUI

struct TextField_2: View {
    @State private var txtLeading = "Leading"
    @State private var txtCenter = "Center"
    @State private var txtTrailing = "Trailing"
    @State private var txtAdiSoyadi = ""
    
    var body: some View {
        VStack(spacing:20) {
            Text("TextField Örnek - 2").font(.largeTitle).foregroundColor(.red)
            
            Text("Alignment ve Font Size").font(.title).foregroundColor(.gray)
            
            TextField("",text: $txtLeading)
            .textFieldStyle(RoundedBorderTextFieldStyle())
                .multilineTextAlignment(.leading)
            
            
            TextField("",text: $txtCenter).textFieldStyle(RoundedBorderTextFieldStyle())
                .multilineTextAlignment(.center)
            
            TextField("",text: $txtTrailing).textFieldStyle(RoundedBorderTextFieldStyle())
                .multilineTextAlignment(.trailing)
            
            
            TextField("Adınız Soyadınız",text: $txtAdiSoyadi).textFieldStyle(RoundedBorderTextFieldStyle())
            
            
            TextField("Adınızı Soyadınız",text: $txtAdiSoyadi).font(Font.system(size: 36, design: .monospaced)).textFieldStyle(RoundedBorderTextFieldStyle()).padding(.horizontal)
            
            
            TextField("Adınız Soyadınız",text: $txtAdiSoyadi).font(Font.system(size: 25, design: Font.Design.serif)).textFieldStyle(RoundedBorderTextFieldStyle()).padding(.horizontal)            
        }
    }
}

struct TextField_2_Previews: PreviewProvider {
    static var previews: some View {
        TextField_2()
    }
}
