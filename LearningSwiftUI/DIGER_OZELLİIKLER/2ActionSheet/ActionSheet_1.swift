//
//  ActionSheet_1.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/3/21.
//

import SwiftUI

struct ActionSheet_1: View {
    
    @State private var gorunsunActionSheet = false
    
    
    var sheetAction = ActionSheet(title: Text("Action Sheet Başlık"),
                                  message: Text("Action Sheet Mesajı"),
                                  buttons: [
                                    .default(Text("Varsayılan Buton"), action:  {
                                        //Varsayılan botununa basıldığında yapılacak kodlar
                                    }),
                                    .destructive(Text("Destructive Buton"), action: {}),
                                    .cancel()//bu butona basıldığına ekrandan gidiyor
    ])
    
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Action Sheet Örnek - 1").font(.largeTitle)
            
            Text("Giriş").font(.title).foregroundColor(.gray)
            
            Button("Action Sheet Yapısını Göster") {
                self.gorunsunActionSheet = true
                
            }
            
            Spacer()
            
        }.actionSheet(isPresented: $gorunsunActionSheet) {
            //gorunsunActionSheet değişken değeri değiştiğinde hangi actionSheet yapısı görüntüleneceğini belirtmemiz gerekiyor
            //self.sheetAction
            ActionSheet(title: Text("Farklı Action Sheet"))
        }
    }
}

struct ActionSheet_1_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheet_1()
    }
}
