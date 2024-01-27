//
//  RickMortyService.swift
//  RickAndMorty
//
//  Created by Berkay Yaman on 30.11.2023.
//

import Foundation

protocol RickMortyService {
    func fetchData<T: Codable>(from url: URL, completion: @escaping (Result<T,Error>) -> Void)
}
