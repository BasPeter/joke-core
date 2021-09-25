//
//  JokeAPIModels.swift
//
//
//  Created by Bas Peter Dijkema on 25/09/2021.
//

import Foundation

struct JokeListObject: Codable {
    let joke: String
    let punchline: String?
}

struct JokeGetObject: Codable {
    let id: UUID
    let joke: String
    let punchline: String?
}

struct JokeCreateObject: Codable {
    let id: UUID
    let joke: String
    let punchline: String?
}

struct JokeFindObject: Codable {
    let joke: String
    let punchline: String?
}
