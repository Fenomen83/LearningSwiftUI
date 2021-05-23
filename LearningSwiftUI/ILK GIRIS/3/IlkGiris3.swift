//
//  IlkGiris3.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/2/21.
//

import SwiftUI

struct IlkGiris3: View {
    var body: some View {
        VStack{
            Text("Satır-1")
            Text("Satır-2")
            Text("Satır-3")
            Text("Satır-4")
            Text("Satır-5")
            Text("Satır-6")
            Text("Satır-7")
            Text("Satır-8")
            Text("Satır-9")
            VStack {
                Text("Satır-10")
                Text("Satır-11")
            }
        }
    }
}

struct IlkGiris3_Previews: PreviewProvider {
    static var previews: some View {
        IlkGiris3()
    }
}
