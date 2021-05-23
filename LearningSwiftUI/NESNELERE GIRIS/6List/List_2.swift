//
//  List_2.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/3/21.
//

import SwiftUI

struct List_2: View {
    var gosterilecekVeriler = ["Gruplama Özelliği","Basit bir liste oluşturalım","helstar","megadeth","kick the chair","Eğer content çok büyük olursa da o satır otomatik olarak onu sarmalayacak şekilde büyür"]
    
    var body: some View {
        
        VStack(spacing:20) {
            
            List(gosterilecekVeriler,id: \.self) { strVeri in
                Text(strVeri)
                
            }
            
            List(gosterilecekVeriler, id : \.self){ strVeri in
                
                Text(strVeri).font(strVeri == "Gruplama Özelliği" ? .largeTitle : .body)
                
                Spacer()
                
                Image(systemName: strVeri == "helstar" ? "circle.fill" : "circle")
                
            }.listStyle(GroupedListStyle())
            
            
            
            
            
            
        }
        
        
        
    }
}

struct List_2_Previews: PreviewProvider {
    static var previews: some View {
        List_2()
    }
}
