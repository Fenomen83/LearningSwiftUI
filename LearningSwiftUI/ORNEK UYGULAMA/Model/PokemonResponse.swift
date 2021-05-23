//
//  PokemonResponse.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/5/21.
//

import Foundation
import ObjectMapper

struct PokemonResponse: Mappable, Identifiable {
    var id: Int?
    var abilities: [Ability] = []
    var baseExperience: Int?
    var forms: [Species] = []
    var gameIndices: [GameIndex] = []
    var height: Int?
    var isDefault: Bool?
    var locationAreaEncounters: String?
    var moves: [Move] = []
    var name: String?
    var order: Int?
    var species: Species?
    var sprites: Sprites?
    var stats: [Stat] = []
    var types: [TypeElement] = []
    var weight: Int?
    
    init?(map: Map) {

    }

    mutating func mapping(map: Map) {
        
        id <- map["id"]
        abilities <- map["abilities"]
        baseExperience <- map["base_experience"]
        forms <- map["forms"]
        gameIndices <- map["game_indices"]
        height <- map["height"]
        isDefault <- map["is_default"]
        locationAreaEncounters <- map["location_area_encounters"]
        moves <- map["moves"]
        name <- map["name"]
        order <- map["order"]
        species <- map["species"]
        sprites <- map["sprites"]
        stats <- map["stats"]
        types <- map["types"]
        weight <- map["weight"]
    }
}

struct Ability: Mappable {
    var ability: Species?
    var isHidden: Bool?
    var slot: Int?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {
        ability     <- map["ability"]
        isHidden      <- map["is_hidden"]
        slot      <- map["slot"]
    }
}


struct Species: Mappable {
    var name: String?
    var url: String?
    
    init?(map: Map) {

    }

    mutating func mapping(map: Map) {
        name     <- map["name"]
        url      <- map["url"]
    }
}

struct GameIndex: Mappable {
    var gameIndex: Int?
    var version: Species?
    
    init?(map: Map) {

    }

    mutating func mapping(map: Map) {
        gameIndex     <- map["game_index"]
        version      <- map["version"]
    }
}

struct Move: Mappable {
    var move: Species?
    var versionGroupDetails: [VersionGroupDetail] = []
    
    init?(map: Map) {

    }

    mutating func mapping(map: Map) {
        move                    <- map["move"]
        versionGroupDetails      <- map["version_group_details"]
    }
}

struct VersionGroupDetail: Mappable {
    var levelLearnedAt: Int?
    var moveLearnMethod, versionGroup: Species?
    
    init?(map: Map) {

    }

    mutating func mapping(map: Map) {
        levelLearnedAt                    <- map["level_learned_at"]
        moveLearnMethod      <- map["move_learn_method"]
        versionGroup      <- map["version_group"]
    }
}

struct Sprites: Mappable {
    var backDefault: String?
    var backFemale: String?
    var backShiny: String?
    var backShinyFemale: String?
    var frontDefault: String?
    var frontFemale: String?
    var frontShiny: String?
    var frontShinyFemale: String?
    
    init?(map: Map) {

    }

    mutating func mapping(map: Map) {
        backDefault         <- map["back_default"]
        backFemale          <- map["back_female"]
        backShiny           <- map["back_shiny"]
        backShinyFemale     <- map["back_shiny_female"]
        frontDefault        <- map["front_default"]
        frontFemale         <- map["front_female"]
        frontShiny          <- map["front_shiny"]
        frontShinyFemale    <- map["front_shiny_female"]
    }
}

struct Stat: Mappable, Identifiable {
    var id = UUID()
    var baseStat, effort: Int?
    var stat: Species?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {
        baseStat         <- map["base_stat"]
        effort          <- map["effort"]
        stat           <- map["stat"]
    }
}

struct TypeElement: Mappable {
    var slot: Int?
    var type: Species?
    
    init?(map: Map) {

    }

    mutating func mapping(map: Map) {
        slot         <- map["slot"]
        type          <- map["type"]
    }
}
