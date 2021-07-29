    import XCTest
    @testable import TerminalKit

    final class TerminalKitTests: XCTestCase {
        func testBinBash() {
            // This is an example of a functional test case.
            // Use XCTAssert and related functions to verify your tests produce the correct
            // results.
            
            let terminal = Terminal(type: .bash, env: [:])
            
            XCTAssertEqual(terminal.type, "/bin/bash")
        }
        func testBinZsh() {
            // This is an example of a functional test case.
            // Use XCTAssert and related functions to verify your tests produce the correct
            // results.
            
            let terminal = Terminal(type: .zsh, env: [:])
            
            XCTAssertEqual(terminal.type, "/bin/zsh")
        }
    }
