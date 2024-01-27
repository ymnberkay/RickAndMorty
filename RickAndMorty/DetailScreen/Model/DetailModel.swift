//
//  DetailModel.swift
//  RickAndMorty
//
//  Created by Berkay Yaman on 30.11.2023.
//

import Foundation

import Foundation

// MARK: - DetailCharacter
struct DetailModel: Codable {
    let id: Int?
    let name, status, species, type: String?
    let gender: String?
    let origin, location: Locations?
    let image: String?
    let episode: [String]?
    let url: String?
    let created: String?
}

// MARK: - Location
struct Locations: Codable {
    let name: String?
    let url: String?
}
