//
//  main.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 29/7/21.
//

import TerminalKit

let terminal = Terminal(type: .zsh)

print(try terminal.execute("ls"))
