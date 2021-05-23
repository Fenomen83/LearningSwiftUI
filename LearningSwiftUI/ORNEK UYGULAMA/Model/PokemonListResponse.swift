//
//  PokemonListResponse.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/4/21.
//

import Foundation
import ObjectMapper


struct PokemonListResponse: Mappable, Identifiable {
    let id = UUID()
    var count: Int = 0
    var next: String = ""
    var results:[PokemonListItem] = []

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {
        count     <- map["next"]
        next      <- map["next"]
        results   <- map["results"]
    }
}

struct PokemonListItem: Mappable, Identifiable {
    let id = UUID()
    var name: String = ""
    var url: String = ""

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {
        name     <- map["name"]
        url      <- map["url"]
    }
}
