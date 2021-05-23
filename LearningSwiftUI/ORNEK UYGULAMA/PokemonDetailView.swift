//
//  PokemonDetailView.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/4/21.
//

import SwiftUI
import Alamofire
import SDWebImageSwiftUI

struct PokemonDetailView: View {
    @Environment(\.presentationMode) var presentationMode
    
    let pokemonListItem: PokemonListItem
    @State var pokemonImageUrls : [String] = []
    
    @State var pokemonStats: [Stat] = []
    
    init(pokemonListItem: PokemonListItem) {
        self.pokemonListItem = pokemonListItem
    }
    
    var body: some View {
        
        ScrollView {
            VStack {
                if self.pokemonImageUrls.count>0{
                    
                    GeometryReader{ geometry in
                        let imageWidth = (geometry.size.width/CGFloat(self.pokemonImageUrls.count))
                        
                        HStack(spacing:0) {
                            ForEach(self.pokemonImageUrls, id: \.self) { url in
                                WebImage(url: URL(string: url))
                                .resizable()
                                .indicator(.activity)
                                .transition(.fade(duration: 0.5))
                                .scaledToFit()
                                    .frame(width: imageWidth, height: geometry.size.height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            }
                            
                        }
                    }.frame(height: 150)
                    
                    Divider()
                    
                    VStack(alignment: .leading) {
                        Text("Stats")
                            .font(.title)
                        
                        VStack(alignment: .leading, spacing: 8) {
                            ForEach(pokemonStats) { stat in
                                Text("\(stat.stat!.name!.capitalized): \(stat.baseStat!)")
                            }
                        }
                        .padding(.top, 10)
                        .padding(.leading, 10)
                    }
                    .padding()
                    
                    Spacer()
                }
                
                Spacer()
            }
        }
        .onAppear {
            getPokemonDetail()
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading:
            Image(systemName: "arrowshape.turn.up.backward")
                .foregroundColor(.blue)
                .onTapGesture {
                    self.presentationMode.wrappedValue.dismiss()
            }
        )
        .navigationBarTitle(pokemonListItem.name.capitalized, displayMode: .inline)
    }
    
    private func getPokemonDetail(){
        
        AF.request(self.pokemonListItem.url).responseJSON(completionHandler : { response in
            switch response.result {
                        case .success:
                            let JSONString = String(data: response.data ?? Data("".utf8), encoding: .utf8) ?? ""
                            let pokemonResponse = PokemonResponse(JSONString: JSONString)

                            //self.pokeList = pokemonListResponse?.results ?? []
                            
                            if let pokemon = pokemonResponse{
                                self.preparePokemonImages(pokemon)
                                
                                self.pokemonStats = pokemon.stats
                            }
                         break

                         case .failure(let error):
                          print(error)
            }
            
        })

    }
    
    private func preparePokemonImages(_ pokemon: PokemonResponse){
        
        if let sprites = pokemon.sprites{
            if let frontDefault = sprites.frontDefault{
                self.pokemonImageUrls.append(frontDefault)
            }
            if let frontShiny = sprites.frontShiny{
                self.pokemonImageUrls.append(frontShiny)
            }
            if let backDefault = sprites.backDefault{
                self.pokemonImageUrls.append(backDefault)
            }
            if let backShiny = sprites.backShiny{
                self.pokemonImageUrls.append(backShiny)
            }
        }
        
        print(self.pokemonImageUrls)
    }
}

struct PokemonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        PokemonDetailView(pokemonListItem: PokemonListItem(JSONString : "{\"name\":\"\",\"url\":\"https://pokeapi.co/api/v2/pokemon/1\"}")!)
    }
}
