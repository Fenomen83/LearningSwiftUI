//
//  TextField_6.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/3/21.
//

import SwiftUI

struct TextField_6: View {
    @State private var txtVeri = ""
    @State private var disable1 = false
    @State private var adiSoyadi = "Metin Haliloğlu"
    
    var body: some View {
        VStack(spacing: 15) {
            
            TextField("Telefon Numaranızı Girin : ",text: $txtVeri)
                .keyboardType(.phonePad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            
            TextField("Parolanızı Girin : ",text: $txtVeri)
                .keyboardType(.numbersAndPunctuation)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            
            TextField("Mesajınızı Girin",text: $txtVeri)
            .disableAutocorrection(true) //Otomatik düzeltme için önerileri göstermez
                .textFieldStyle(RoundedBorderTextFieldStyle()).padding(.horizontal)
            
            TextField("Ülkeniz",text: $txtVeri)
            .disableAutocorrection(false) //Otomatik düzeltme için öneriler gösterilir
                .textFieldStyle(RoundedBorderTextFieldStyle()).padding(.horizontal)
            
            
            Toggle("Bilgilerin Düzenlensin : ",isOn: $disable1).padding(.horizontal)
            
            TextField("Adınız Soyadınız",text: $adiSoyadi)
                .disableAutocorrection(false).textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            .disabled(disable1)
                .opacity(disable1 ? 0.5 : 1)
            
        }
    }
}

struct TextField_6_Previews: PreviewProvider {
    static var previews: some View {
        TextField_6()
    }
}
