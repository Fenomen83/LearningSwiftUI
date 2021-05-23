//
//  IlkGiris8.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/2/21.
//

import SwiftUI

struct IlkGiris8: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Layout Priority").font(.largeTitle)
            
            Text("Layout Priority Hakkında Örnekler yapalım")
                .padding()
            
            Text("1Layout Priority Hakkında Örnekler yapalım. Layout Priority Hakkında Örnekler yapalım. Layout Priority Hakkında Örnekler yapalım.")
                .padding()
                .layoutPriority(2)
            
            Text("2Layout Priority Hakkında Örnekler yapalım. Layout Priority Hakkında Örnekler yapalım. Layout Priority Hakkında Örnekler yapalım.")
                .padding()
                .foregroundColor(.white)
                .background(RoundedRectangle(cornerRadius: 20).foregroundColor(Color.blue))
                .layoutPriority(3)
            
            Text("3Layout Priority Hakkında Örnekler yapalım. Layout Priority Hakkında Örnekler yapalım. Layout Priority Hakkında Örnekler yapalım.")
                .padding()
                .foregroundColor(.white)
                .background(RoundedRectangle(cornerRadius: 20).foregroundColor(Color.blue))
                .layoutPriority(3)
            
            Text("4Layout Priority Hakkında Örnekler yapalım. Layout Priority Hakkında Örnekler yapalım. Layout Priority Hakkında Örnekler yapalım.")
                .padding()
                .foregroundColor(.white)
                .background(RoundedRectangle(cornerRadius: 20).foregroundColor(Color.blue))
            
            
            Text("5Layout Priority Hakkında Örnekler yapalım. Layout Priority Hakkında Örnekler yapalım. Layout Priority Hakkında Örnekler yapalım.")
                .padding()
                .foregroundColor(.white)
                .background(RoundedRectangle(cornerRadius: 20).foregroundColor(Color.blue))
            
            Text("6Layout Priority Hakkında Örnekler yapalım. Layout Priority Hakkında Örnekler yapalım. Layout Priority Hakkında Örnekler yapalım.")
                .padding()
                .foregroundColor(.white)
                .background(RoundedRectangle(cornerRadius: 20).foregroundColor(Color.blue))
            
            Text("7Layout Priority Hakkında Örnekler yapalım. Layout Priority Hakkında Örnekler yapalım. Layout Priority Hakkında Örnekler yapalım.")
                .padding()
                .foregroundColor(.white)
                .background(RoundedRectangle(cornerRadius: 20).foregroundColor(Color.blue))
        }
    }
}

struct IlkGiris8_Previews: PreviewProvider {
    static var previews: some View {
        IlkGiris8()
    }
}
