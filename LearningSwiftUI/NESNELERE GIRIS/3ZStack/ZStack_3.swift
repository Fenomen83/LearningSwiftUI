//
//  ZStack_3.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/2/21.
//

import SwiftUI

struct ZStack_3: View {
    var body: some View {
        ZStack{
            Color.blue.edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                
                Text("ZStack Örnek -3").font(.largeTitle)
                
                Text("Arka Plan Rengi Safe Areayı Göz Ardı Edecek").foregroundColor(.white)
                
                Text("Bu problemi çözmek için, derinlik açısından bakıldığında en altta bulunan katman olan  RENK KATMANI safe areayı göz ardı edebilir. Onun üstünde yer alan diğer  katmanlar safe areaya uymaya devam edecekler").frame(maxWidth: .infinity)
                .padding()
                    .background(Color.green)
                Spacer()
                
            }.font(.title)
            
            
        }
    }
}

struct ZStack_3_Previews: PreviewProvider {
    static var previews: some View {
        ZStack_3()
    }
}
