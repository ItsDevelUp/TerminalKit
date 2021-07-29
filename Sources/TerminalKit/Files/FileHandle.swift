//
//  FileHandle.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 29/7/21.
//

import Foundation

#if os(macOS)
private extension FileHandle {
    var isStandard: Bool {
        return self === FileHandle.standardOutput || self === FileHandle.standardError || self === FileHandle.standardInput
    }
}

public protocol TerminalDataHandler {

    func handle(_ data: Data)

    func end()
}

public extension TerminalDataHandler {

    func end() { }
}

extension FileHandle: TerminalDataHandler {

    public func handle(_ data: Data) {
        self.write(data)
    }

    public func end() {
        guard !self.isStandard else {
            return
        }
        self.closeFile()
    }
}
#endif
