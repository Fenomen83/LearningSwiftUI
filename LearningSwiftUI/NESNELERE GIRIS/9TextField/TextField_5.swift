//
//  TextField_5.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/3/21.
//

import SwiftUI

struct TextField_5: View {
    @State private var txtVeri = ""
    
    var body: some View {
        VStack(spacing: 20) {
            
            VStack{
                HStack{
                    Image(systemName: "magnifyingglass").foregroundColor(.gray)
                    TextField("Adınız",text: $txtVeri)
                    Image(systemName: "slider.horizontal.3")
                }
                Divider()
            }.padding()
            
            
            
            HStack{
                
                Image(systemName: "envelope").foregroundColor(.gray).font(.headline)
                TextField("Email Adresiniz",text: $txtVeri)
                
            }.padding()
            .overlay(
                RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1)
            ).padding()
            
            
            
            HStack {
                TextField("Ülkeniz",text: $txtVeri)
                
                Button(action: {}) {
                    Image(systemName: "chevron.right").padding(.horizontal)
                }.accentColor(.blue)
                
            }
            .padding()
            .overlay(Capsule().stroke(Color.gray,lineWidth: 1))
            .padding()
        }
    }
}

struct TextField_5_Previews: PreviewProvider {
    static var previews: some View {
        TextField_5()
    }
}
