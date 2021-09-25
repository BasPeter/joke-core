//
//  JokeAPIModels.swift
//
//
//  Created by Bas Peter Dijkema on 25/09/2021.
//

import Foundation

public struct Joke: Codable {
    public struct List {
        let joke: String
        let punchline: String?
        
        public init(joke: String, punchline: String?) {
            self.joke = joke
            self.punchline = punchline
        }
    }
}

public struct JokeListObject: Codable {
    let joke: String
    let punchline: String?
    
    public init(joke: String, punchline: String?) {
        self.joke = joke
        self.punchline = punchline
    }
}

public struct JokeGetObject: Codable {
    let id: UUID
    let joke: String
    let punchline: String?
    
    public init(id: UUID, joke: String, punchline: String?) {
        self.id = id
        self.joke = joke
        self.punchline = punchline
    }
}

public struct JokeCreateObject: Codable {
    let id: UUID
    let joke: String
    let punchline: String?
    
    public init(id: UUID, joke: String, punchline: String?) {
        self.id = id
        self.joke = joke
        self.punchline = punchline
    }
}

public struct JokeFindObject: Codable {
    let joke: String
    let punchline: String?
    
    public init(joke: String, punchline: String?) {
        self.joke = joke
        self.punchline = punchline
    }
}
