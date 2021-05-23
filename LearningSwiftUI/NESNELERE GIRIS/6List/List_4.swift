//
//  List_4.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/3/21.
//

import SwiftUI

struct List_4: View {
    @State var veriler = ["Silmek için sola sürükleyin","SwiftUI Kodlamayı Öğren","Market Alışverişi","Yemek Pişir","Dans Kursuna Kaydol","Sinema Biletini Al","Kask Fiyatlarını Araştır","Evi Temizle","Arabayı Tamir Et"]
    
    
    var body: some View {
        
        List {
            
            Section(header: Text("Yapılacaklar Listesi").padding()) {
            
                ForEach(veriler,id : \.self) { veri in
                    
                    Text(veri).font(.system(size: 24)).padding()
                    
                }
                .onDelete(perform: veriSil)
                
                
            }
            
            
        }
    }
    func veriSil(at indexler : IndexSet) {
        if let first = indexler.first {
            veriler.remove(at: first)
        }
    }
}

struct List_4_Previews: PreviewProvider {
    static var previews: some View {
        List_4()
    }
}
