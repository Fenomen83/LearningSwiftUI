//
//  Previews.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/2/21.
//

import SwiftUI

struct Preview: View {
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Ön İzleme Seçenekleri").font(.largeTitle)
            Text("Light ve Dark Mod Birlikte").foregroundColor(.red).fontWeight(.bold)
            Text("Light ve Dark Mod için ön izleme seçeneklerini gruplamamız gerekiyor")
        }

        .frame(maxWidth: .infinity)
        .padding()
        .background(Color("ArkaPlan"))
    }
}

struct Preview_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Preview()
            Preview().environment(\.colorScheme, .dark)
            Preview().environment(\.sizeCategory, .extraLarge)
            Preview().previewLayout(PreviewLayout.fixed(width: 895, height: 415))
                .environment(\.sizeCategory, .accessibilityExtraLarge)
            Preview().previewDevice(PreviewDevice(rawValue: "iPhone 8 Plus(14.5)"))
        }
    }
}
