//
//  Sheet_1.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/3/21.
//

import SwiftUI

struct Sheet_1: View {
    @State private var gorunsunSheet = false
    
    var body: some View {
        Button("Detay Ekran Göster") {
            self.gorunsunSheet = true
        }.sheet(isPresented: $gorunsunSheet) {
            Sheet_Detail(baslik: "Sheet", altBaslik: "Bool Değişkeni Değişti ve Ekran Gösterildi")
        }
    }
}

struct Sheet_Detail : View {
    
    @Environment(\.presentationMode) var presentation
    
    let baslik : String
    let altBaslik : String
    
    var body : some View {
        
        VStack(spacing: 20) {
            
            Text(baslik).font(.largeTitle)
            Text(altBaslik).font(.title).foregroundColor(.gray)
            Spacer()
            Button("Geri Dön") {   self.presentation.wrappedValue.dismiss()   }.accentColor(.red).font(.system(size: 25, weight: .bold))
        }
    }
    
}

struct Sheet_1_Previews: PreviewProvider {
    static var previews: some View {
        Sheet_1()
    }
}
