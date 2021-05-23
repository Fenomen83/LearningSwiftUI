//
//  IlkGiris5.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/2/21.
//

import SwiftUI

struct IlkGiris5: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("SF Semboller")
            Text("Bu bölümde SF Sembollerin nasıl kullanıldığını göreceğiz?")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .font(.title)
            Image(systemName: "hands.clap.fill")
            Image(systemName: "hand.thumbsup.fill").foregroundColor(.blue)
            Image("apple")
                .frame(maxWidth: .infinity)
                .foregroundColor(.blue)
        }.font(.largeTitle)
    }
}

struct IlkGiris5_Previews: PreviewProvider {
    static var previews: some View {
        IlkGiris5()
    }
}
