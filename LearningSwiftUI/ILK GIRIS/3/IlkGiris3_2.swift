//
//  IlkGiris3_2.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/2/21.
//

import SwiftUI

struct IlkGiris3_2: View {
    var body: some View {
        VStack(spacing:20){
            Text("BAŞLIK").font(.largeTitle)
            Text("Alt Başlık").font(.title).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            Text("Bu gün SwiftUI öğreniyırum.\nÇok Sevinçliyim.")
                .frame(maxWidth: .infinity)
                .padding()
                .foregroundColor(.white)
                .padding()
                .background(Color.red)
                .padding()
                .background(Color.orange)
                
        }
    }
}

struct IlkGiris3_2_Previews: PreviewProvider {
    static var previews: some View {
        IlkGiris3_2()
    }
}
