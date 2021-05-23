//
//  Text_5.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/3/21.
//

import SwiftUI

struct Text_5: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("iOS Programlama").underline() +
                
            Text(" SWIFTUI").font(.largeTitle).fontWeight(.light)
                .foregroundColor(.blue).underline() +
                
                Text(" Viewler").underline()
            
            //Baseline değiştirilecek
            
            Text("iOS Programlama").underline() +
                
            Text(" SWIFTUI").font(.largeTitle).fontWeight(.light)
                .foregroundColor(.blue).underline().baselineOffset(-40) +
                
                Text(" Viewler").underline()
            
            
            
            Text("Bu yazı çok yüksek önceliğe sahip. İçeriğinin mutlaka kullanıcı tarafından görülmesi gerekiyor. Ayarlamalarını buna göre yap lütfen.")
                .font(.title).foregroundColor(.white)
                .frame(maxWidth: .infinity).padding().background(Color.green)
            .layoutPriority(2) // en yüksek önceliğe sahip Text Nesnesi
            
            Text("Muhtemelen bu textin tamamı görünmeyecek. Çünkü herhangi bir öncelik değerine sahip değil")
                .font(.title).foregroundColor(.white).frame(maxWidth: .infinity).padding().background(Color.pink)
            
            Text("Bu metin, bir üstteki textin kesilmesini sağlayacak. Çünkü ikinci en yüksek öncelik değerine sahip. Böylece bu metin tamamen gösterilirken  üstteki metin kesilecek. Eğer metinlerin tamamı sığıyorsa içeriğin biraz daha uzamasını sağlayalım.")
                .font(.title)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.orange)
                .layoutPriority(1)
            
            Text("Avenir Next Regular").font( Font.custom("Avenir Next", size: 26) )
            Text("Gill Sans").font(Font.custom("Gill Sans", size: 20))
        }
    }
}

struct Text_5_Previews: PreviewProvider {
    static var previews: some View {
        Text_5()
    }
}
