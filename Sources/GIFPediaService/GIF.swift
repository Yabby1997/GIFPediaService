//
//  File.swift
//  
//
//  Created by USER on 2023/06/06.
//

import Foundation

public struct GIF: Identifiable {
    public let id: String
    public let title: String
    public let thumbnailUrl: URL
    public let originalUrl: URL
    public let isLiked: Bool
}
