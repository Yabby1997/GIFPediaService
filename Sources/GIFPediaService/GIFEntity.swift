//
//  GIFEntity.swift
//  
//
//  Created by USER on 2023/06/06.
//

import Foundation

public struct GIFEntity: Codable, Equatable {
    public let id: String
    public let title: String
    public let thumbnailUrl: URL
    public let originalUrl: URL

    public init(
        id: String,
        title: String,
        thumbnailUrl: URL,
        originalUrl: URL
    ) {
        self.id = id
        self.title = title
        self.thumbnailUrl = thumbnailUrl
        self.originalUrl = originalUrl
    }
}
