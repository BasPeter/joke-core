//
//  JokeError.swift
//  
//
//  Created by Bas Peter Dijkema on 29/09/2021.
//

import Foundation
import Vapor

enum JokeError {
    case gatewayTimeout(String)
}

extension JokeError: AbortError {
    var reason: String {
        switch self {
        case .gatewayTimeout(let path):
            return "Joke Api Failed to respond on: \(path)"
        }
    }

    var status: HTTPStatus {
        switch self {
        case .gatewayTimeout:
            return .gatewayTimeout
        }
    }
}
