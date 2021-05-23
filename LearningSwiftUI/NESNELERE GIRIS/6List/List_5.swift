//
//  List_5.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/3/21.
//

import SwiftUI

struct List_5: View {
    @State var veriler = ["Silmek için sola sürükleyin","SwiftUI Kodlamayı Öğren","Market Alışverişi","Yemek Pişir","Dans Kursuna Kaydol","Sinema Biletini Al","Kask Fiyatlarını Araştır","Evi Temizle","Arabayı Tamir Et"]
    
    var body: some View {
        
        NavigationView {
            
            List {
                
                ForEach(veriler, id: \.self) { veri in
                    
                    Text(veri).font(.system(size: 25)).padding()
                    
                }.onMove(perform: satirHareket)
            }.navigationBarTitle(Text("Yapılacaklar"))
            .navigationBarItems(trailing: EditButton())
        }.accentColor(.green)
        
        
        
        
        
    }

    func satirHareket(nereden indexler : IndexSet, nereye hedefIndex: Int) {
        if let ilk = indexler.first {
            veriler.insert(veriler.remove(at: ilk), at: hedefIndex-1)
        }
    }
}

struct List_5_Previews: PreviewProvider {
    static var previews: some View {
        List_5()
    }
}
