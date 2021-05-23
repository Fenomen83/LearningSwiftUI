//
//  NavigationView_1.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/3/21.
//

import SwiftUI

struct NavigationView_1: View {
    var body: some View {
        NavigationView {
            
            
            ZStack {
                Color.pink
                
                VStack(spacing:25) {
                    
                    Image(systemName: "globe").font(.largeTitle)
                    
                    Text("Giriş Örnek").foregroundColor(.gray)
                    
                    Text("NavigationView'de Bar Alanında navigationBarTitle metoduyla bir başlık eklemediğiniz sürece boş görünecek").frame(maxWidth: .infinity).padding().background(Color.blue)
                    .layoutPriority(1)
                
                    Spacer()
                    
                }.foregroundColor(.white).font(.title)
            }//ZSTack bitişi
                .navigationBarTitle(Text("Navigation Viewler"),displayMode: .inline)
                .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct NavigationView_1_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView_1()
    }
}
