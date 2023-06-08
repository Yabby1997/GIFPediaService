//
//  GIFPersistence.swift
//  
//
//  Created by USER on 2023/06/08.
//

import Foundation

public protocol GIFPersistence {
    func load() -> [GIFEntity]
    func save(gifs: [GIFEntity]) -> [GIFEntity]
}
