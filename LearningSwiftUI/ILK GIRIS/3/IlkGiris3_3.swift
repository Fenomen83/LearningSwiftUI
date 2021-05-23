//
//  IlkGiris3_3.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/2/21.
//

import SwiftUI

struct IlkGiris3_3: View {
    var body: some View {
        VStack{
            Text("Text-1")
            Text("Text-2").font(.title).foregroundColor(Color.black).background(Color.white)
            Text("Text-3")
            Text("Text-4")
        }
        .font(.largeTitle)
        .foregroundColor(Color.red)
        .background(Color.blue)
        
    }
}

struct IlkGiris3_3_Previews: PreviewProvider {
    static var previews: some View {
        IlkGiris3_3()
    }
}
