//
//  JokeAPIModels.swift
//
//
//  Created by Bas Peter Dijkema on 25/09/2021.
//

import Foundation

public struct JokeListObject: Codable {
    let joke: String
    let punchline: String?
}

public struct JokeGetObject: Codable {
    let id: UUID
    let joke: String
    let punchline: String?
}

public struct JokeCreateObject: Codable {
    let id: UUID
    let joke: String
    let punchline: String?
}

public struct JokeFindObject: Codable {
    let joke: String
    let punchline: String?
}
