//
//  GIFPediaSearchService.swift
//  
//
//  Created by USER on 2023/06/06.
//

import Foundation
import Combine

public final class GIFPediaSearchService {

    // MARK: - Dependencies

    private let gifRepository: GIFRepository

    // MARK: - Properties

    @Published private var searchedGifs: [GIFEntity] = []
    public var gifsPublisher: AnyPublisher<[GIFEntity], Never> { $searchedGifs.eraseToAnyPublisher() }

    // MARK: - Initializers

    public init(gifRepository: GIFRepository) {
        self.gifRepository = gifRepository
    }

    // MARK: - Public Methods
    
    public func search(keyword: String) async {
        searchedGifs = await gifRepository.search(query: keyword)
    }

    public func requestNext() async {
        let new = await gifRepository.requestNext()
        guard let duplicateRemovedGifs = NSOrderedSet(array: searchedGifs + new).array as? [GIFEntity] else { return }
        searchedGifs = duplicateRemovedGifs
    }
}
