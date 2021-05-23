//
//  TextField_1.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/3/21.
//

import SwiftUI

struct TextField_1: View {
    @State private var txtGiris = ""
    
    var body: some View {
        VStack(spacing: 20) {
            
            Text("TextField Örnek - 1").font(.largeTitle)
            Text("Giriş").font(.title).foregroundColor(.gray)
            
            Image(systemName: "arrow.down.circle")
            
            TextField("",text: $txtGiris)
            
            Image(systemName: "arrow.up.circle")
            
            TextField("",text:$txtGiris)
            .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            
            VStack(spacing: 20) {
                TextField("Buraya Title Text Girilecek",text: $txtGiris).textFieldStyle(RoundedBorderTextFieldStyle())
                
                TextField("Kullanıcı adınızı girin",text: $txtGiris)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                
                
                TextField("Parola",text: $txtGiris).textFieldStyle(RoundedBorderTextFieldStyle())
            }.font(.none).padding(.horizontal)
            
        }.font(.title)
    }
}

struct TextField_1_Previews: PreviewProvider {
    static var previews: some View {
        TextField_1()
    }
}
