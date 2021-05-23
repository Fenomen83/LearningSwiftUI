//
//  Text_1.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/3/21.
//

import SwiftUI

struct Text_1: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Text Örnek-1").font(.largeTitle)
            Text("Wrapping").font(.title).foregroundColor(.gray)
            
            Text("Text View read-only metinler oluşturmak için kullanılır. Eğer değiştirmezseniz varsayılan ayarlarda tüm içeriğini görüntüleyecek şekilde -belirli bir yere kadar- boyutlarını ayarlar. Eğer bu boyutları satır bazlı sınırlandırmak isterseniz lineLimit(satirSayisi) fonksiyonunu kulllanmalısınız. Eğer yazının içeriği belirtilen 'limit satır sayısnı' aşıyorsa geri kalanı ... şeklinde görüntülenir").frame(maxWidth: .infinity).background(Color.blue).foregroundColor(.white).font(.title)
            .fixedSize(horizontal: false, vertical: true)
            
            
            Text("Bugün okula gidip gitmeyeceğime karar vermedim henüz").font(.title).padding(.horizontal).lineLimit(3)
        }
    }
}

struct Text_1_Previews: PreviewProvider {
    static var previews: some View {
        Text_1()
    }
}
