//
//  TextField_4.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/3/21.
//

import SwiftUI

struct TextField_4: View {
    @State private var txtVeri = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Text field  Örnek - 1").font(.largeTitle)
            
            Text("Custom PlaceHolder /Hint Text").font(.title).foregroundColor(.gray)
            
            
            ZStack(alignment: .leading) {
                if txtVeri.isEmpty {
                    //placeholder'ın görünmesi gerekiyor
                    Text("Adınızı Girin....").bold().foregroundColor(Color(.systemGray3))
                }
                
                TextField("",text: $txtVeri).foregroundColor(.red).font(Font.system(size: 18, weight: .bold, design: .rounded))
            }.padding(.init(top: 4, leading: 10, bottom: 4, trailing: 10))
            .overlay(
                RoundedRectangle(cornerRadius: 8).stroke(Color.orange,lineWidth: 2)
            ).padding(.horizontal)
            
            
            
            ZStack(alignment: .leading){
                
                if txtVeri.isEmpty {
                    Text("Email Adresinizi Giriniz...").italic().foregroundColor(.orange).opacity(0.5)
                }
                
                TextField("",text: $txtVeri)
            }.padding(.init(top: 5, leading: 10, bottom: 5, trailing: 10))
            .overlay(
                RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1)
            ).padding(.horizontal)
            
            
        }
    }
}

struct TextField_4_Previews: PreviewProvider {
    static var previews: some View {
        TextField_4()
    }
}
