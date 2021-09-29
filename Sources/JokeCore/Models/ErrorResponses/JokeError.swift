//
//  JokeError.swift
//  
//
//  Created by Bas Peter Dijkema on 29/09/2021.
//

import Foundation
import Vapor

public enum JokeError {
    case gatewayTimeout(String)
}

extension JokeError: AbortError {
    public var reason: String {
        switch self {
        case .gatewayTimeout(let path):
            return "Joke Api Failed to respond on: \(path)"
        }
    }

    public var status: HTTPStatus {
        switch self {
        case .gatewayTimeout:
            return .gatewayTimeout
        }
    }
}
