//
//  Beer.swift
//  Teste_James
//
//  Created by Ruy de Ascencão Neto on 25/01/20.
//  Copyright © 2020 Academy. All rights reserved.
//

import Foundation

struct BeerDTO: Codable {
    let id: Int
    let name, tagline, firstBrewed, welcomeDescription: String
    let imageURL: String?
    let abv: Double?
    let ibu: Double?
    let targetFg: Int?
    let targetOg: Double?
    let ebc: Int?
    let srm, ph: Double?
    let attenuationLevel: Double?
    let volume, boilVolume: BoilVolume?
    let method: Method?
    let ingredients: Ingredients?
    let foodPairing: [String]?
    let brewersTips: String?
    let contributedBy: ContributedBy?

    enum CodingKeys: String, CodingKey {
        case id, name, tagline
        case firstBrewed = "first_brewed"
        case welcomeDescription = "description"
        case imageURL = "image_url"
        case abv, ibu
        case targetFg = "target_fg"
        case targetOg = "target_og"
        case ebc, srm, ph
        case attenuationLevel = "attenuation_level"
        case volume
        case boilVolume = "boil_volume"
        case method, ingredients
        case foodPairing = "food_pairing"
        case brewersTips = "brewers_tips"
        case contributedBy = "contributed_by"
    }
}

// MARK: - BoilVolume
struct BoilVolume: Codable {
    let value: Double
    let unit: Unit
}

enum Unit: String, Codable {
    case celsius = "celsius"
    case grams = "grams"
    case kilograms = "kilograms"
    case litres = "litres"
}

enum ContributedBy: String, Codable {
    case aliSkinnerAliSkinner = "Ali Skinner <AliSkinner>"
    case mattBallGeordieMatt = "Matt Ball <GeordieMatt>"
    case samMasonSamjbmason = "Sam Mason <samjbmason>"
}

// MARK: - Ingredients
struct Ingredients: Codable {
    let malt: [Malt]
    let hops: [Hop]
    let yeast: String
}

// MARK: - Hop
struct Hop: Codable {
    let name: String
    let amount: BoilVolume
    let add: String
    let attribute: Attribute
}

enum Attribute: String, Codable {
    case aroma = "aroma"
    case attributeAroma = " aroma"
    case attributeFlavour = "Flavour"
    case bitter = "bitter"
    case flavour = "flavour"
    case twist = "twist"
}

// MARK: - Malt
struct Malt: Codable {
    let name: String
    let amount: BoilVolume
}

// MARK: - Method
struct Method: Codable {
    let mashTemp: [MashTemp]
    let fermentation: Fermentation
    let twist: String?

    enum CodingKeys: String, CodingKey {
        case mashTemp = "mash_temp"
        case fermentation, twist
    }
}

// MARK: - Fermentation
struct Fermentation: Codable {
    let temp: BoilVolume
}

// MARK: - MashTemp
struct MashTemp: Codable {
    let temp: BoilVolume
    let duration: Int?
}
