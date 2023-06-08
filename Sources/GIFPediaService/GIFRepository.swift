//
//  GIFRepository.swift
//  
//
//  Created by USER on 2023/06/06.
//

import Foundation

public protocol GIFRepository {
    func search(query: String) async -> [GIFEntity]
    func requestNext() async -> [GIFEntity]
}
