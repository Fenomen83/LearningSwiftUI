//
//  NavigationView_2.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/3/21.
//

import SwiftUI

struct NavigationView_2: View {
    
    @State private var gizli = false
    
    var body: some View {
        NavigationView {
            
            
            ZStack {
                Color.red.opacity(0.45)
                VStack(spacing: 25) {
                    Image("globe").font(.largeTitle)
                    Text("Navigation View Örnek -2").font(.largeTitle)
                    
                    Text("Navigation Bar Gizleme/Gösterme").foregroundColor(.blue)
                    
                    Image("NavBarGizli")
                    
                    Text("NavigationBar'ın görünmesini istemiyorsanız onu navigationBarHidden fonksiyonuyla gizleyebilirsiniz.")
                    
                    Toggle("Nav Bar Gizle",isOn:  $gizli).padding()
                    Spacer()
                    
                }.foregroundColor(.white).font(.title).padding(.top,70)
                
                
            }
            .navigationBarHidden(gizli)
            .navigationBarTitle(Text("Navigaiton View 2. Örnek"),displayMode: .inline)
            .edgesIgnoringSafeArea(.bottom)
            .navigationBarItems(leading:
                Button(action: {}){
                    Image(systemName: "bell.fill")
                }.foregroundColor(.purple)
                
                , trailing:
                Button("Ekle",action: {}).accentColor(.red)
            )
            
            
        }
    }
}

struct NavigationView_2_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView_2()
    }
}
