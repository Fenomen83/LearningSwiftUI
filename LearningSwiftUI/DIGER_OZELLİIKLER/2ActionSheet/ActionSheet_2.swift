//
//  ActionSheet_2.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/3/21.
//

import SwiftUI

struct ActionSheet_2: View {
    
    struct ActionSheetVeri : Identifiable {
        var id = UUID()
        let baslik : String
        let mesaj : String
        
    }
    
    
    @State private var veriler : ActionSheetVeri? = nil
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Action Sheet Örnek - 2").font(.largeTitle)
            
            Button("Action Sheet Veri Aktarımı") {
                self.veriler = ActionSheetVeri(baslik: "Seçenekler", mesaj: "Lütfen birini seçin")
            }
            
        }.actionSheet(item: $veriler) { mesaj in
            ActionSheet(title: Text(mesaj.baslik).foregroundColor(.red), message: Text(mesaj.mesaj))
            
        }
    }
}

struct ActionSheet_2_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheet_2()
    }
}
