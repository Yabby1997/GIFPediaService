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

    @Published private var gifs: [GIF] = []
    public var gifsPublisher: AnyPublisher<[GIF], Never> { $gifs.eraseToAnyPublisher() }

    public init(gifRepository: GIFRepository) {
        self.gifRepository = gifRepository
    }

    public func search(keyword: String) async {
        gifs = await gifRepository.search(query: keyword)
    }

    public func requestNext() async {
        gifs += await gifRepository.requestNext().filter { !gifs.contains($0) }
    }
}
