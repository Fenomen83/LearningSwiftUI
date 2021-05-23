//
//  List_1.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/3/21.
//

import SwiftUI

struct List_1: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("List").font(.largeTitle)
            Text("Static Data").font(.title).foregroundColor(.gray)
            
            Text("List View ile istediğiniz kadar statik view veya veri gösterebilirsiniz. Ekleyebileceğiniz verinin bir sınırı yok. Ekrana sığmasa bile Scroll özelliğiyle geri kalanını görebilirsiniz.").frame(maxWidth: .infinity).font(.title).padding().background(Color.orange).layoutPriority(1).foregroundColor(.white)
            
            List {
                Text("1. Satır")
                Text("2. Satır")
                Text("3. Satır")
                Image("apple").resizable().frame(width: 100, height: 100,alignment: .leading)
                Button("Buraya Tıkla",action: {}).foregroundColor(.orange)
                
                HStack {
                    Spacer()
                    Text("Merkezde Görünecek")
                    Spacer()
                }
                
                
            }
            
            
        }
    }
}

struct List_1_Previews: PreviewProvider {
    static var previews: some View {
        List_1()
    }
}
