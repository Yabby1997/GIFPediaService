//
//  GIFFlagService.swift
//  
//
//  Created by USER on 2023/06/08.
//

import Foundation
import Combine

public final class GIFFlagService {
    
    // MARK: - Dependencies

    private let gifPersistence: GIFPersistence

    // MARK: - Properties

    @Published private var flaggedGifs: [GIFEntity] = []
    public var flagged: AnyPublisher<[GIFEntity], Never> {
        $flaggedGifs.removeDuplicates().eraseToAnyPublisher()
    }

    // MARK: - Initializer
    
    public init(gifPersistence: GIFPersistence) {
        self.gifPersistence = gifPersistence
        flaggedGifs = gifPersistence.load()
    }

    // MARK: - Public Methods

    public func reload() {
        flaggedGifs = gifPersistence.load()
    }

    public func flag(gif: GIFEntity) {
        flaggedGifs = gifPersistence.save(gifs: flaggedGifs + [gif])
    }

    public func unflag(gif: GIFEntity) {
        flaggedGifs = gifPersistence.save(gifs: flaggedGifs.filter { $0 != gif })
    }
}
