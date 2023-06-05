//
//  File.swift
//  
//
//  Created by USER on 2023/06/06.
//

import Foundation

public protocol GIFRepository {
    func search(query: String, limit: Int) async -> [GIF]
    func requestNext() async -> [GIF]
}
