//
//  GIFPediaService.swift
//  
//
//  Created by USER on 2023/06/06.
//

import Foundation
import Combine

public final class GIFPediaService {

    // MARK: - Dependencies

    private let gifRepository: GIFRepository

    // MARK: - Properties

    @Published private var gifs: [GIF] = []
    public var gifsPublisher: AnyPublisher<[GIF], Never> { $gifs.eraseToAnyPublisher() }

    public init(gifRepository: GIFRepository) {
        self.gifRepository = gifRepository
    }

    public func search(keyword: String) {
        Task {
            gifs = await gifRepository.search(query: keyword)
        }
    }

    public func requestNext() {
        Task {
            gifs += await gifRepository.requestNext()
        }
    }
}
