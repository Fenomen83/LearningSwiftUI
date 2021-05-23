//
//  Text_4.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/3/21.
//

import SwiftUI

struct Text_4: View {
    var body: some View {
        VStack(spacing: 10) {
            
            Text("Text Truncate")
            
            Text("Hiç kimse asla baştan başlayamaz, en azından benim deneyimlerime göre.")
                .padding(.horizontal).lineLimit(1).truncationMode(.head)
            
            Text("Hiç kimse asla baştan başlayamaz, en azından benim deneyimlerime göre.")
            .padding(.horizontal).lineLimit(1).truncationMode(.middle)
            
            
            Text("Hiç kimse asla baştan başlayamaz, en azından benim deneyimlerime göre.")
            .padding(.horizontal).lineLimit(1).truncationMode(.tail)
            
            Spacer()
            
            Text("Birden fazla text nesnesi ") +
                Text("artı işaretiyle").bold().foregroundColor(.red) +
            Text("birleştirilip tek bir") +
                Text("Text View Nesnesi").font(.title).underline() +
            Text("Şeklinde kullanılabilir")
        }
    }
}

struct Text_4_Previews: PreviewProvider {
    static var previews: some View {
        Text_4()
    }
}
