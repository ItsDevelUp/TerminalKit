//
//  TerminalError.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 29/7/21.
//

import Foundation

extension Terminal {
    public enum Error: LocalizedError {
        case outputData
        case generic(Int, String)
        
        public var errorDescription: String? {
            switch self {
            case .outputData:
                return "Invalid or empty terminal output."
            case .generic(let code, let message):
                return message + " (code: \(code))"
            }
        }
    }
}
