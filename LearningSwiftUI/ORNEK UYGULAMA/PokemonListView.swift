//
//  PokemonListView.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/4/21.
//

import SwiftUI
import Alamofire

struct PokemonListView: View {
    
    @State var pokeList : [PokemonListItem] = []
    
    var body: some View {
        ZStack{
            Color("AppBackgroundColor").edgesIgnoringSafeArea(.all)
            
            ScrollView {
                ZStack(alignment: .top) {
                    LazyVStack(spacing: 10) {
                        ForEach(self.pokeList.indices, id: \.self) { index in
                            
                            NavigationLink(destination: PokemonDetailView(pokemonListItem: self.pokeList[index])) {
                                VStack{
                                    Text(self.pokeList[index].name.uppercased())
                                        .font(.system(size: 24))
                                        
                                        .frame(maxWidth:.infinity)
                                        .padding(30)
                                }.background(RoundedRectangle(cornerRadius: 25).fill(Color.white)
                                                .shadow(radius: 1).shadow(radius: 2, x:2, y: 2))
                            }.isDetailLink(true)
                        }
                    }
                }
            }.frame(width: .infinity)
        }
        .navigationBarTitle("POKEMON LISTESI", displayMode: .inline)
        .navigationBarBackButtonHidden(true)
        //.navigationBarHidden(true)
        .onAppear{
            self.getPokemonList()
        }
    }
    
    private func getPokemonList(){
        
        AF.request("https://pokeapi.co/api/v2/pokemon").responseJSON(completionHandler : { response in
            switch response.result {
                        case .success:
                            let JSONString = String(data: response.data ?? Data("".utf8), encoding: .utf8) ?? ""
                            let pokemonListResponse = PokemonListResponse(JSONString: JSONString)
                            self.pokeList = pokemonListResponse?.results ?? []
                         break

                         case .failure(let error):
                          print(error)
            }
            
        })

    }
}

struct PokemonListView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonListView()
    }
}
