//
//  File.swift
//  
//
//  Created by USER on 2023/06/06.
//

import Foundation

public struct GIF: Hashable, Equatable {
    public let id: String
    public let title: String
    public let thumbnailUrl: URL
    public let originalUrl: URL
    public let isLiked: Bool

    public init(
        id: String,
        title: String,
        thumbnailUrl: URL,
        originalUrl: URL,
        isLiked: Bool = false
    ) {
        self.id = id
        self.title = title
        self.thumbnailUrl = thumbnailUrl
        self.originalUrl = originalUrl
        self.isLiked = isLiked
    }
}
