//
//  HStack_2.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/2/21.
//

import SwiftUI

struct HStack_2: View {
    var body: some View {
        VStack(spacing: 40) {
            
            Text("HStack Örnek-2").font(.largeTitle).foregroundColor(.white)
            
            Text("Spacing-Boşluk").font(.title).foregroundColor(.green).fontWeight(.bold)
            
            Text("HStack nesnelerinde spacing özelliğine değer atayarak tüm nesneler arasında yatayda boşluk ayarlayabilirsiniz").frame(maxWidth: .infinity)
            .padding()
            .layoutPriority(1)
                .background(Color.blue)
                .font(.title)
                .foregroundColor(.black)
            
            
            Text("Varsayılan Boşluk Miktarı").font(.title).foregroundColor(.white)
            
            HStack{
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }.font(.largeTitle).foregroundColor(.white)
            
            Divider()
            Text("80 Boşluk")
            
            HStack(spacing: 80){
                Image(systemName: "4.circle")
                Image(systemName: "5.circle")
                Image(systemName: "6.circle")
                Image(systemName: "7.circle")
            }.font(.largeTitle).foregroundColor(.white)
        }.frame(maxWidth: .infinity, maxHeight: .infinity).background(Color.black.opacity(0.25))
    }
}

struct HStack_2_Previews: PreviewProvider {
    static var previews: some View {
        HStack_2()
    }
}
